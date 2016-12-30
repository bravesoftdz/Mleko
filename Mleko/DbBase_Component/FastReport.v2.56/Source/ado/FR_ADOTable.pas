{******************************************}
{ }
{ FastReport v2.4-ADO components }
{ Table component }
{ }
{ Copyright (c) 1998-2001 by Tzyganenko A. }
{ }
{******************************************}

unit FR_ADOTable;

interface

{$I FR.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, FR_Class, StdCtrls,
  Controls, Forms, Menus, Dialogs, DB, ADODB, ADOInt, FR_DBSet;

type
  TfrADODataset = class(TfrNonVisualControl)
  protected
    FDataSet:TADODataSet;
    FDataSource:TDataSource;
    FDBDataSet:TfrDBDataset;
    procedure FieldsEditor(Sender:TObject);
    procedure ReadFields(Stream:TStream);
    procedure WriteFields(Stream:TStream);
    procedure SetPropValue(Index:String; Value:Variant); override;
    function GetPropValue(Index:String):Variant; override;
    function DoMethod(MethodName:String; Par1, Par2, Par3:Variant):Variant; override;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure DefineProperties; override;
    procedure Loaded; override;
    procedure ShowEditor; override;
    procedure SaveToFR3Stream(Stream:TStream); override;
  end;

  TfrADOTable = class(TfrADODataSet)
  private
    FTable:TADOTable;
    procedure JoinEditor(Sender:TObject);
  protected
    procedure SetPropValue(Index:String; Value:Variant); override;
    function GetPropValue(Index:String):Variant; override;
  public
    constructor Create; override;
    procedure LoadFromStream(Stream:TStream); override;
    procedure SaveToStream(Stream:TStream); override;
    procedure SaveToFR3Stream(Stream:TStream); override;
    procedure DefineProperties; override;
    procedure Loaded; override;
    property Table:TADOTable read FTable;
  end;

implementation

uses FR_DBUtils, FR_Utils, FR_Const, FR_LEdit, FR_DBFldEditor, FR_ADOMd
{$IFDEF Delphi6}
, Variants
{$ENDIF};

{ TfrADODataSet }

constructor TfrADODataSet.Create;
begin
  inherited Create;
  FDataSource:= TDataSource.Create(frDialogForm);
  FDataSource.DataSet:= nil;

  FDBDataSet:= TfrDBDataSet.Create(frDialogForm);
  FDBDataSet.DataSource:= FDataSource;

  Flags:= Flags or flDontUndo;
end;

destructor TfrADODataSet.Destroy;
begin
  FDBDataset.Free;
  FDataSource.Free;
  FDataSet.Free;
  inherited Destroy;
end;

procedure TfrADODataSet.DefineProperties;

  function GetDatabases:String;
  var
    i:Integer;
    sl:TStringList;
  begin
    Result:= '';
    sl:= TStringList.Create;
    frGetComponents(frDialogForm, TADOConnection, sl, nil);
    sl.Sort;
    for i:= 0 to sl.Count-1 do
      Result:= Result+sl[i]+';';
    sl.Free;
  end;

begin
  inherited DefineProperties;
  AddProperty('Active', [frdtBoolean], nil);
  AddEnumProperty('Database', GetDatabases, [Null]);
  AddProperty('Fields', [frdtHasEditor, frdtOneObject], FieldsEditor);
  AddProperty('FieldCount', [], nil);
  AddProperty('Filter', [frdtString], nil);
  AddProperty('EOF', [], nil);
  AddProperty('RecordCount', [], nil);
  AddProperty('IsEmpty', [], nil);
  AddProperty('EnableBCD', [frdtBoolean], nil);
end;

procedure TfrADODataSet.SetPropValue(Index:String; Value:Variant);
var
  d:TADOConnection;
begin
  inherited SetPropValue(Index, Value);
  Index:= AnsiUpperCase(Index);
  if Index = 'NAME' then
  begin
    FDataSource.Name:= 'S'+FDataSet.Name;
    FDBDataSet.Name:= '_'+FDataSet.Name;
  end
  else if Index = 'ACTIVE' then
    FDataSet.Active:= Value
  else if Index = 'DATABASE' then
  begin
    FDataSet.Close;
    d:= frFindComponent(FDataSet.Owner, Value) as TADOConnection;
    FDataSet.Connection:= d;
  end
  else if Index = 'FILTER' then
  begin
    FDataSet.Filter:= Value;
    FDataSet.Filtered:= Trim(Value)<>'';
  end
  else if Index = 'ENABLEBCD' then
    FDataSet.EnableBCD:= Value
end;

function TfrADODataSet.GetPropValue(Index:String):Variant;

  function GetDataBase(Owner:TComponent; d:TADOConnection):String;
  begin
    Result:= '';
    if d<>nil then
    begin
      Result:= d.Name;
      if d.Owner<>Owner then
        Result:= d.Owner.Name+'.'+Result;
    end;
  end;

begin
  Index:= AnsiUpperCase(Index);
  Result:= inherited GetPropValue(Index);
  if Result<>Null then Exit;
  if Index = 'ACTIVE' then
    Result:= FDataSet.Active
  else if Index = 'DATABASE' then
    Result:= GetDataBase(FDataSet.Owner, FDataSet.Connection)
  else if Index = 'FILTER' then
    Result:= FDataSet.Filter
  else if Index = 'EOF' then
    Result:= FDataSet.Eof
  else if Index = 'RECORDCOUNT' then
    Result:= FDataSet.RecordCount
  else if Index = 'FIELDCOUNT' then
    Result:= FDataSet.FieldCount
  else if Index = 'ISEMPTY' then
    Result:= FDataSet.IsEmpty
  else if Index = 'ENABLEBCD' then
    Result:= FDataSet.EnableBCD
end;

function TfrADODataSet.DoMethod(MethodName:String; Par1, Par2, Par3:Variant):Variant;
begin
  Result:= inherited DoMethod(MethodName, Par1, Par2, Par3);
  if MethodName = 'GETINDEXPROPERTY' then
  begin
    if Par1 = 'FIELDS' then
      Result:= FDataSet.FieldByName(Par2).AsVariant;
  end
  else if MethodName = 'OPEN' then
    FDataSet.Open
  else if MethodName = 'CLOSE' then
    FDataSet.Close
  else if MethodName = 'NEXT' then
    FDataSet.Next
  else if MethodName = 'PRIOR' then
    FDataSet.Prior
  else if MethodName = 'FIRST' then
    FDataSet.First
  else if MethodName = 'LAST' then
    FDataSet.Last
end;

procedure TfrADODataSet.ReadFields(Stream:TStream);
var
  i:Integer;
  n:Word;
  s:String;
  Field:TField;
  ds1:TDataset;
  fName:String;
  fType:TFieldType;
  fLookup:Boolean;
  fSize:Word;
  fDefs:TFieldDefs;
begin
  fDefs:= FDataSet.FieldDefs;
  Stream.Read(n, 2); // FieldCount
  for i:= 0 to n-1 do
  begin
    fType:= TFieldType(frReadByte(Stream)); // DataType
    fName:= frReadString(Stream); // FieldName
    fLookup:= frReadBoolean(Stream); // Lookup
    fSize:= frReadWord(Stream); // Size

    fDefs.Add(fName, fType, fSize, False);
    Field:= fDefs[fDefs.Count-1].CreateField(FDataSet);
    if fLookup then
      with Field do
      begin
        Lookup:= True;
        KeyFields:= frReadString(Stream); // KeyFields
        s:= frReadString(Stream); // LookupDataset
        ds1:= frFindComponent(FDataSet.Owner, s) as TDataSet;
        FFixupList['.'+FieldName]:= s;
        LookupDataset:= ds1;
        LookupKeyFields:= frReadString(Stream); // LookupKeyFields
        LookupResultField:= frReadString(Stream); // LookupResultField
      end;
  end;
end;

procedure TfrADODataSet.WriteFields(Stream:TStream);
var
  i:Integer;
  s:String;
  SaveActive:Boolean;
begin
  SaveActive:= FDataSet.Active;
  FDataSet.Close;
  frWriteWord(Stream, FDataSet.FieldCount); // FieldCount
  for i:= 0 to FDataSet.FieldCount-1 do
  with FDataSet.Fields[i] do
  begin
    frWriteByte(Stream, Byte(DataType)); // DataType
    frWriteString(Stream, FieldName); // FieldName
    frWriteBoolean(Stream, Lookup); // Lookup
    frWriteWord(Stream, Size); // Size

    if Lookup then
    begin
      frWriteString(Stream, KeyFields); // KeyFields
      if LookupDataset<>nil then
      begin
        s:= LookupDataset.Name;
        if LookupDataset.Owner<>FDataSet.Owner then
          s:= LookupDataset.Owner.Name+'.'+s;
      end
      else
        s:= '';
      frWriteString(Stream, s); // LookupDataset
      frWriteString(Stream, LookupKeyFields); // LookupKeyFields
      frWriteString(Stream, LookupResultField); // LookupResultField
    end;
  end;
  FDataSet.Active:= SaveActive;
end;

procedure TfrADODataSet.Loaded;
var
  i:Integer;
  s:String;
  ds:TDataSet;
  f:TField;
begin
// fixup component references
  try
    Prop['DataBase']:= FFixupList['DataBase'];
    for i:= 0 to FFixupList.Count-1 do
    begin
      s:= FFixupList.Name[i];
      if s[1] = '.' then // lookup field
      begin
        f:= FDataSet.FindField(Copy(s, 2, 255));
        ds:= frFindComponent(FDataSet.Owner, FFixupList.Value[i]) as TDataSet;
        f.LookupDataset:= ds;
      end
    end;
    Prop['Active']:= FFixupList['Active'];
  except;
  end;
end;

procedure TfrADODataSet.ShowEditor;
begin
  FieldsEditor(nil);
end;

procedure TfrADODataSet.FieldsEditor(Sender:TObject);
var
  SaveActive:Boolean;
begin
  SaveActive:= FDataSet.Active;
  FDataSet.Close;
  with TfrDBFieldsEditorForm.Create(nil) do
  begin
    DataSet:= FDataSet;
    ShowModal;
    Free;
  end;
  frDesigner.BeforeChange;
  FDataSet.Active:= SaveActive;
end;

procedure TfrADODataset.SaveToFR3Stream(Stream:TStream);

  procedure WriteStr(const s:String);
  begin
    Stream.Write(s[1], Length(s));
  end;

begin
  inherited;
  if FDataSet.Connection<>nil then
    WriteStr(' Database="'+StrToXML(FDataSet.Connection.Name)+'"');
  WriteStr(' Filter="'+StrToXML(FDataSet.Filter)+'"');
end;

{ TfrADOTable }

constructor TfrADOTable.Create;
begin
  inherited Create;
  FTable:= TADOTable.Create(frDialogForm);
  FTable.EnableBCD:= False;
  FDataSet:= TADODataSet(FTable);
  FDataSource.DataSet:= FDataSet;

  Component:= FTable;
  BaseName:= 'Table';
  Bmp.LoadFromResourceName(hInstance, 'FR_ADOTABLE');
end;

procedure TfrADOTable.DefineProperties;

  function GetIndexNames:String;
  var
    i:Integer;
  begin
    Result:= '';
    try
      with FTable do
      if (TableName<>'') and (IndexDefs<>nil) then
      begin
        IndexDefs.Update;
        for i:= 0 to IndexDefs.Count-1 do
          if IndexDefs[i].Name<>'' then
            Result:= Result+IndexDefs[i].Name+';';
      end;
    except;
    end;
  end;

  function GetMasterSource:String;
  var
    i:Integer;
    sl:TStringList;
  begin
    Result:= '';
    sl:= TStringList.Create;
    frGetComponents(FTable.Owner, TDataSet, sl, FTable);
    sl.Sort;
    for i:= 0 to sl.Count-1 do
      Result:= Result+sl[i]+';';
    sl.Free;
  end;

  function GetTableNames:String;
  var
    i:Integer;
    sl:TStringList;
  begin
    Result:= '';
    sl:= TStringList.Create;
    if FTable.Connection<>nil then
      FTable.Connection.GetTableNames(sl);
    sl.Sort;
    for i:= 0 to sl.Count-1 do
      Result:= Result+sl[i]+';';
    sl.Free;
  end;

begin
  inherited DefineProperties;
  AddEnumProperty('IndexName', GetIndexNames, [Null]);
  AddProperty('MasterFields', [frdtHasEditor, frdtOneObject], JoinEditor);
  AddEnumProperty('MasterSource', GetMasterSource, [Null]);
  AddEnumProperty('TableName', GetTableNames, [Null]);
end;

procedure TfrADOTable.SetPropValue(Index:String; Value:Variant);
var
  d:TDataset;
begin
  inherited SetPropValue(Index, Value);
  Index:= AnsiUpperCase(Index);
  if Index = 'INDEXNAME' then
    FTable.IndexName:= Value
  else if Index = 'MASTERSOURCE' then
  begin
    d:= frFindComponent(FTable.Owner, Value) as TDataSet;
    FTable.MasterSource:= frGetDataSource(FTable.Owner, d);
  end
  else if Index = 'TABLENAME' then
    FTable.TableName:= Value
end;

function TfrADOTable.GetPropValue(Index:String):Variant;
begin
  Index:= AnsiUpperCase(Index);
  Result:= inherited GetPropValue(Index);
  if Result<>Null then Exit;
  if Index = 'INDEXNAME' then
    Result:= FTable.IndexName
  else if Index = 'MASTERSOURCE' then
    Result:= frGetDataSetName(FTable.Owner, FTable.MasterSource)
  else if Index = 'TABLENAME' then
    Result:= FTable.TableName
end;

procedure TfrADOTable.LoadFromStream(Stream:TStream);
begin
  FFixupList.Clear;
  inherited LoadFromStream(Stream);
  FFixupList['DataBase']:= frReadString(Stream);
  Prop['DataBase']:= FFixupList['DataBase'];
  FTable.Filter:= frReadString(Stream);
  FTable.Filtered:= Trim(FTable.Filter)<>'';
  FTable.IndexName:= frReadString(Stream);
  FTable.MasterFields:= frReadString(Stream);
  FFixupList['MasterSource']:= frReadString(Stream);
  Prop['MasterSource']:= FFixupList['MasterSource'];
  FTable.TableName:= frReadString(Stream);
  FFixupList['Active']:= frReadBoolean(Stream);

  if LVersion >= 2 then
    Prop['EnableBCD']:= frReadBoolean(Stream);

  ReadFields(Stream);
  try
    FTable.Active:= FFixupList['Active'];
  except;
  end;
end;

procedure TfrADOTable.SaveToStream(Stream:TStream);
begin
  LVersion:= 2;
  inherited SaveToStream(Stream);
  frWriteString(Stream, Prop['DataBase']);
  frWriteString(Stream, FTable.Filter);
  frWriteString(Stream, FTable.IndexName);
  frWriteString(Stream, FTable.MasterFields);
  frWriteString(Stream, Prop['MasterSource']);
  frWriteString(Stream, FTable.TableName);
  frWriteBoolean(Stream, FTable.Active);
  frWriteBoolean(Stream, FTable.EnableBCD);
  WriteFields(Stream);
end;

procedure TfrADOTable.SaveToFR3Stream(Stream:TStream);

  procedure WriteStr(const s:String);
  begin
    Stream.Write(s[1], Length(s));
  end;

begin
  inherited;
  WriteStr(' IndexName="'+StrToXML(FTable.IndexName)+'"');
  WriteStr(' TableName="'+StrToXML(FTable.TableName)+'"');
  if FTable.MasterSource<>nil then
  begin
    WriteStr(' Master="'+StrToXML('db'+Prop['MasterSource'])+'"');
    WriteStr(' MasterFields="'+StrToXML(FTable.MasterFields)+'"');
  end;
end;

procedure TfrADOTable.Loaded;
begin
  Prop['MasterSource']:= FFixupList['MasterSource'];
  inherited Loaded;
end;

procedure TfrADOTable.JoinEditor(Sender:TObject);
begin
  with TfrADOFieldsLinkForm.Create(nil) do
  begin
    MasterDS:= frFindComponent(FTable.Owner, Prop['MasterSource']) as TDataSet;
    DetailDS:= FTable;
    if MasterDS<>nil then
    begin
      ShowModal;
      frDesigner.BeforeChange;
    end;
    Free;
  end;
end;

var
  Bmp:TBitmap;

initialization
  Bmp:= TBitmap.Create;
  Bmp.LoadFromResourceName(hInstance, 'FR_ADOTABLECONTROL');
  frRegisterControl(TfrADOTable, Bmp, IntToStr(SInsertTable));

finalization
  frUnRegisterObject(TfrADOTable);
  Bmp.Free;

end.
