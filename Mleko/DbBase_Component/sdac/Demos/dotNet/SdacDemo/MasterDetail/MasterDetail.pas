unit MasterDetail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, Db, Grids, DBGrids,  StdCtrls, ToolWin,
{$IFNDEF VER130} { Delphi 6 or higher }
  Variants,
{$ENDIF}
  ComCtrls, Buttons, MemDS,  DBAccess, MSAccess, SdacVcl, DemoFrame, SdacDemoForm;

type
  TMasterDetailFrame = class(TDemoFrame)
    quMaster: TMSQuery;
    Splitter1: TSplitter;
    quDetail: TMSQuery;
    dsDetail: TDataSource;
    dsMaster: TDataSource;
    DBGrid: TDBGrid;
    ToolBar: TPanel;
    Panel2: TPanel;
    btOpen: TSpeedButton;
    btClose: TSpeedButton;
    DBNavigator: TDBNavigator;
    ToolBar1: TPanel;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Splitter3: TSplitter;
    Panel4: TPanel;
    cbLocalMasterDetail: TCheckBox;
    Panel6: TPanel;
    cbCacheCalcFields: TCheckBox;
    Panel3: TPanel;
    rbSQL: TRadioButton;
    rbSimpleFields: TRadioButton;
    rbCalcFields: TRadioButton;
    quMasterDEPTNO: TIntegerField;
    quMasterDNAME: TStringField;
    quMasterLOC: TStringField;
    quMasterDEPTNO_CALCULATED: TIntegerField;
    quDetailEMPNO: TIntegerField;
    quDetailENAME: TStringField;
    quDetailJOB: TStringField;
    quDetailMGR: TIntegerField;
    quDetailHIREDATE: TDateTimeField;
    quDetailSAL: TFloatField;
    quDetailCOMM: TFloatField;
    quDetailDEPTNO: TIntegerField;
    quDetailDEPTNO_CALCULATED: TIntegerField;
    procedure btOpenClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure cbLocalMasterDetailClick(Sender: TObject);
    procedure rbClick(Sender: TObject);
    procedure cbCacheCalcFieldsClick(Sender: TObject);
    procedure quCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    // Demo management
    procedure Initialize; override;
    procedure SetDebug(Value: boolean); override;
  end;

implementation

{$IFDEF CLR}
{$R *.nfm}
{$ENDIF}
{$IFDEF WIN32}
{$R *.dfm}
{$ENDIF}

procedure TMasterDetailFrame.btOpenClick(Sender: TObject);
begin
  quMaster.Open;
  quDetail.Open;
end;

procedure TMasterDetailFrame.btCloseClick(Sender: TObject);
begin
  quDetail.Close;
  quMaster.Close;
end;

procedure TMasterDetailFrame.cbLocalMasterDetailClick(Sender: TObject);
var
  OldActive: boolean;
begin
  OldActive := quDetail.Active;
  quDetail.Close;
  try
    quDetail.Options.LocalMasterDetail := cbLocalMasterDetail.Checked;
    if OldActive then
      quDetail.Open;
  except
    cbLocalMasterDetail.Checked := quDetail.Options.LocalMasterDetail;
    raise;
  end;
end;

procedure TMasterDetailFrame.rbClick(Sender: TObject);
var
  OldActive: boolean;
begin
  OldActive := dsMaster.DataSet.Active;
  if OldActive then
    btCloseClick(nil);
  cbCacheCalcFields.Enabled := Sender = rbCalcFields;

  if rbSQL.Checked then begin
    quDetail.SQL.Text := 'SELECT * FROM Emp WHERE DeptNo = :DeptNo';
    quDetail.DetailFields := '';
    quDetail.MasterFields := '';
    quMaster.FieldByName('DEPTNO_CALCULATED').Visible := False;
    quDetail.FieldByName('DEPTNO_CALCULATED').Visible := False;
    cbLocalMasterDetail.Checked := False;
    cbLocalMasterDetail.Enabled := False;
    cbCacheCalcFields.Enabled := False;
  end
  else begin
    if rbSimpleFields.Checked then begin
      quDetail.SQL.Text := 'SELECT * FROM Emp';
      quDetail.DetailFields := 'DEPTNO';
      quDetail.MasterFields := 'DEPTNO';
      quMaster.FieldByName('DEPTNO_CALCULATED').Visible := False;
      quDetail.FieldByName('DEPTNO_CALCULATED').Visible := False;
      cbLocalMasterDetail.Enabled := True;
      cbCacheCalcFields.Enabled := False;
    end
    else begin
      quDetail.SQL.Text := 'SELECT * FROM Emp';
      quDetail.DetailFields := 'DEPTNO_CALCULATED';
      quDetail.MasterFields := 'DEPTNO_CALCULATED';
      quMaster.FieldByName('DEPTNO_CALCULATED').Visible := True;
      quDetail.FieldByName('DEPTNO_CALCULATED').Visible := True;
      cbLocalMasterDetail.Enabled := True;
      cbLocalMasterDetail.Checked := True;
      cbCacheCalcFields.Enabled := True;
  end;
  end;
  cbCacheCalcFieldsClick(nil);
  if OldActive then
    btOpenClick(nil);
end;

procedure TMasterDetailFrame.cbCacheCalcFieldsClick(Sender: TObject);
var
  OldActive: boolean;
begin
  OldActive := dsMaster.DataSet.Active;
  if OldActive then
    btCloseClick(nil);
  quMaster.Options.CacheCalcFields := cbCacheCalcFields.Checked and cbCacheCalcFields.Enabled;
  quDetail.Options.CacheCalcFields := quMaster.Options.CacheCalcFields;
  if OldActive then
    btOpenClick(nil);
end;

procedure TMasterDetailFrame.quCalcFields(DataSet: TDataSet);
var
  Dst, Src: TField;
begin
  Src := DataSet.FieldByName('DEPTNO');
  Dst := DataSet.FieldByName('DEPTNO_CALCULATED');
  if Src.IsNull then
    Dst.Value := Null
  else
    Dst.AsInteger := Src.AsInteger * 2;
end;

// Demo management
procedure TMasterDetailFrame.Initialize;
begin
  inherited;
  quMaster.Connection := Connection as TMSConnection;
  quDetail.Connection := Connection as TMSConnection;
  rbClick(nil);
end;

procedure TMasterDetailFrame.SetDebug(Value: boolean);
begin
  quMaster.Debug := Value;
  quDetail.Debug := Value;
end;

end.

