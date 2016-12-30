
//////////////////////////////////////////////////
//  DB Access Components
//  Copyright � 1998-2007 Core Lab. All right reserved.
//  SQL Editor Frame
//////////////////////////////////////////////////

{$IFNDEF CLR}

{$I Dac.inc}

unit DASQLFrame;
{$ENDIF}

interface

uses
{$IFDEF MSWINDOWS}
  Windows, Messages, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,
{$ENDIF}
{$IFDEF LINUX}
 QForms, QControls, QExtCtrls, QStdCtrls,
{$ENDIF}
{$IFDEF DBTOOLS}
  DBToolsClient,
{$ENDIF}
  Classes, SysUtils,
  CRFrame, CRTabEditor;

type
  TDASQLFrame = class(TCRFrame)
    meSQL: TMemo;
    Panel1: TPanel;
    procedure meSQLExit(Sender: TObject);

  protected
    function GetSQLText: string;
    procedure SetSQLText(const Value: string);

    procedure LoadMemo; virtual;
    procedure SaveMemo; virtual;
    procedure DoActivate; override;
    function GetLocalComponentSQL: TStrings; virtual;
    procedure SetLocalComponentSQL(Value: TStrings); virtual;

    property SQLText: string read GetSQLText write SetSQLText;
    property LocalComponentSQL: TStrings read GetLocalComponentSQL write SetLocalComponentSQL;
  public
  {$IFDEF USE_SYNEDIT}
    constructor Create(Owner: TComponent); override;
  {$ENDIF}

    function ActiveControl: TWinControl; override;
  end;

implementation

{$IFDEF IDE}
{$R *.dfm}
{$ENDIF}
{$IFDEF MSWINDOWS}
{$R DASQLFrame.dfm}
{$ENDIF}
{$IFDEF LINUX}
{$R *.xfm}
{$ENDIF}

uses
  CREditor;

{$IFDEF USE_SYNEDIT}
constructor TDASQLFrame.Create(Owner: TComponent);
var
  WinControl: TWinControl;
begin
  inherited;
  
{$IFDEF DBTOOLS}
  if TCREditorForm(Owner).DADesignUtilsClass.DBToolsAvailable then
    Exit;
{$ENDIF}
  WinControl := meSQL;
  Assert(Owner is TCREditorForm);
  TCREditorForm(Owner).ReplaceMemo(WinControl, True);
  meSQL := TMemo(WinControl);
end;
{$ENDIF}

function TDASQLFrame.GetSQLText: string;
begin
  Result := GetMemoText(meSQL);
end;

procedure TDASQLFrame.SetSQLText(const Value: string);
begin
  if Trim(SQLText) <> Trim(Value) then
    SetMemoText(meSQL, Value);
end;

function TDASQLFrame.GetLocalComponentSQL: TStrings;
begin
  Assert(Editor <> nil);
  Result := Editor.DADesignUtilsClass.GetSQL(Editor.LocalComponent);
end;

procedure TDASQLFrame.SetLocalComponentSQL(Value: TStrings);
begin
  Assert(Editor <> nil);
  Editor.DADesignUtilsClass.SetSQL(Editor.LocalComponent, Value);
end;

procedure TDASQLFrame.meSQLExit(Sender: TObject);
begin
  if TrimRight(LocalComponentSQL.Text) <> TrimRight(SQLText) then begin
    SaveMemo;
    Modified := True;
  end;
end;

function TDASQLFrame.ActiveControl: TWinControl;
begin
{$IFDEF DBTOOLS}
  if DBTools.HasDACSqlEditorFrame(meSQL) then
    Result := DBTools.GetDACSqlEditorFrame(meSQL)
  else
{$ENDIF}
    Result := meSQL;
end;

procedure TDASQLFrame.LoadMemo;
begin
  SQLText := LocalComponentSQL.Text;
end;

procedure TDASQLFrame.SaveMemo;
begin
  LocalComponentSQL.Text := Trim(SQLText);
end;

procedure TDASQLFrame.DoActivate;
begin
{$IFDEF DBTOOLS}
  DBTools.ReplaceMemo(meSQL, Editor.DADesignUtilsClass, Editor.Component);
{$ENDIF}
  LoadMemo;
end;

end.
