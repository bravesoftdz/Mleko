inherited MlekoSelectBuhDlg: TMlekoSelectBuhDlg
  Left = 906
  Top = 183
  Width = 484
  Height = 354
  Caption = #1042#1099#1073#1086#1088' '#1073#1091#1093#1075#1072#1083#1090#1077#1088#1089#1082#1086#1075#1086' '#1090#1080#1087#1072
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl: TPageControl
    Width = 472
    Height = 258
    inherited TabSheet1: TTabSheet
      inherited Splitter: TSplitter
        Left = 242
        Height = 230
      end
      inherited PanelGrid: TPanel
        Width = 242
        Height = 230
        inherited DBGrid: TcitDBGrid
          Width = 240
          Height = 206
        end
        inherited ToolBar: TToolBar
          Width = 240
        end
      end
      inherited PanelSelect: TPanel
        Left = 245
        Height = 230
        inherited DBGridSelection: TcitDBGrid
          Height = 206
        end
      end
    end
  end
  inherited ButtonSelect: TButton
    Left = 393
    Top = 266
  end
  inherited ButtonCancel: TButton
    Left = 393
    Top = 298
  end
  inherited FilterPanel: TTargetFilter_Panel
    Top = 266
    Width = 376
  end
  inherited ActionList: TActionList
    Left = 116
  end
  inherited ComponentProps: TcitComponentProps
    Left = 32
  end
  inherited DS: TDataSource
    Left = 116
  end
  inherited SQLBuilder: TTargetSQLBuilder
    Select.Strings = (
      'buh as id'
      ',buh'
      ',buh_type_name')
    From.Strings = (
      'd_buh_type a')
    KeyFields.Strings = (
      'buh')
    Left = 62
    Top = 41
  end
  inherited Query: TMSQuery
    SQL.Strings = (
      'select buh as id'
      '      ,buh'
      '      ,buh_type_name'
      ' from d_buh_type a')
    Left = 87
  end
  inherited QueryProp: TMSQuery
    Left = 31
  end
  inherited DSSelection: TDataSource
    Left = 88
  end
  inherited QuSelectList: TMSQuery
    Left = 55
    Top = 196
  end
end
