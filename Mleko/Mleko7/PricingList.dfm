inherited PricingListForm: TPricingListForm
  Left = 307
  Top = 235
  Width = 1274
  Height = 456
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1258
    Height = 417
    Align = alClient
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 89
      Width = 1256
      Height = 327
      Align = alClient
      DataSource = dsHistoriPrice
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = DBGridEh1KeyDown
      OnKeyPress = DBGridEh1KeyPress
      OnTitleBtnClick = DBGridEh1TitleBtnClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'TovarNo'
          Footers = <>
          Title.Alignment = taCenter
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'NameTovar'
          Footers = <>
          Title.Alignment = taCenter
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'DateChangePrice'
          Footers = <>
          Title.Alignment = taCenter
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'VidName'
          Footers = <>
          Title.Alignment = taCenter
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'Price'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'Price1'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'Price2'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'Price3'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'Price4'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'Price5'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'Price6'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'Price7'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'Price8'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'Price9'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'Price10'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'Price13'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'Price14'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'Price15'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'PriceVeb'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'PriceInInst'
          Footers = <>
          Title.Alignment = taCenter
          Width = 114
        end
        item
          EditButtons = <>
          FieldName = 'LastPriceIn'
          Footers = <>
          Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1074#1093'. '#1094#1077#1085#1072
        end
        item
          EditButtons = <>
          FieldName = 'AvgPriceIn'
          Footers = <>
          Title.Caption = #1057#1088#1077#1076#1085#1103#1103' '#1074#1093'. '#1094#1077#1085#1072
        end
        item
          EditButtons = <>
          FieldName = 'Edit_user'
          Footers = <>
          Title.Alignment = taCenter
        end
        item
          EditButtons = <>
          FieldName = 'Edit_host_name'
          Footers = <>
          Title.Alignment = taCenter
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1256
      Height = 88
      Align = alTop
      TabOrder = 1
      object Label3: TLabel
        Left = 2
        Top = 44
        Width = 37
        Height = 13
        Caption = #1041#1088#1101#1085#1076' :'
      end
      object gBPeriod: TGroupBox
        Left = 4
        Top = 5
        Width = 273
        Height = 36
        Caption = #1055#1077#1088#1080#1086#1076
        TabOrder = 0
        OnExit = gBPeriodExit
        object Label1: TLabel
          Left = 10
          Top = 18
          Width = 7
          Height = 13
          Caption = #1057
        end
        object Label2: TLabel
          Left = 141
          Top = 18
          Width = 14
          Height = 13
          Caption = #1055#1086
        end
        object EdDateBeg: TcxDateEdit
          Left = 21
          Top = 13
          Properties.ClearKey = 46
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.WeekNumbers = True
          TabOrder = 0
          Width = 105
        end
        object EdDateEnd: TcxDateEdit
          Left = 159
          Top = 13
          Properties.ClearKey = 46
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.WeekNumbers = True
          TabOrder = 1
          Width = 105
        end
      end
      object cbIsLastDateChangePrice: TCheckBox
        Left = 280
        Top = 64
        Width = 193
        Height = 17
        Caption = #1042#1099#1074#1077#1089#1090#1080' '#1087#1086#1089#1083#1077#1076#1085#1080#1077' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
        TabOrder = 1
      end
      object DBLookupComboboxEhVidName: TDBLookupComboboxEh
        Left = 2
        Top = 60
        Width = 271
        Height = 21
        EditButtons = <>
        KeyField = 'VidName'
        ListField = 'VidName'
        ListSource = dsListVidTovName
        TabOrder = 2
        Visible = True
        OnChange = DBLookupComboboxEhVidNameChange
      end
      object Button1: TButton
        Left = 280
        Top = 8
        Width = 75
        Height = 25
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        TabOrder = 3
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 280
        Top = 34
        Width = 121
        Height = 25
        Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1074'  '#1045#1082#1089#1077#1083#1100
        TabOrder = 4
        OnClick = Button2Click
      end
      object Panel3: TPanel
        Left = 480
        Top = 24
        Width = 201
        Height = 57
        TabOrder = 5
        object rbLastInPrice: TRadioButton
          Left = 4
          Top = 0
          Width = 177
          Height = 17
          Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1074#1093#1086#1076#1085#1072#1103' '#1094#1077#1085#1072
          TabOrder = 0
          OnClick = rbLastInPriceClick
        end
        object brAvgInPrice: TRadioButton
          Left = 4
          Top = 16
          Width = 185
          Height = 17
          Caption = #1057#1088#1077#1076#1085#1103#1103' '#1074#1093#1086#1076#1085#1072#1103' '#1094#1077#1085#1072
          TabOrder = 1
          OnClick = brAvgInPriceClick
        end
        object rbInInst: TRadioButton
          Left = 4
          Top = 32
          Width = 177
          Height = 17
          Caption = #1062#1077#1085#1072' '#1074#1085#1086#1076#1085#1072#1103' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1072#1103
          Checked = True
          TabOrder = 2
          TabStop = True
          OnClick = rbInInstClick
        end
      end
    end
  end
  object quHistoriPrice: TMSQuery
    Connection = dmDataModule.DB
    SQL.Strings = (
      'declare'
      '   @IsEnabledDAte bit'
      ' , @VidName varchar (30)'
      ' , @IsLastDateChangePrice bit'
      ' , @CheckedPriceLastInPrice int '
      ' , @CheckedPriceAvgInPrice int'
      ' , @CheckedPriceInInst int'
      ''
      'set @CheckedPriceLastInPrice = :CheckedPriceLastInPrice'
      'set @CheckedPriceAvgInPrice = :CheckedPriceAvgInPrice'
      'set @CheckedPriceInInst = :CheckedPriceInInst'
      ''
      ''
      'set @IsLastDateChangePrice = :IsLastDateChangePrice '
      ''
      'set @VidName = :VidName'
      ''
      'if @VidName = '#39#39' set @VidName = null'
      ''
      'set @IsEnabledDAte = :IsEnabledDAte'
      ''
      'if @IsEnabledDAte is null set @IsEnabledDAte = 0'
      ''
      'select  hp.TovarNo'
      #9'  , hp.NameTovar'
      #9'  , hp.DateChangePrice'
      #9'  , hp.VidName'
      
        #9'  , case when @CheckedPriceLastInPrice = 1 and isnull(hp.LastPr' +
        'iceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price - hp.L' +
        'astPriceIn)/hp.LastPriceIn,3)))'
      
        '                 when @CheckedPriceAvgInPrice = 1 and isnull(hp.' +
        'AvgPriceIn,0) <> 0  then convert(decimal(18,3),(round((hp.Price ' +
        '- hp.AvgPriceIn)/hp.AvgPriceIn,3)))'
      
        '                 when @CheckedPriceInInst = 1 and isnull(hp.Pric' +
        'eInInst,0) <> 0 then convert(decimal(18,3),(round((hp.Price - hp' +
        '.PriceInInst)/hp.PriceInInst,3))) '
      '                 else 0'
      '            end as Price'
      
        #9'  , case when @CheckedPriceLastInPrice = 1 and isnull(hp.LastPr' +
        'iceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price1 - hp.' +
        'LastPriceIn)/hp.LastPriceIn,3)))'
      
        '                 when @CheckedPriceAvgInPrice = 1 and isnull(hp.' +
        'AvgPriceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price1 ' +
        '- hp.AvgPriceIn)/hp.AvgPriceIn,3)))'
      
        '                 when @CheckedPriceInInst = 1 and isnull(hp.Pric' +
        'eInInst,0) <> 0 then convert(decimal(18,3),(round((hp.Price1 - h' +
        'p.PriceInInst)/hp.PriceInInst,3))) '
      '                 else 0'
      '            end as Price1'
      
        #9'  , case when @CheckedPriceLastInPrice = 1 and isnull(hp.LastPr' +
        'iceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price2 - hp.' +
        'LastPriceIn)/hp.LastPriceIn,3)))'
      
        '                 when @CheckedPriceAvgInPrice = 1 and isnull(hp.' +
        'AvgPriceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price2 ' +
        '- hp.AvgPriceIn)/hp.AvgPriceIn,3)))'
      
        '                 when @CheckedPriceInInst = 1 and isnull(hp.Pric' +
        'eInInst,0) <> 0 then convert(decimal(18,3),(round((hp.Price2 - h' +
        'p.PriceInInst)/hp.PriceInInst,3))) '
      '                 else 0'
      '            end as Price2'
      
        #9'  , case when @CheckedPriceLastInPrice = 1 and isnull(hp.LastPr' +
        'iceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price3 - hp.' +
        'LastPriceIn)/hp.LastPriceIn,3)))'
      
        '                 when @CheckedPriceAvgInPrice = 1 and isnull(hp.' +
        'AvgPriceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price3 ' +
        '- hp.AvgPriceIn)/hp.AvgPriceIn,3)))'
      
        '                 when @CheckedPriceInInst = 1 and isnull(hp.Pric' +
        'eInInst,0) <> 0 then convert(decimal(18,3),(round((hp.Price3 - h' +
        'p.PriceInInst)/hp.PriceInInst,3))) '
      '                 else 0'
      '            end as Price3'
      
        #9'  , case when @CheckedPriceLastInPrice = 1 and isnull(hp.LastPr' +
        'iceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price4 - hp.' +
        'LastPriceIn)/hp.LastPriceIn,3)))'
      
        '                 when @CheckedPriceAvgInPrice = 1 and isnull(hp.' +
        'AvgPriceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price4 ' +
        '- hp.AvgPriceIn)/hp.AvgPriceIn,3)))'
      
        '                 when @CheckedPriceInInst = 1 and isnull(hp.Pric' +
        'eInInst,0) <> 0 then convert(decimal(18,3),(round((hp.Price4 - h' +
        'p.PriceInInst)/hp.PriceInInst,3))) '
      '                 else 0'
      '            end as Price4'
      
        #9'  , case when @CheckedPriceLastInPrice = 1 and isnull(hp.LastPr' +
        'iceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price5 - hp.' +
        'LastPriceIn)/hp.LastPriceIn,3)))'
      
        '                 when @CheckedPriceAvgInPrice = 1 and isnull(hp.' +
        'AvgPriceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price5 ' +
        '- hp.AvgPriceIn)/hp.AvgPriceIn,3)))'
      
        '                 when @CheckedPriceInInst = 1 and isnull(hp.Pric' +
        'eInInst,0) <> 0 then convert(decimal(18,3),(round((hp.Price5 - h' +
        'p.PriceInInst)/hp.PriceInInst,3))) '
      '                 else 0'
      '            end as Price5'
      
        #9'  , case when @CheckedPriceLastInPrice = 1 and isnull(hp.LastPr' +
        'iceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price6 - hp.' +
        'LastPriceIn)/hp.LastPriceIn,3)))'
      
        '                 when @CheckedPriceAvgInPrice = 1 and isnull(hp.' +
        'AvgPriceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price6 ' +
        '- hp.AvgPriceIn)/hp.AvgPriceIn,3)))'
      
        '                 when @CheckedPriceInInst = 1 and isnull(hp.Pric' +
        'eInInst,0) <> 0 then convert(decimal(18,3),(round((hp.Price6 - h' +
        'p.PriceInInst)/hp.PriceInInst,3))) '
      '                 else 0 '
      '            end as Price6'
      
        #9'  , case when @CheckedPriceLastInPrice = 1 and isnull(hp.LastPr' +
        'iceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price7 - hp.' +
        'LastPriceIn)/hp.LastPriceIn,3)))'
      
        '                 when @CheckedPriceAvgInPrice = 1 and isnull(hp.' +
        'AvgPriceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price7 ' +
        '- hp.AvgPriceIn)/hp.AvgPriceIn,3)))'
      
        '                 when @CheckedPriceInInst = 1 and isnull(hp.Pric' +
        'eInInst,0) <> 0 then convert(decimal(18,3),(round((hp.Price7 - h' +
        'p.PriceInInst)/hp.PriceInInst,3))) '
      '                 else 0'
      '            end as Price7'
      
        #9'  , case when @CheckedPriceLastInPrice = 1 and isnull(hp.LastPr' +
        'iceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price8 - hp.' +
        'LastPriceIn)/hp.LastPriceIn,3)))'
      
        '                 when @CheckedPriceAvgInPrice = 1 and isnull(hp.' +
        'AvgPriceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price8 ' +
        '- hp.AvgPriceIn)/hp.AvgPriceIn,3)))'
      
        '                 when @CheckedPriceInInst = 1 and isnull(hp.Pric' +
        'eInInst,0) <> 0 then convert(decimal(18,3),(round((hp.Price8 - h' +
        'p.PriceInInst)/hp.PriceInInst,3)))'
      '                 else 0 '
      '            end as Price8'
      
        #9'  , case when @CheckedPriceLastInPrice = 1 and isnull(hp.LastPr' +
        'iceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price9 - hp.' +
        'LastPriceIn)/hp.LastPriceIn,3)))'
      
        '                 when @CheckedPriceAvgInPrice = 1 and isnull(hp.' +
        'AvgPriceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price9 ' +
        '- hp.AvgPriceIn)/hp.AvgPriceIn,3)))'
      
        '                 when @CheckedPriceInInst = 1 and isnull(hp.Pric' +
        'eInInst,0) <> 0 then convert(decimal(18,3),(round((hp.Price9 - h' +
        'p.PriceInInst)/hp.PriceInInst ,3)))'
      '                 else 0'
      '            end as Price9'
      
        #9'  , case when @CheckedPriceLastInPrice = 1 and isnull(hp.LastPr' +
        'iceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price10 - hp' +
        '.LastPriceIn)/hp.LastPriceIn,3)))'
      
        '                 when @CheckedPriceAvgInPrice = 1 and isnull(hp.' +
        'AvgPriceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price10' +
        ' - hp.AvgPriceIn)/hp.AvgPriceIn,3)))'
      
        '                 when @CheckedPriceInInst = 1 and isnull(hp.Pric' +
        'eInInst,0) <> 0 then convert(decimal(18,3),(round((hp.Price10 - ' +
        'hp.PriceInInst)/hp.PriceInInst,3)))'
      '                 else 0'
      '            end as Price10'
      
        #9'  , case when @CheckedPriceLastInPrice = 1 and isnull(hp.LastPr' +
        'iceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price13 - hp' +
        '.LastPriceIn)/hp.LastPriceIn,3)))'
      
        '                 when @CheckedPriceAvgInPrice = 1 and isnull(hp.' +
        'AvgPriceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price13' +
        ' - hp.AvgPriceIn)/hp.AvgPriceIn,3)))'
      
        '                 when @CheckedPriceInInst = 1 and isnull(hp.Pric' +
        'eInInst,0) <> 0 then convert(decimal(18,3),(round((hp.Price13 - ' +
        'hp.PriceInInst)/hp.PriceInInst,3)))'
      '                 else 0'
      '            end as Price13'
      
        #9'  , case when @CheckedPriceLastInPrice = 1 and isnull(hp.LastPr' +
        'iceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price14 - hp' +
        '.LastPriceIn)/hp.LastPriceIn,3)))'
      
        '                 when @CheckedPriceAvgInPrice = 1 and isnull(hp.' +
        'AvgPriceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price14' +
        ' - hp.AvgPriceIn)/hp.AvgPriceIn,3)))'
      
        '                 when @CheckedPriceInInst = 1 and isnull(hp.Pric' +
        'eInInst,0) <> 0 then convert(decimal(18,3),(round((hp.Price14 - ' +
        'hp.PriceInInst)/hp.PriceInInst,3)))'
      '                 else 0'
      '            end as Price14'
      
        #9'  , case when @CheckedPriceLastInPrice = 1 and isnull(hp.LastPr' +
        'iceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price15 - hp' +
        '.LastPriceIn)/hp.LastPriceIn,3)))'
      
        '                 when @CheckedPriceAvgInPrice = 1 and isnull(hp.' +
        'AvgPriceIn,0) <> 0 then convert(decimal(18,3),(round((hp.Price15' +
        ' - hp.AvgPriceIn)/hp.AvgPriceIn,3)))'
      
        '                 when @CheckedPriceInInst = 1 and isnull(hp.Pric' +
        'eInInst,0) <> 0 then convert(decimal(18,3),(round((hp.Price15 - ' +
        'hp.PriceInInst)/hp.PriceInInst,3)))'
      '                 else 0'
      '            end as Price15'
      '--          , hp.PriceVeb'
      ''
      
        #9'  , case when @CheckedPriceLastInPrice = 1 and isnull(hp.LastPr' +
        'iceIn,0) <> 0 then convert(decimal(18,3),(round((hp.PriceVeb - h' +
        'p.LastPriceIn)/hp.LastPriceIn,3)))'
      
        '                 when @CheckedPriceAvgInPrice = 1 and isnull(hp.' +
        'AvgPriceIn,0) <> 0 then convert(decimal(18,3),(round((hp.PriceVe' +
        'b - hp.AvgPriceIn)/hp.AvgPriceIn,3)))'
      
        '                 when @CheckedPriceInInst = 1 and isnull(hp.Pric' +
        'eInInst,0) <> 0 then convert(decimal(18,3),(round((hp.PriceVeb -' +
        ' hp.PriceInInst)/hp.PriceInInst,3)))'
      '                 else 0'
      '            end as PriceVeb'
      ''
      ''
      '/*'
      #9'  , hp.Price1'
      #9'  , hp.Price2'
      #9'  , hp.Price3'
      #9'  , hp.Price4'
      #9'  , hp.Price5'
      #9'  , hp.Price6'
      #9'  , hp.Price7'
      #9'  , hp.Price8'
      #9'  , hp.Price9'
      #9'  , hp.Price10'
      #9'  , hp.Price13'
      #9'  , hp.Price14'
      #9'  , hp.Price15'
      #9'  , hp.PriceVeb'
      '*/'
      #9'  , hp.PriceInInst'
      '          , hp.AvgPriceIn'
      '          , hp.LastPriceIn'
      '      , case '
      
        '         when (hp.Edit_user = '#39'SA'#39') or (hp.Edit_user = '#39'sa'#39') the' +
        'n '#39#1056#1091#1095#1085#1086#1081' '#1074#1074#1086#1076#39
      '         when (hp.Edit_user = '#39'NT AUTHORITY\'#1089#1080#1089#1090#1077#1084#1072#39') then '#39'JOB'#39
      '         when (hp.Edit_user = '#39'MLK\admin'#39') then '#39'JOB'#39
      '         else (select UserName '
      '                from Users '
      
        '                 where UserNo = SUBSTRING (hp.Edit_user,6, LEN(h' +
        'p.edit_user))) '
      '       end as Edit_User'
      '     , hp.Edit_host_name'
      ' from HistoriPrice hp'
      '  where TovarNo = isnull(:TovarNo,TovarNo)'
      
        '    and ((DateChangePrice between :DateBeg and :DateEnd) or (@Is' +
        'EnabledDAte = 0))'
      '    and ((hp.VidName = @VidName) or @VidName is null)'
      '    and (exists (select 1'
      
        '                  from (select TovarNo , max(DateChangePrice) as' +
        ' DateChangePrice'
      '                         from HistoriPrice'
      '                        group by TovarNo) h'
      
        #9#9#9'      where h.TovarNo = hp.TovarNo and h.DateChangePrice = hp' +
        '.DateChangePrice) or (@IsLastDateChangePrice = 0))'
      'order by &_order')
    Left = 744
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CheckedPriceLastInPrice'
      end
      item
        DataType = ftUnknown
        Name = 'CheckedPriceAvgInPrice'
      end
      item
        DataType = ftUnknown
        Name = 'CheckedPriceInInst'
      end
      item
        DataType = ftUnknown
        Name = 'IsLastDateChangePrice'
      end
      item
        DataType = ftUnknown
        Name = 'VidName'
      end
      item
        DataType = ftUnknown
        Name = 'IsEnabledDAte'
      end
      item
        DataType = ftInteger
        Name = 'TovarNo'
      end
      item
        DataType = ftDateTime
        Name = 'DateBeg'
      end
      item
        DataType = ftDateTime
        Name = 'DateEnd'
      end>
    MacroData = <
      item
        Name = '_order'
        Value = 'TovarNo'
      end>
    object quHistoriPriceTovarNo: TIntegerField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      FieldName = 'TovarNo'
    end
    object quHistoriPriceNameTovar: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
      DisplayWidth = 30
      FieldName = 'NameTovar'
      Size = 128
    end
    object quHistoriPriceDateChangePrice: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      FieldName = 'DateChangePrice'
    end
    object quHistoriPriceVidName: TStringField
      DisplayLabel = #1041#1088#1077#1085#1076
      DisplayWidth = 20
      FieldName = 'VidName'
      Size = 30
    end
    object quHistoriPricePrice: TFloatField
      DisplayLabel = #1062#1077#1085#1072'1'
      FieldName = 'Price'
    end
    object quHistoriPricePrice1: TFloatField
      DisplayLabel = #1062#1077#1085#1072'2'
      FieldName = 'Price1'
    end
    object quHistoriPricePrice2: TFloatField
      DisplayLabel = #1062#1077#1085#1072'3'
      FieldName = 'Price2'
    end
    object quHistoriPricePrice3: TFloatField
      DisplayLabel = #1062#1077#1085#1072'4'
      FieldName = 'Price3'
    end
    object quHistoriPricePrice4: TFloatField
      DisplayLabel = #1062#1077#1085#1072'5'
      FieldName = 'Price4'
    end
    object quHistoriPricePrice5: TFloatField
      DisplayLabel = #1061#1072#1088#1090#1086#1088#1075
      FieldName = 'Price5'
    end
    object quHistoriPricePrice6: TFloatField
      DisplayLabel = #1056#1077#1075#1080#1086#1085'1'
      FieldName = 'Price6'
    end
    object quHistoriPricePrice7: TFloatField
      DisplayLabel = #1056#1077#1075#1080#1086#1085'2'
      FieldName = 'Price7'
    end
    object quHistoriPricePrice8: TFloatField
      DisplayLabel = #1060#1086#1079#1079#1080
      FieldName = 'Price8'
    end
    object quHistoriPricePrice9: TFloatField
      DisplayLabel = #1052#1086#1088#1086#1079#1086#1074#1099
      FieldName = 'Price9'
    end
    object quHistoriPricePrice10: TFloatField
      DisplayLabel = #1053#1086#1074#1072#1103'4'
      FieldName = 'Price10'
    end
    object quHistoriPricePrice13: TFloatField
      DisplayLabel = #1040#1058#1041
      FieldName = 'Price13'
    end
    object quHistoriPricePrice14: TFloatField
      DisplayLabel = #1053#1086#1074#1072#1103'2'
      FieldName = 'Price14'
    end
    object quHistoriPricePrice15: TFloatField
      DisplayLabel = #1053#1086#1074#1072#1103'3'
      FieldName = 'Price15'
    end
    object quHistoriPricePriceVeb: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1089#1072#1081#1090#1072
      FieldName = 'PriceVeb'
    end
    object quHistoriPricePriceInInst: TFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1074#1093'. '#1091#1089#1090#1085#1086#1074#1083'.'
      FieldName = 'PriceInInst'
    end
    object quHistoriPriceEdit_user: TStringField
      DisplayLabel = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      DisplayWidth = 20
      FieldName = 'Edit_user'
      Size = 50
    end
    object quHistoriPriceEdit_host_name: TStringField
      DisplayLabel = #1050#1086#1084#1087#1100#1102#1090#1077#1088
      DisplayWidth = 20
      FieldName = 'Edit_host_name'
      Size = 50
    end
    object quHistoriPriceAvgPriceIn: TFloatField
      FieldName = 'AvgPriceIn'
    end
    object quHistoriPriceLastPriceIn: TFloatField
      FieldName = 'LastPriceIn'
    end
  end
  object dsHistoriPrice: TMSDataSource
    DataSet = quHistoriPrice
    Left = 688
    Top = 152
  end
  object quListVidTovName: TMSQuery
    Connection = dmDataModule.DB
    SQL.Strings = (
      'select distinct hp.VidName'
      ' from HistoriPrice hp'
      'order by hp.VidName')
    Left = 577
    Top = 169
    object quListVidTovNameVidName: TStringField
      FieldName = 'VidName'
      Size = 30
    end
  end
  object dsListVidTovName: TMSDataSource
    DataSet = quListVidTovName
    Left = 505
    Top = 161
  end
  object sdExportExelHistoryChangePrice: TSaveDialog
    Left = 953
    Top = 9
  end
end
