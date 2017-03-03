unit UColumnObjects;

interface

uses
  Classes, SysUtils, DB, DBGridEh, MlekoUtils, USortedIntList;

type
  TColumnObjects = class;

  TColumnObjectInfo = record
    Column: TColumnEh;
    FieldVals: TStringList;
    QtyList: TIntList;
    SelCount: Integer;
  end;

  TColumnObject = class
  private
    DataSet: TDataSet;
    FOwner: TColumnObjects;
    Column: TColumnEh;
    KeyField, MainField: TField;
    FieldVals: TStringList;
    FieldKeys, QtyList: TIntList;
    SortedKeys: TSortedIntList;
    EnableColTag: TIntBoolFunc;
    FIsUpdated: Boolean;
    function GetKey(Index: Integer; Sorted: Boolean = True): Integer;
    function KeyIndex(Key: Integer; Sorted: Boolean = True): Integer;
    function FindKeyField: TField;
    function AddKey(Key: Integer; Sorted: Boolean = True): Integer;
    procedure AcceptFilterValues;
    function IsSelected(Index: Integer): Boolean;
    procedure Clear;
    procedure ResetUpdateFlag;
    function GetUpdateFlag: Boolean;
    function GetCountValues: TList;
    function GetColumnObjectInfo: TColumnObjectInfo;
  public
    constructor Create( AColumn: TColumnEh;
                        AOwner: TColumnObjects);
    destructor Destroy; override;
    function IsUpdated: Boolean;
    function IsActive: Boolean;
    function GetFieldValues: TStrings;
    function FindValueIndex(Sorted: Boolean = True): Integer;
    function UpdateFieldValues(NewValues: Boolean = False): Integer;
  end;

  TColumnObjects = class(TList)
  private
    LastTag: Integer;
    FoundIndex: Integer;
    EnableColTag: TIntBoolFunc;
    FDataSet: TDataSet;
    function IndexOfTag(ColumnTag: Integer): Integer;
    procedure FreeItems;
  public
    constructor Create(ADataSet: TDataSet; EnableIndex: TIntBoolFunc);
    destructor Destroy; override;
    procedure ClearItems;
    function AcceptFilterValues: Boolean;
    procedure ResetUpdateFlags;
    function GetCurrentColumn: TColumnEh;
    function UpdateFieldValues(ColumnTag: Integer): Integer;
    function GetColumnObject(Index: Integer): TColumnObject;
    function GetColumnObjectInfo(ColumnTag: Integer; DoUpdate: Boolean = True): TColumnObjectInfo;
    function FindValueIndex(Sorted: Boolean = True): Integer;
    function AddColumnObject(AColumn: TColumnEh): TColumnObject;
    function GetFieldValues(ColumnTag: Integer; DoUpdate: Boolean = True ): TStrings;
    function ValuesExist(): Boolean;
  end;

implementation

{ TColumnObject }

procedure UpdateFieldValues( Items, Keys: TStrings; DataSet: TDataSet;
                          SortedKeys: TSortedIntList;
                          MainFieldStr, KeyFieldStr: String);
var MainField: TField; SKey: String; i, v: Integer; KeyField: TField;
begin
  Items.Clear; Keys.Clear; SortedKeys.Clear;
  if (DataSet=nil) or (not DataSet.Active) then Exit;
  DataSet.DisableControls;
  try
    DataSet.First;
    MainField:= DataSet.FindField(MainFieldStr);
    KeyField:= DataSet.FindField(KeyFieldStr);
    if (MainField<>nil) and (KeyField<>nil) and
       (MainField.DataType in [ftString, ftWideString]) and
       (KeyField.DataType in [ftSmallint, ftInteger])  then
    while not DataSet.Eof do
    begin
      SKey:= KeyField.AsString;
      v:= KeyField.AsInteger;
      if (not SortedKeys.Find(v, i)) then
      begin
        Items.AddObject(MainField.AsString, Pointer(1));
        Keys.Add(SKey);
        SortedKeys.Insert(i, v);
      end;
      DataSet.Next;
    end;
    DataSet.First;
  finally
  DataSet.EnableControls;
  end;
end;

function TColumnObject.AddKey(Key: Integer; Sorted: Boolean = True): Integer;
begin
  if Sorted then
    Result := SortedKeys.Add(Key)
  else
    Result := FieldKeys.Add(Pointer(Key));
end;

function TColumnObject.IsSelected(Index: Integer): Boolean;
begin
  Result:= (FieldVals.Objects[Index]<>nil);
end;


procedure TColumnObject.AcceptFilterValues();
var i: Integer;
begin
  SortedKeys.Clear;
  for i := 0 to FieldVals.Count-1 do
  begin
    if IsSelected(i) then
      AddKey(GetKey(i, False), True);
  end;
end;

function TColumnObject.GetFieldValues(): TStrings;
begin
  Result:= FieldVals;
end;

function TColumnObject.IsUpdated(): Boolean;
begin
  Result:= IsUpdated;
end;

function TColumnObject.IsActive(): Boolean;
begin
  Result:= FIsUpdated and (SortedKeys.Count>0);
end;

function TColumnObject.GetColumnObjectInfo(): TColumnObjectInfo;
begin
  Result.FieldVals:= FieldVals;
  Result.QtyList:= QtyList;
  Result.SelCount:= SortedKeys.Count;
  Result.Column:= Column;
end;  

function TColumnObject.GetCountValues(): TList;
begin
  Result:= QtyList;
end;

procedure TColumnObject.Clear;
begin
  FieldVals.Clear;
  FieldKeys.Clear;
  SortedKeys.Clear;
  QtyList.Clear;
  FIsUpdated:= False;
end;

procedure TColumnObject.ResetUpdateFlag();
begin
  FIsUpdated:= False;
end;

function TColumnObject.GetUpdateFlag: Boolean;
begin
  Result:= FIsUpdated;
end;

function TColumnObject.UpdateFieldValues(NewValues: Boolean = False): Integer;
var Key, i: Integer;
begin
  Result:= -1;
  if FIsUpdated and (not NewValues) then
     begin
       Result:= SortedKeys.Count;
       Exit;
     end;
  Clear;
  if (DataSet=nil) or (not DataSet.Active) then Exit;
  DataSet.DisableControls;
  try
    Result:= 0; DataSet.First;
    if (MainField<>nil) and (KeyField<>nil) and
       (MainField.DataType in [ftString, ftWideString]) and
       (KeyField.DataType in [ftSmallint, ftInteger])  then
    while not DataSet.Eof do
    begin
      Key:= KeyField.AsInteger;
      if (not SortedKeys.Find(Key, i)) then
      begin
        FieldVals.AddObject(MainField.AsString, Pointer(1));
        AddKey(Key, False); // add to FieldKeys
        QtyList.Add(Pointer(1));
        SortedKeys.Insert(i, Key);
        Inc(Result);
      end else
      begin
        i:= FieldKeys.IndexOf(Pointer(Key)); // get ref to count in QtyList
        QtyList[i]:= Pointer(Integer(QtyList[i])+1);
      end;
      DataSet.Next;
    end;


    DataSet.First;
    FIsUpdated:= True;
  finally
  DataSet.EnableControls;
  end;
end;

function TColumnObject.GetKey(Index: Integer; Sorted: Boolean = True): Integer;
begin
  if Sorted then
    Result := SortedKeys[Index]
  else
    Result := Integer(FieldKeys[Index]);
end;

function TColumnObject.KeyIndex(Key: Integer; Sorted: Boolean = True): Integer;
begin
  if Sorted then
    Result := SortedKeys.IndexOf(Key)
  else
    Result := FieldKeys.IndexOf(Pointer(Key));
end;

//IsPresent: Boolean = True
function TColumnObject.FindValueIndex(Sorted: Boolean = True): Integer;
begin
  Result := KeyIndex(KeyField.AsInteger, Sorted);
end;

function TColumnObject.FindKeyField(): TField;
begin
  Result:= nil;
  if (MainField<>nil) and (DataSet<>nil) then
     Result:= DataSet.FindField('_' + MainField.FieldName);
end;

constructor TColumnObject.Create(AColumn: TColumnEh; AOwner: TColumnObjects);
begin
  Column:= AColumn;
  FieldVals := TStringList.Create;
  FieldKeys := TIntList.Create;
  QtyList := TIntList.Create;
  SortedKeys := TSortedIntList.Create;
  MainField:= Column.Field;
  FOwner := AOwner;
  DataSet:= FOwner.FDataSet;
  EnableColTag:= FOwner.EnableColTag;
  KeyField:= FindKeyField();
end;

destructor TColumnObject.Destroy;
begin
  FieldVals.Free;
  FieldKeys.Free;
  QtyList.Free;
  SortedKeys.Free;
  inherited;
end;

{ TColumnObjects }

procedure TColumnObjects.ClearItems();
var i: Integer;
begin
for i := 0 to Count-1 do
  GetColumnObject(i).Clear;
end;

procedure TColumnObjects.FreeItems();
var i: Integer;
begin
for i := 0 to Count-1 do
  GetColumnObject(i).Free;
end;

constructor TColumnObjects.Create(ADataSet: TDataSet; EnableIndex: TIntBoolFunc);
begin
  inherited Create;
  EnableColTag:= EnableIndex;
  FDataSet:= ADataSet;
  FoundIndex:= -1;
  LastTag:= -1;
end;

destructor TColumnObjects.Destroy;
begin
  FreeItems();
  inherited;
end;

function TColumnObjects.AddColumnObject(AColumn: TColumnEh): TColumnObject;
begin
  Result := TColumnObject.Create(AColumn, Self);
  Add(Result);
end;

function TColumnObjects.GetColumnObject(Index: Integer): TColumnObject;
begin
  Result := TColumnObject(Items[Index]);
end;

function TColumnObjects.FindValueIndex(Sorted: Boolean = True): Integer;
var Item: TColumnObject;
begin
  for Result := 0 to Count - 1 do
  begin
    Item:= GetColumnObject(Result);
    if (Item<>nil) and Item.IsActive() then
       FoundIndex := Item.FindValueIndex(Sorted);
    if (FoundIndex >= 0) then
      Exit;
  end;
  Result := -1;
end;

function TColumnObjects.ValuesExist(): Boolean;
var Item: TColumnObject; i: Integer;
begin
  Result:= False;
  for i := 0 to Count - 1 do
  begin
    Item:= GetColumnObject(i);
    if (Item<>nil) and Item.IsActive() then
       if Item.FindValueIndex(True) < 0 then Exit;
  end;
  Result:= True;
end;

function TColumnObjects.IndexOfTag(ColumnTag: Integer): Integer;
begin
for Result := 0 to Count-1 do
  begin
    if GetColumnObject(Result).Column.Tag=ColumnTag then Exit;
  end;
  Result:= -1;
end;

procedure TColumnObjects.ResetUpdateFlags();
var i: Integer;
begin
for i := 0 to Count-1 do
    GetColumnObject(i).ResetUpdateFlag;
end;

function TColumnObjects.UpdateFieldValues(ColumnTag: Integer): Integer;
begin
  Result:= -2;
  FoundIndex:= IndexOfTag(ColumnTag);
  if (FoundIndex>=0) then
  begin
    LastTag:= ColumnTag;
    Result:= GetColumnObject(FoundIndex).UpdateFieldValues;
  end;
end;

function TColumnObjects.GetFieldValues(ColumnTag: Integer; DoUpdate: Boolean = True): TStrings;
var Res: Integer; ColObj: TColumnObject;
begin
  Result:= nil;
  FoundIndex:= IndexOfTag(ColumnTag);
  if (FoundIndex>=0) then
     begin
       ColObj:= GetColumnObject(FoundIndex);
       Res:= 0;
       if DoUpdate then
          Res:= ColObj.UpdateFieldValues;
       if (Res>=0) then
          Result:= ColObj.GetFieldValues;
     end;
end;

function TColumnObjects.GetCurrentColumn(): TColumnEh;
var ColObj: TColumnObject;
begin
  Result:= nil;
  if (FoundIndex>=0) then
     begin
       ColObj:= GetColumnObject(FoundIndex);
       if (ColObj<>nil) then
          Result:= ColObj.Column;
     end;
end;


function TColumnObjects.GetColumnObjectInfo(
         ColumnTag: Integer; DoUpdate: Boolean = True): TColumnObjectInfo;
var  ColObj: TColumnObject;
begin
  FillChar(Result, SizeOf(Result), 0);
  if (ColumnTag>=0) then
     FoundIndex:= IndexOfTag(ColumnTag);
  if (FoundIndex>=0) then
  begin
    ColObj:= GetColumnObject(FoundIndex);
    if (ColObj<>nil) then
    begin
      if DoUpdate then
        ColObj.UpdateFieldValues(ColumnTag<0);
      Result:= ColObj.GetColumnObjectInfo;
    end;
  end;
end;

function TColumnObjects.AcceptFilterValues: Boolean;
begin
  Result:= False;
  if (FoundIndex>=0) then
     begin
       Result:= True;
       GetColumnObject(FoundIndex).AcceptFilterValues;
     end;  
end;


end.

