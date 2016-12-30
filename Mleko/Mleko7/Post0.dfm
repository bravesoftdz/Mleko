inherited fmPost: TfmPost
  Left = 573
  Top = 237
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1087#1072#1088#1090#1085#1077#1088#1086#1074
  ClientHeight = 407
  ClientWidth = 779
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid: TcitDBGrid [0]
    Left = 0
    Top = 55
    Width = 779
    Height = 322
    MarkDisabled = False
    MarkColor = clAqua
    MarkFont.Charset = DEFAULT_CHARSET
    MarkFont.Color = clNavy
    MarkFont.Height = -11
    MarkFont.Name = 'MS Sans Serif'
    MarkFont.Style = []
    LightedFont.Charset = DEFAULT_CHARSET
    LightedFont.Color = clMaroon
    LightedFont.Height = -11
    LightedFont.Name = 'MS Sans Serif'
    LightedFont.Style = []
    LightedColor = clWindow
    DisabledFont.Charset = DEFAULT_CHARSET
    DisabledFont.Color = clSilver
    DisabledFont.Height = -11
    DisabledFont.Name = 'MS Sans Serif'
    DisabledFont.Style = []
    DisabledColor = clWindow
    OnIsLighted = DBGridIsLighted
    MultiPress = False
    EnableTitlePress = False
    MarkShortCut = 115
    SaveOnClose = True
    TitleHeight = 17
    TitleColor = clBtnFace
    Align = alClient
    DataSource = dsPost
    Options = [dgTitles, dgColLines, dgRowLines, dgAlwaysShowSelection, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridDblClick
    OnKeyDown = DBGridKeyDown
    OnKeyPress = DBGridKeyPress
    OnTitleClick = DBGridTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Name'
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 221
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NameLong'
        Title.Alignment = taCenter
        Title.Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 258
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TrashName'
        Title.Caption = #1057#1090#1072#1090#1091#1089
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PostNo'
        Title.Alignment = taCenter
        Title.Caption = #8470
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Expire_Date'
        Visible = True
      end>
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 377
    Width = 779
    Height = 30
    Align = alBottom
    TabOrder = 1
    object bbOk: TBitBtn
      Left = 389
      Top = 3
      Width = 76
      Height = 25
      Caption = #1054#1050
      TabOrder = 0
      Kind = bkOK
    end
    object bbCancel: TBitBtn
      Left = 469
      Top = 3
      Width = 76
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 0
    Width = 779
    Height = 55
    Align = alTop
    TabOrder = 2
    object sbInsert: TSpeedButton
      Left = 4
      Top = 0
      Width = 25
      Height = 25
      Hint = #1053#1086#1074#1099#1081'  '#1087#1072#1088#1090#1085#1077#1088
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000000000000000000000010000000000008C5C5C009464
        5C00946464009C6C6400A4746C00AC746C00AC7C6C00A4747400A47C7400AC7C
        7400B47C7400EC942400FCAC3C00AC847C00B4847C00BC8C7C00CC946400DCA4
        7C00FCC47C00C4948400CC9C8400FC9C9C00CCA48400D4A48400DCAC8400D4A4
        8C00DCAC8C00DCB48C00E4B48C00ECB48C00ECBC9400F4BC9400FCACAC00FCBC
        B400FCBCBC00ECCC9C00F4C49400ECCCA400FCD4A400FCD4AC00FCCCB400FCDC
        B400FCD4BC00FCDCBC00C0C0C000D4CCC400D4CCCC00DCCCCC00DCD4CC00FCCC
        C400E4D4CC00FCD4C400F4D4CC00FCD4CC00FCDCCC00E4DCD400ECDCD400FCE4
        C400FCE4CC00ECE4D400F4E4D400FCECD400F4E4DC00F4ECDC00FCECDC00F4EC
        E400FCECE400FCF4E400F4F4EC00FCF4EC00FCF4F400FCFCF400FCFCFC000000
        0000000000000000000000000000000000000000000000000000000000005813
        8C00000000006499F8000000A700D021A7000000000034138C008806A700E813
        8C009181F900A099F800FFFFFF00F8138C0082C8FC007813A700D821A7000000
        0000D3C7FC000000000000000000000000000000000000000000000000000000
        0000000000000100000006001000D821A700580040002355F900FC138C000000
        00005DAC3B00D4138C0080118C000000000000ECFD00020000000000A7004500
        000000000A00481CF900B40000000100000006C53A0068138C00010101000016
        8C009181F9005096F800FFFFFF0074148C001AC53A0074148C0045C53A00B700
        000002000000F0158C0001000000180000000000000058148C00420000000000
        00003C148C000000000000000000000000000C0000000200000001018C000815
        F90000ECFD000000000003000000BC001A00D821A7007FFFFF0000000000D821
        A70005000000E5733A0098148C000F583B001001000000000000000000000000
        0000020000000000000000000000D8158C00AFD44A0028618C00000000000000
        0000CC158C000200000080000000000000004002000060168C003C38E100433A
        5C006F637500656E740020616E002053650074696E00735CC000ECE8ED00F1F2
        F000F2EEF000CCEEE800E4EEEA00ECE5ED00FB5CCC00E820EF00EEE5EA00FB5C
        4D00656B6F004D6C65006F4D530044365C0065772E006D70000000008C004815
        8C006253E100C362E20000008C00000000000700000000000000010000000015
        8C0007000000C362E200F8EBFD0000000000A80D9E00380000004AD0F8000000
        8C000700000000158C009181F9004096F80001FFFF00BC158C000C158C000101
        0100D4158C009181F9005096F800FFFFFF00E4158C00E7D3480000008C000000
        0000A80D9E00000000002C168C003C38E10028000000B83CF400010000005D11
        00000C000000000000000100000017000000D604460028618C002C2C2C2C2C2C
        2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C0707070707070707070707
        070707070707002C2C2C2C2C2C073436363635333333332A2A2A2A282828002C
        2C2C2C2C2C073C3D3A3A3A39392B2929292727262628002C2C2C2C2C2C083E3D
        3D3A3A3A39392B29292927272628002C2C2C2C2C2C093E403D3D3A3A3A39392B
        29292927272A002C2C2C2C2C2C093F40403D3D3A3A3A39392B292929272A002C
        2C2C2C2C2C0D414340403D3D3A3A3A39392B2929292A012C2C2C2C2C2C0E4143
        4340403D3D3A3A3A39392B29292A012C2C2C2C2C2C0F4445434340403D3D3A3A
        3A39392B2933022C2C2C2C2C2C0F444545434340403D3D3A3A3A39392B33032C
        2C2C2C2C2C1346474545434340403D3D3A3A3A393933032C2C2C2C2C2C144848
        47474545434340403D3D3A3A3A35042C2C2C2C2C2C1648484847474545434340
        403D3D3A3A33052C2C2C2C2C2C174848484847474545434340403D3D3A31062C
        2C2C2C2C2C1A48484848484747454543434040353121092C2C2C2C2C2C1A4848
        48484848474745454343352220150A2C2C2C2C2C2C1C48484848484848474745
        450A0A0A0A0A0A2C2C2C2C2C2C1C48484848484848484747450A1D0C0B10142C
        2C2C2C2C2C1E48484848484848484847470A231211142D2C2C2C2C2C2C1E4848
        4848484848484848470A251B192D2C2C2C2C2C2C2C1F43423F3F3E3B38383732
        300A1A1A2E2C2C2C2C2C2C2C2C2418181818181818181818180A182F2C2C2C2C
        2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C}
      ParentShowHint = False
      ShowHint = True
      OnClick = bbInsertClick
    end
    object SpeedButton2: TSpeedButton
      Left = 29
      Top = 0
      Width = 25
      Height = 25
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1072#1088#1090#1085#1077#1088#1072
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        0800000000004002000000000000000000000001000000000000000000008C5C
        5C0094645C00946464009C6C6400A4746C00AC746C00AC7C6C00A4747400A47C
        7400AC7C7400B47C7400EC942400FCAC3C00AC847C00B4847C00BC8C7C00CC94
        6400DCA47C00FCC47C0000FFFF00C4948400CC9C8400FC9C9C00CCA48400D4A4
        8400DCAC8400D4A48C00DCAC8C00DCB48C00E4B48C00ECB48C00ECBC9400F4BC
        9400FCACAC00FCBCB400FCBCBC00ECCC9C00F4C49400ECCCA400FCD4A400FCD4
        AC00FCCCB400FCDCB400FCD4BC00FCDCBC00C0C0C000D4CCC400D4CCCC00DCCC
        CC00FCCCC400FCD4C400F4D4CC00FCD4CC00FCDCCC00FCE4C400FCE4CC00F4E4
        D400FCECD400F4E4DC00F4ECDC00FCECDC00F4ECE400FCECE400FCF4E400F4F4
        EC00FCF4EC00FCF4F400FCFCFC00FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000005813
        8C00000000006499F8000000A700D021A7000000000034138C008806A700E813
        8C009181F900A099F800FFFFFF00F8138C0082C8FC007813A700D821A7000000
        0000D3C7FC000000000000000000000000000000000000000000000000000000
        00000000000001000000B600B800D821A700580040002355F900FC138C000000
        00005DAC3B00D4138C0080118C000000000000ECFD00020000000000A7004500
        000000000A00481CF900B60000000100000006C53A0068138C00010101000016
        8C009181F9005096F800FFFFFF0074148C001AC53A0074148C0045C53A00B700
        000002000000F0158C0001000000180000000000000058148C00420000000000
        00003C148C000000000000000000000000000C0000000200000001018C000815
        F90000ECFD000000000003000000BE001A00D821A7007FFFFF0000000000D821
        A70005000000E5733A0098148C000F583B00B001000000000000000000000000
        0000020000000000000000000000D8158C00AFD44A00A8658C00000000000000
        0000CC158C000200000080000000000000004002000060168C003C38E100433A
        5C006F637500656E740020616E002053650074696E00735CC000ECE8ED00F1F2
        F000F2EEF000CCEEE800E4EEEA00ECE5ED00FB5CCC00E820EF00EEE5EA00FB5C
        4D00656B6F004D6C65006F4D530044365C0064697400626D700000008C004815
        8C006253E100C362E20000008C00000000000700000000000000010000000015
        8C0007000000C362E200F8EBFD0000000000B0539C00380000004AD0F8000000
        8C000700000000158C009181F9004096F80001FFFF00BC158C000C158C000101
        0100D4158C009181F9005096F800FFFFFF00E4158C00E7D3480000008C000000
        0000B0539C00000000002C168C003C38E10028000000B83CF40001000000CA11
        00000C000000000000000100000017000000D6044600A8658C002E2E2E2E2E2E
        2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E0808080808080808080808
        080808080808012E2E2E2E2E2E083436363635333333332C2C2C2C2A2A2A012E
        2E2E2E2E2E08393A38383837372D2B2B2B292928282A012E2E2E2E2E2E093B3A
        3A38383837372D2B2B2B2929282A012E2E2E2E2E2E0A3B3D3A3A38383837372D
        2B2B2B29292C012E2E2E2E2E2E0A3C3D3D3A3A38383837372D2B2B2B292C012E
        2E2E2E2E2E0E3E40453D3A3A38383837372D2B2B2B2C022E2E2E2E2E2E0F3E45
        00453D3A3A38383837372D2B2B2C022E2E2E2E2E2E1041450000453D3A3A3838
        3837372D2B33032E2E2E2E2E2E104145000000453D3A3A38383837372D33042E
        2E2E2E2E2E15434500000000453D3A3A383838373733042E2E2E2E2E2E164445
        0000140000453D3D3A3A38383835052E2E2E2E2E2E184445001414140045403D
        3D3A3A383833062E2E2E2E2E2E19444445001414000045403D3D3A3A3832072E
        2E2E2E2E2E1C44444500141414004540403D3D3532230A2E2E2E2E2E2E1C4444
        44450014140000454040352422170B2E2E2E2E2E2E1E44444445001414140045
        420B0B0B0B0B0B2E2E2E2E2E2E1E44444444450014000000450B1F0D0C11162E
        2E2E2E2E2E2044444444450000141400450B251312162F2E2E2E2E2E2E204444
        44444445001414140045271D1B2F2E2E2E2E2E2E2E21403F3C3C3B4500141414
        00451C1C302E2E2E2E2E2E2E2E261A1A1A1A1A1A45000000450B1A312E2E2E2E
        2E2E2E2E2E2E2E2E2E2E2E2E2E4545452E2E2E2E2E2E2E2E2E2E}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 54
      Top = 0
      Width = 26
      Height = 25
      Hint = #1059#1076#1072#1083#1080#1090#1100'  '#1087#1072#1088#1090#1085#1077#1088#1072
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000000000000000000000010000000000008C5C5C009464
        5C00946464009C6C6400A4746C00AC746C00AC7C6C00A4747400AC7C7400B47C
        7400B4847C00BC8C7C000C34CC00143CCC00042CD400042CDC000C34D4000C34
        DC00143CDC00042CE400042CEC000C34E4000434EC000C34EC000C3CEC000434
        F4000C3CF4000434FC000C3CFC002C4CCC002444D4002C4CD4002444DC003C5C
        D4001444F400244CE400244CEC002C54EC003C5CE4003C5CEC00445CCC004464
        CC005C74C4005474CC004464D4004C6CD4004464DC00546CDC005C74DC00647C
        D4004464E4007C8CC4007484CC007C8CCC007484D400C4948400CC9C8400FC9C
        9C00CCA48400D4A48400DCAC8400D4A48C00DCAC8C00DCB48C00FCBCB400ECCC
        9C00ECCCA400FCD4A400FCD4AC00FCCCB400FCDCB400FCD4BC00FCDCBC00848C
        CC008494C400949CC4009CA4C4009CA4CC00A4ACC400ACACC400ACB4C400ACB4
        CC00BCBCC400B4B4CC00BCBCCC00A4ACD400BCC4C400C0C0C000C4C4C400CCC4
        C400CCCCC400D4CCC400D4CCCC00DCCCCC00DCD4CC00FCCCC400E4D4CC00FCD4
        C400F4D4CC00FCD4CC00FCDCCC00E4DCD400ECDCD400FCE4C400FCE4CC00ECE4
        D400FCECD400F4E4DC00F4ECDC00F4F4EC00FCF4EC00FCF4F400FCFCF400FCFC
        FC005DAC3B00D4138C0080118C000000000000ECFD00020000000000A7004500
        000000000A00481CF900B40000000100000006C53A0068138C00010101000016
        8C009181F9005096F800FFFFFF0074148C001AC53A0074148C0045C53A00B700
        000002000000F0158C0001000000180000000000000058148C00420000000000
        00003C148C000000000000000000000000000C0000000200000001018C000815
        F90000ECFD000000000003000000BC001A00D821A7007FFFFF0000000000D821
        A70005000000E5733A0098148C000F583B00EC01000000000000000000000000
        0000020000000000000000000000D8158C00AFD44A0028618C00000000000000
        0000CC158C000200000080000000000000004002000060168C003C38E100433A
        5C006F637500656E740020616E002053650074696E00735CC000ECE8ED00F1F2
        F000F2EEF000CCEEE800E4EEEA00ECE5ED00FB5CCC00E820EF00EEE5EA00FB5C
        4D00656B6F004D6C65006F4D530044365C00656C2E006D70000000008C004815
        8C006253E100C362E20000008C00000000000700000000000000010000000015
        8C0007000000C362E200F8EBFD0000000000C09A9C00380000004AD0F8000000
        8C000700000000158C009181F9004096F80001FFFF00BC158C000C158C000101
        0100D4158C009181F9005096F800FFFFFF00E4158C00E7D3480000008C000000
        0000C09A9C00000000002C168C003C38E10028000000B83CF400010000009613
        00000C000000000000000100000017000000D604460028618C00575757575757
        5757575757575757575757575757575757575757570707070707070707070707
        0707070707070057575757575707626464646361616161474747474545454C1D
        2A575757534B516A6868686767484646464444434350100E0D5757540C0E0C50
        6A68686867674846464644444C100E105057574B0E0E0E10506A686868676748
        4646464A0F0F105057575758100E0E0E104E6A68686867674846330F0F105057
        57575757571E0F0F0F0F4B6A6868686767290F0F1150015757575757570A2B0F
        0F0F0F4B6A686868280F0F115047015757575757570B6D49111313134B6A681F
        131311504661025757575757570B6D6E4F121313134E20131315506748610357
        5757575757376F706E5921131313131315506867676103575757575757387171
        7070582C141414154B6A68686863045757575757573A7171715A351514141416
        2D5A6A686861055757575757573B71715A34161616172319192E5A6A685F0657
        57575757573E715A311616161850562E19192E5A5F40085757575757573E5A2E
        1919191850706E5A3619192E5A3909575757575757592E1919191A507170706E
        6E4D221B325A09575757575757241919191A5071717170706E0952251B275A57
        57575757241B1B1B1A507171717171707009415A301B55575757572F1B1B1B1A
        50717171717171717009423F3D5B5757575757321B1B1C506C6C6B6966666560
        5E093E3E5C575757575757552625503C3C3C3C3C3C3C3C3C3C093C5D57575757
        5757575757575757575757575757575757575757575757575757}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 80
      Top = 0
      Width = 25
      Height = 25
      Hint = #1055#1077#1095#1072#1090#1100
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000120B0000120B00000001000000000000E0580700E15B
        0C00E4661400E66B1B00E9722200EB7B2B00E3783500816E6E00936D6D009A6E
        6D008C7474008F7973008A797500857D7B00847D7C009C737200927D7800967F
        7F009D7F7F00A1707000A7767300A7767400A07C7100A57B7500A17B7B00AB7B
        7900B2797900EF863600EE863900F1873100F18C390084807E0096807A009C83
        7D00A7827C00A2877F00ED864100F3934400F49A4900E2875100EE945C00F8A1
        4F00F7A05100FAAB5300FAA85900FFB35300D8987D00F29E6100FDB36500F4B6
        6F00FBB26900FDBB6900EBA67E00F8AF7200FFBE7000FFC16700FEC479008A86
        85008F8989009384800090858200938682009C868600908A8900958C8A00948E
        8D009E8D88009B8F8F00929191009692910096969500999292009F9393009B94
        94009D9797009B9897009A9999009D9998009D9A99009E9B9A00A48D8600A18A
        8A00AA8F8800AB8F8E00BA858300B4898900B58C8C00BA8C8B00B1928900B195
        8E00BB908F00A29D9B00A19D9D00BB949300ACA9A800B0A2A200B5ADAC00B9AD
        AA00B4B2B200C68B8600C38B8A00CD978100C7918800C6968900C9918A00C49C
        9100C89E9200CB989600C5989800C69D9C00C0A19800C8A29900CBA59B00C8A1
        9F00D2A19C00F6BB9100C3ACA600C9AAA200C3AFAA00D1A3A100D9A6A200D2AC
        A700D9ADA200D0AFAF00DBADA900CEB0A800D8B0A600D2B3AB00D1B3AC00D1B4
        AC00DCB2AD00C4B5B100CBB6B600C2BAB800C6BABA00C6BCBA00CEBDB800D5B0
        B000D4B5B100D2B6B500D4B5B400DBBAB300DFBCB500D0BDB800DBBEBC00E2B2
        AE00E2B9B500E0BCB500E4BDBA00A6E69300FFCD8000FCC18A00FECD8900FFD5
        8C00FFDA9600FFD19E00FFE09E00CEC1BE00D8CBB500DDC0BA00D6DBB800F9C9
        A600FEDBA200F7D2AD00E0C0BA00E2C4BE00EAC0BC00F2C4BC00FDD7B200FCDC
        B300FDDEBF00C9E6B300FFE5AD00FFECB400FFF1BC00C0C0C000C4C2C100C9C3
        C100CEC4C200CFC7C400CECAC900D7C5C000DAC5C000DCC7C400D1C8C500D0CC
        CB00D9CBC900DBD4D200E5C3C100E6C4C200EBC5C100E4CAC400ECC8C400E6CE
        C900EDCFCA00F2C6C100F2CAC400FCCFC400F0CECA00E5D2CF00FFD3C700F3D1
        CC00FBD4CC00F5DACB00FFD9CF00E2D5D200EBD4D000EED7D300EBD6D500E4D8
        D500E9D9D500EDDAD600E2DCDA00E7DCDB00ECDCD900F3D6D100F8D6D000F5DA
        D300FDDCD400F1DFDD00F9DED900FBE2C000F2E4CE00FEEBCD00FFF3C400FFEA
        D200F2E1DD00FDE3DB00FBEADC00FFFBD100FFF7DC00FFF8DD00E7E2E100E8E2
        E100F1E2E200F4E5E300F3E4E400F4E6E600FCE6E000F4E9E700FEEAE400F0EB
        EB00F6E9E900F3EDEB00F2EDED00F4EEEC00F8ECEA00FEEEE800F9EEED00FEF1
        E500FFFAE100FEF2EC00F6F1F000FCF4F200FEF8F400FEFCFB00AFAFAFAFAFAF
        AF4CAFAFAFAFAF401F44AFAFAFAFAFAFAFAFAFAFAFAFAFAF470F0739AFAF4BD2
        8F4244AFAFAFAFAFAFAFAFAFAFAF47559FE3C47853B8FCFFFFFDC16E1046AFAF
        AFAFAFAFAFAF56BDFBE3DAA6D5FFFFFFFFFDF8F2BF0B1FAFAFAFAFAFAF43BCF7
        FBE3DAC2F4FFFFFFFFFDF6F2EC9F580CAFAFAF5F71C0F0F0E3BEC4D8BE8D90EF
        FDFDF6F2ECD6A459AFAFAF7BC4E3EEE3C4DCC4A6DADA9479BFEBF6F2EC7F21AF
        AFAFAF8AC9E3D8C4D8F7F0E3BEC4D7927277CEEACE143AAFAFAFAF8CC5C5CADA
        E3FBFBFBFBFBEEBEC0D77C6372193AAFAFAFAF8CA7C3CCCCF0FEFEFEFDFDFBF0
        D7A6DCD99E173AAFAFAFAF8CA6C5CCE3DFA9E1FBFEFEFEFEFDF0C0C0A0163AAF
        AFAFAF868CA6FAE5AE96363097AAF9FFFFFFFFFEF61345AFAFAFAFAFAF84DEE5
        E09A3830262535FBFFFFFFFFFF08AFAFAFAFAFAFAFAFB5FEE7AC9A382A251B2F
        A1E4FFFFFD0AAFAFAFAFAFAFAFAFF3FFFEF8E4DD96372B04020028CB6CAFAFAF
        AFAFAFAFAF5EFFFFFEF8F6EDA998371D0301346B12AFAFAFAFAFAFAFAF60FFFF
        FEF8F6EDE2D9A3260627573EAFAFAFAFAFAFAFAF5CE8FFFFFEF8F6EDEAEC815C
        AFAFAFAFAFAFAFAFAFAFAFAFB2FCFFFFFEF8F6EDEADB52AFAFAFAFAFAFAFAFAF
        AFAFAF62E9FFFFFFFEF8F6EDEAA53BAFAFAFAFAFAFAFAFAFAFAFAFB4D4F1FFFF
        FEF8F6EDBF20AFAFAFAFAFAFAFAFAFAFAFAFAFAFB0B1D6F8FFF8F6ED7540AFAF
        AFAFAFAFAFAFAFAFAFAFAFAFAFAF8788B6EBF6F250AFAFAFAFAFAFAFAFAFAFAF
        AFAFAFAFAFAFAFAFAFAF74704EAFAFAFAFAFAFAFAFAFAFAFAFAF}
      ParentShowHint = False
      ShowHint = True
      OnClick = bbPrintClick
    end
    object SpeedButton1: TSpeedButton
      Left = 105
      Top = 1
      Width = 25
      Height = 25
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000F4F4F313BB9F8D1EF1F1F01200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C37E552A00000000000000000000
        0000E4B49621A4290096BD2F00D0C53E00FFAD4918FF7C3005D58350327ADFD7
        D205000000000000000000000000000000000000000000000000000000000000
        00000000000000000000F7F0EB09AB3D00B8782C00C800000000000000000000
        000000000000000000000000000000000000FBA87B35FFA875C1D59C74FF6711
        00F2A58774320000000000000000000000000000000000000000000000000000
        000000000000D6A98D1CAC3B00D3BD4400FF7D2500FAD0C2B913000000000000
        0000000000000000000000000000000000000000000000000000FFA269A0E591
        65FF6C1500F5C9B9AE2E00000000000000000000000000000000000000000000
        0000DAB29932A83000F1BE4600FFBC4600FE983500FF946C535A000000000000
        0000000000000000000000000000000000000000000000000000FDE3D707FF91
        5AE6BF4C11FF671A00E2EAE6E30900000000000000000000000000000000B35C
        2563AF3600FFBE4800FFC14800FFBD4700FDA93D00FF79360CB5000000000000
        000000000000000000000000000000000000000000000000000000000000F797
        646DEF7641FF9B3500FF8756387C000000000000000000000000B55D268FB53E
        00FFC54A02FEC94C00FFC44A00FFC24900FDB04100FF7D2600F1E0D9D40C0000
        000000000000000000000000000000000000000000000000000000000000F7CB
        AE0FF1672CFFBA4704FF6A1700E3000000000000000000000000D34100FDDF4E
        01FFDC5811FECD4D01FDC24900FDC44A00FFCC4F0CFE912D00FFA989754B0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000EA550ADECA4F0CFF8B2B00FFC1AEA21D000000000000000000000000F5DE
        CF04DB4B00F1C94C01FFB74400FFD24900E9FF9769FCD56B3AFF71310BA40000
        0000000000000000000000000000000000000000000000000000000000000000
        0000E14600ADD4530EFF9D3600FF9C745C62000000000000000000000000FDF5
        F00BDD4B00EEC84C02FFA43900FFB782604CFFD2BC1CFF874A96A43B08EC0000
        000000000000000000000000000000000000FCF5F40A00000000000000000000
        0000EC915B9AD14C02FFA83C00FF8F553397000000000000000000000000FCF3
        ED06DF4E01E3C84C03FF942D00FEE2D7D1280000000000000000FFDBC618D8C5
        BD0B00000000000000000000000000000000F493625978330DC784583C6AC5BC
        B60ACD540BB1CE4C00FFAF4000FF88441ABF0000000000000000000000000000
        0000E34D00D2CB4E07FF902C00FCDED2CA240000000000000000000000000000
        00000000000000000000000000000000000000000000FD7E42F0AD4308FF7F26
        00FFAE4100FFC64B00FDB24300FE893000F1771F00B57F2100CC000000000000
        0000EF7F45B2D1510EFF902C00FFD7C9C1300000000000000000000000000000
        00000000000000000000000000000000000000000000FA9E6E74F3814FFFBE45
        00FFBF4800FDC04800FFB24300FFB04200FEB94400FFAE3700C0000000000000
        0000F07B3C7AE4642AFF9A3300FF9C7157530000000000000000000000000000
        00000000000000000000000000000000000000000000F9C7AD0EFB8853F3D856
        15FEC54A00FEC04900FDBE4800FDC04600FFAA3500CBEFDDD205000000000000
        0000F8C1A21FFF9566FFB04001FF7436109A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000F88B568EEE7C
        4BFFC94900FDC04800FFBE4600FFAD3A00D2F0E0D70800000000000000000000
        000000000000FEA97BA8E98B5DFF6D1600F40000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FBD1BD1EFB8A
        57FCCF4F0AFEBD4600FFAE3700E1F0E0D70E0000000000000000000000000000
        000000000000FED9CB0EFFC79EE8B85B28FF7745258600000000000000000000
        000000000000000000000000000000000000000000000000000000000000FC96
        62ABDA642BFFAD3800EAEEDCD21B000000000000000000000000000000000000
        00000000000000000000FFB08F21FFC79CE4AB5B2CFF6D36148EDBD3CD080000
        000000000000000000000000000000000000000000000000000000000000FAA7
        7E2BC54D0AF5DBB49B1F00000000000000000000000000000000000000000000
        0000000000000000000000000000FDDDCF09FF9D6E8FE2652CF49A3906F4742C
        019EB6886D6ADF95684CECE0D901000000000000000000000000000000000000
        0000DCAB8F1F0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FDE2D20BF7A37041F190
        5664E68E5752EFD3C01500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object ftProp: TcitDBComboEdit
      Left = 63
      Top = 28
      Width = 167
      Height = 21
      Enabled = True
      OwnesLButton = True
      OwnesLLabel = True
      LBtnAlignment = baRight
      LBtnDown = False
      LBtnGroupIndex = 0
      LBtnAllowAllUp = False
      LBtnGlyphKind = gkDots
      LBtnShortCut1 = 115
      LBtnShortCut2 = 40
      LBtnWidth = 25
      LLblAlignment = laLeft
      LLblCaption = #1057#1074#1086#1081#1089#1090#1074#1072
      LLblWidth = 55
      LLblFont.Charset = DEFAULT_CHARSET
      LLblFont.Color = clWindowText
      LLblFont.Height = -11
      LLblFont.Name = 'MS Sans Serif'
      LLblFont.Style = []
      LLblRequiredFont.Charset = DEFAULT_CHARSET
      LLblRequiredFont.Color = clWindowText
      LLblRequiredFont.Height = -11
      LLblRequiredFont.Name = 'MS Sans Serif'
      LLblRequiredFont.Style = [fsBold]
      Required = False
      TabOrder = 0
      Visible = True
      DataSet = quFirmProp
      LocateKey = False
      KeyField = 'ID'
      TextField = 'Name'
      EditStyle = edCombo
      AutoTabControl = False
    end
    object ftOurFirm: TcitDBComboEdit
      Left = 421
      Top = 29
      Width = 168
      Height = 21
      Enabled = True
      OwnesLButton = True
      OwnesLLabel = True
      LBtnAlignment = baRight
      LBtnDown = False
      LBtnGroupIndex = 0
      LBtnAllowAllUp = False
      LBtnGlyphKind = gkDots
      LBtnShortCut1 = 115
      LBtnShortCut2 = 40
      LBtnWidth = 25
      LLblAlignment = laLeft
      LLblCaption = #1044#1086#1075#1086#1074#1086#1088#1072' '#1089' '#1085#1072#1096#1080#1084#1080' '#1092#1080#1088#1084#1072#1084#1080
      LLblWidth = 163
      LLblFont.Charset = DEFAULT_CHARSET
      LLblFont.Color = clWindowText
      LLblFont.Height = -11
      LLblFont.Name = 'MS Sans Serif'
      LLblFont.Style = []
      LLblRequiredFont.Charset = DEFAULT_CHARSET
      LLblRequiredFont.Color = clWindowText
      LLblRequiredFont.Height = -11
      LLblRequiredFont.Name = 'MS Sans Serif'
      LLblRequiredFont.Style = [fsBold]
      Required = False
      TabOrder = 1
      Visible = True
      DataSet = quOurFirm
      LocateKey = False
      KeyField = 'PostNo'
      TextField = 'Name'
      EditStyle = edCombo
      AutoTabControl = False
    end
    object ftTrash: TcitDBComboEdit
      Left = 197
      Top = 3
      Width = 168
      Height = 21
      Enabled = True
      OwnesLButton = True
      OwnesLLabel = True
      LBtnAlignment = baRight
      LBtnDown = False
      LBtnGroupIndex = 0
      LBtnAllowAllUp = False
      LBtnGlyphKind = gkDots
      LBtnShortCut1 = 115
      LBtnShortCut2 = 40
      LBtnWidth = 25
      LLblAlignment = laLeft
      LLblCaption = #1057#1090#1072#1090#1091#1089
      LLblWidth = 55
      LLblFont.Charset = DEFAULT_CHARSET
      LLblFont.Color = clWindowText
      LLblFont.Height = -11
      LLblFont.Name = 'MS Sans Serif'
      LLblFont.Style = []
      LLblRequiredFont.Charset = DEFAULT_CHARSET
      LLblRequiredFont.Color = clWindowText
      LLblRequiredFont.Height = -11
      LLblRequiredFont.Name = 'MS Sans Serif'
      LLblRequiredFont.Style = [fsBold]
      Required = False
      TabOrder = 2
      Visible = True
      DataSet = quFltTrash
      LocateKey = False
      KeyField = 'Trash'
      TextField = 'Name'
      EditStyle = edCombo
      AutoTabControl = False
    end
  end
  inherited ActionList: TActionList
    Left = 632
    Top = 16
  end
  object quFirmProp: TMSQuery
    Connection = dmDataModule.DB
    SQL.Strings = (
      'select * from d_firm_prop')
    Left = 495
    Top = 65
    object quFirmPropName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object quFirmPropID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
  end
  object quOurFirm: TMSQuery
    Connection = dmDataModule.DB
    SQL.Strings = (
      'select p.name,p.PostNo '
      'from Post p,d_our_firm o'
      'where p.PostNo=o.PostNo')
    Left = 168
    Top = 48
    object quOurFirmname: TStringField
      FieldName = 'name'
      Origin = 'Post.name'
      Size = 10
    end
    object quOurFirmPostNo: TSmallintField
      FieldName = 'PostNo'
    end
  end
  object quFltTrash: TMSQuery
    Connection = dmDataModule.DB
    SQL.Strings = (
      'select * from d_trash')
    Left = 400
    object StringField1: TStringField
      FieldName = 'name'
      Origin = 'Post.name'
      Size = 50
    end
    object quFltTrashtrash: TSmallintField
      FieldName = 'trash'
    end
  end
  object quTrash: TMSQuery
    Connection = dmDataModule.DB
    SQL.Strings = (
      'select * from d_trash')
    FetchRows = 1
    Left = 434
    Top = 186
  end
  object dsPost: TDataSource
    DataSet = MlekoDbDsMSSQLDm.quPost
    Left = 288
    Top = 184
  end
end
