unit VidDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MlekoForm, DB, MemDS, DBAccess, MSAccess, GridsEh, DBGridEh,
  ExtCtrls, StdCtrls, ActnList, Buttons;

type
  TVidDocForm = class(TMlekoForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    dsVidDoc: TMSDataSource;
    quVidDoc: TMSQuery;
    quVidDocid: TIntegerField;
    dsListUserForVidDoc: TMSDataSource;
    quListUserForVidDoc: TMSQuery;
    dsUsersConfirm: TMSDataSource;
    quUsersConfirm: TMSQuery;
    quUsersConfirmUserNo: TIntegerField;
    quUsersConfirmUserName: TStringField;
    quUsersConfirmCodeAccess: TSmallintField;
    quUsersConfirmPassword: TStringField;
    quUsersConfirmEditPost: TBooleanField;
    quUsersConfirmFormWight: TIntegerField;
    quUsersConfirmFormHeight: TIntegerField;
    quUsersConfirmFormLeft: TIntegerField;
    quUsersConfirmFormTop: TIntegerField;
    quUsersConfirmSkin: TIntegerField;
    sbInsert: TSpeedButton;
    sbEdit: TSpeedButton;
    sbDel: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel3: TPanel;
    bOk: TButton;
    bCancel: TButton;
    quListUserForVidDocId: TIntegerField;
    quListUserForVidDocIdVidDoc: TIntegerField;
    quListUserForVidDocOtdelNo: TIntegerField;
    quListUserForVidDocUserNo: TIntegerField;
    quListUserForVidDocActive: TBooleanField;
    quListUserForVidDocOtdel: TStringField;
    quListUserForVidDocUser: TStringField;
    quVidDocVidNaklNo: TSmallintField;
    quVidDocVidNaklName: TStringField;
    GroupBox3: TGroupBox;
    quListUserForConductingDoc: TMSQuery;
    dsListUserForConductingDoc: TMSDataSource;
    DBGridEh3: TDBGridEh;
    quListUserForConductingDocId: TIntegerField;
    quListUserForConductingDocIdVidDoc: TIntegerField;
    quListUserForConductingDocUserNo: TIntegerField;
    quListUserForConductingDocActive: TBooleanField;
    quListUserForConductingDocUser: TStringField;
    Splitter2: TSplitter;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    quListUserForVidDocIsCanEdit: TBooleanField;
    quUsersConduct: TMSQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    SmallintField1: TSmallintField;
    StringField2: TStringField;
    BooleanField1: TBooleanField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    dsUsersConduct: TMSDataSource;
    GroupBox4: TGroupBox;
    DBGridEh4: TDBGridEh;
    quUsersControl: TMSQuery;
    IntegerField7: TIntegerField;
    StringField3: TStringField;
    SmallintField2: TSmallintField;
    StringField4: TStringField;
    BooleanField2: TBooleanField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    dsUsersControl: TMSDataSource;
    quListUserForControlDoc: TMSQuery;
    StringField5: TStringField;
    dsListUserForControlDoc: TMSDataSource;
    quListUserForControlDocId: TIntegerField;
    quListUserForControlDocIdVidDoc: TIntegerField;
    quListUserForControlDocUserNo: TIntegerField;
    quListUserForControlDocActive: TBooleanField;
    Splitter3: TSplitter;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    procedure quListUserForVidDocBeforeOpen(DataSet: TDataSet);
    procedure DBGridEh1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure bOkClick(Sender: TObject);
    procedure bCancelClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
    procedure sbDelClick(Sender: TObject);
    procedure quListUserForVidDocBeforePost(DataSet: TDataSet);
    procedure quListUserForConductingDocBeforeOpen(DataSet: TDataSet);
    procedure quListUserForConductingDocBeforePost(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure quVidDocBeforePost(DataSet: TDataSet);
    procedure quVidDocAfterPost(DataSet: TDataSet);
    procedure quListUserForControlDocBeforePost(DataSet: TDataSet);
    procedure quListUserForControlDocBeforeOpen(DataSet: TDataSet);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VidDocForm: TVidDocForm;

implementation

uses data;

{$R *.dfm}

procedure TVidDocForm.quListUserForVidDocBeforeOpen(DataSet: TDataSet);
begin
  quListUserForVidDoc.ParamByName('IdVidDoc').Value := quVidDocId.Value;
end;

procedure TVidDocForm.DBGridEh1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  quListUserForVidDoc.Close;
  quListUserForVidDoc.ParamByName('IdVidDoc').Value := quVidDocId.Value;
  quListUserForVidDoc.Open;

  quListUserForConductingDoc.Close;
  quListUserForConductingDoc.ParamByName('IdVidDoc').Value := quVidDocId.Value;
  quListUserForConductingDoc.Open;

  quListUserForControlDoc.Close;
  quListUserForControlDoc.ParamByName('IdVidDoc').Value := quVidDocId.Value;
  quListUserForControlDoc.Open;
end;

procedure TVidDocForm.DBGridEh1CellClick(Column: TColumnEh);
begin

  quListUserForVidDoc.Close;
  quListUserForVidDoc.ParamByName('IdVidDoc').Value := quVidDocId.Value;
  quListUserForVidDoc.Open;

  quListUserForConductingDoc.Close;
  quListUserForConductingDoc.ParamByName('IdVidDoc').Value := quVidDocId.Value;
  quListUserForConductingDoc.Open;

  quListUserForControlDoc.Close;
  quListUserForControlDoc.ParamByName('IdVidDoc').Value := quVidDocId.Value;
  quListUserForControlDoc.Open;

end;

procedure TVidDocForm.bOkClick(Sender: TObject);
begin
  if (quListUserForVidDoc.State in [dsInsert, dsEdit]) then quListUserForVidDoc.Post else quListUserForVidDoc.Cancel;
  if (quVidDoc.State in [dsInsert, dsEdit]) then quVidDoc.Post else quVidDoc.Cancel;
  if (quListUserForConductingDoc.State in [dsInsert, dsEdit]) then quListUserForConductingDoc.Post else quListUserForConductingDoc.Cancel;
  if (quListUserForControlDoc.State in [dsInsert, dsEdit]) then quListUserForControlDoc.Post else quListUserForControlDoc.Cancel;
end;

procedure TVidDocForm.bCancelClick(Sender: TObject);
begin
  if (quListUserForVidDoc.State in [dsInsert, dsEdit]) then quListUserForVidDoc.Cancel;
  if (quVidDoc.State in [dsInsert, dsEdit]) then quVidDoc.Cancel;
  if (quListUserForConductingDoc.State in [dsInsert, dsEdit]) then quListUserForConductingDoc.Cancel;
  if (quListUserForControlDoc.State in [dsInsert, dsEdit]) then quListUserForControlDoc.Cancel;
end;

procedure TVidDocForm.SpeedButton1Click(Sender: TObject);
begin
  quListUserForVidDoc.Append;
end;

procedure TVidDocForm.SpeedButton2Click(Sender: TObject);
begin
  quListUserForVidDoc.Edit;
end;

procedure TVidDocForm.SpeedButton3Click(Sender: TObject);
begin
  if Application.MessageBox('�� ������� ?', '��������', MB_YESNO or MB_DEFBUTTON2) = ID_YES then quListUserForVidDoc.Delete;
end;

procedure TVidDocForm.sbInsertClick(Sender: TObject);
begin
  quVidDoc.Append;
end;

procedure TVidDocForm.sbEditClick(Sender: TObject);
begin
  quVidDoc.Edit;
end;

procedure TVidDocForm.sbDelClick(Sender: TObject);
begin
  if Application.MessageBox('�� ������� ?', '��������', MB_YESNO or MB_DEFBUTTON2) = ID_YES then quVidDoc.Delete;
end;

procedure TVidDocForm.quListUserForVidDocBeforePost(DataSet: TDataSet);
begin
  quListUserForVidDocIdVidDoc.Value := quVidDocid.Value;

end;

procedure TVidDocForm.quListUserForConductingDocBeforeOpen(
  DataSet: TDataSet);
begin
  quListUserForConductingDoc.ParamByName('IdVidDoc').Value := quVidDocId.Value;

end;

procedure TVidDocForm.quListUserForConductingDocBeforePost(
  DataSet: TDataSet);
begin
  quListUserForConductingDocIdVidDoc.Value := quVidDocId.Value;

end;

procedure TVidDocForm.SpeedButton4Click(Sender: TObject);
begin
  quListUserForConductingDoc.Append;

end;

procedure TVidDocForm.SpeedButton5Click(Sender: TObject);
begin
  quListUserForConductingDoc.Edit;

end;

procedure TVidDocForm.SpeedButton6Click(Sender: TObject);
begin
  if Application.MessageBox('�� ������� ?', '��������', MB_YESNO or MB_DEFBUTTON2) = ID_YES then quListUserForConductingDoc.Delete;

end;

procedure TVidDocForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
//  quListUserForConductingDoc.Close;
//  quListUserForVidDoc.Close;
//  quVidDoc.Close;
//  Free;
end;

procedure TVidDocForm.quVidDocBeforePost(DataSet: TDataSet);
begin
  inherited;
{
  quListUserForVidDoc.Close;
  quListUserForVidDoc.ParamByName('IdVidDoc').Value := quVidDocId.Value;
  quListUserForVidDoc.Open;

  quListUserForConductingDoc.Close;
  quListUserForConductingDoc.ParamByName('IdVidDoc').Value := quVidDocId.Value;
  quListUserForConductingDoc.Open;
}
end;

procedure TVidDocForm.quVidDocAfterPost(DataSet: TDataSet);
begin
  inherited;
  quListUserForVidDoc.Close;
  quListUserForVidDoc.ParamByName('IdVidDoc').Value := quVidDocId.Value;
  quListUserForVidDoc.Open;

  quListUserForConductingDoc.Close;
  quListUserForConductingDoc.ParamByName('IdVidDoc').Value := quVidDocId.Value;
  quListUserForConductingDoc.Open;

  quListUserForControlDoc.Close;
  quListUserForControlDoc.ParamByName('IdVidDoc').Value := quVidDocId.Value;
  quListUserForControlDoc.Open;


end;

procedure TVidDocForm.quListUserForControlDocBeforePost(DataSet: TDataSet);
begin
  inherited;
  quListUserForControlDocIdVidDoc.Value := quVidDocId.Value;
end;

procedure TVidDocForm.quListUserForControlDocBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  quListUserForControlDoc.ParamByName('IdVidDoc').Value := quVidDocId.Value;
end;

procedure TVidDocForm.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  quListUserForControlDoc.Append;
end;

procedure TVidDocForm.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  quListUserForControlDoc.Edit;
end;

procedure TVidDocForm.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('�� ������� ?', '��������', MB_YESNO or MB_DEFBUTTON2) = ID_YES then quListUserForControlDoc.Delete;
end;

end.
