inherited fmCachedUpdates: TfmCachedUpdates
  Width = 662
  Height = 570
  OnCreate = IWAppFormCreate
  DesignLeft = 255
  DesignTop = 81
  inherited IWRectangle: TIWRectangle
    Width = 625
  end
  inherited lbPageName: TIWLabel
    Left = 522
    Width = 113
    Caption = 'CachedUpdates'
  end
  object IWDBNavigator1: TIWDBNavigator [7]
    Left = 16
    Top = 312
    Width = 230
    Height = 30
    ShowHint = True
    ParentShowHint = False
    ZIndex = 0
    Confirmations.Delete = 'Are you sure you want to delete this record?'
    Confirmations.Post = 'Are you sure you want to update this record?'
    Confirmations.Cancel = 'Are you sure you want to cancel your changes to this record?'
    DataSource = DataSource
    ImageHeight = 21
    ImageWidth = 21
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    Orientation = orHorizontal
  end
  object IWDBGrid1: TIWDBGrid [8]
    Left = 16
    Top = 344
    Width = 621
    Height = 135
    Anchors = [akLeft, akTop, akRight]
    ShowHint = True
    ParentShowHint = False
    ZIndex = 0
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clSkyBlue
    BorderSize = 1
    BorderStyle = tfDefault
    CellPadding = 0
    CellSpacing = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.FontName = 'Verdana'
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlAll
    UseFrame = True
    UseWidth = True
    Columns = <>
    DataSource = DataSource
    FooterRowCount = 0
    FromStart = True
    HighlightColor = clNone
    HighlightRows = False
    Options = [dgShowTitles]
    RefreshMode = rmAutomatic
    RowLimit = 0
    RollOver = False
    RowClick = False
    RollOverColor = clNone
    RowHeaderColor = 12876667
    RowAlternateColor = clNone
    RowCurrentColor = clMoneyGreen
  end
  inherited rgConnection: TIWRegion
    Width = 620
    inherited IWRectangle4: TIWRectangle
      Width = 618
    end
  end
  object IWRegion4: TIWRegion
    Left = 16
    Top = 128
    Width = 620
    Height = 177
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    Color = clBlack
    DesignSize = (
      620
      177)
    object IWRectangle3: TIWRectangle
      Left = 1
      Top = 1
      Width = 618
      Height = 175
      Anchors = [akLeft, akTop, akRight, akBottom]
      ShowHint = True
      ParentShowHint = False
      ZIndex = -1
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      Color = 14811135
      Alignment = taLeftJustify
      VAlign = vaMiddle
    end
    object cbCachedUpdates: TIWCheckBox
      Left = 8
      Top = 8
      Width = 137
      Height = 21
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Caption = 'CachedUpdates'
      Editable = True
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      ScriptEvents = <>
      DoSubmitValidation = True
      Style = stNormal
      TabOrder = 2
      Checked = False
    end
    object IWLabel1: TIWLabel
      Left = 8
      Top = 111
      Width = 30
      Height = 16
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'SQL'
      RawText = False
    end
    object btOpen: TIWButton
      Left = 8
      Top = 30
      Width = 97
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Open'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      ScriptEvents = <>
      TabOrder = 7
      OnClick = btOpenClick
    end
    object btClose: TIWButton
      Left = 112
      Top = 31
      Width = 97
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Close'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      ScriptEvents = <>
      TabOrder = 8
      OnClick = btCloseClick
    end
    object cbUnmodified: TIWCheckBox
      Left = 265
      Top = 9
      Width = 98
      Height = 21
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Caption = 'Unmodified'
      Editable = True
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      DoSubmitValidation = True
      OnClick = cbModifiedClick
      Style = stNormal
      TabOrder = 3
      Checked = False
    end
    object cbModified: TIWCheckBox
      Left = 361
      Top = 9
      Width = 82
      Height = 21
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Caption = 'Modified'
      Editable = True
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      DoSubmitValidation = True
      OnClick = cbModifiedClick
      Style = stNormal
      TabOrder = 4
      Checked = False
    end
    object cbInserted: TIWCheckBox
      Left = 441
      Top = 9
      Width = 82
      Height = 21
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Caption = 'Inserted'
      Editable = True
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      DoSubmitValidation = True
      OnClick = cbModifiedClick
      Style = stNormal
      TabOrder = 5
      Checked = False
    end
    object cbDeleted: TIWCheckBox
      Left = 521
      Top = 9
      Width = 74
      Height = 21
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Caption = 'Deleted'
      Editable = True
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      DoSubmitValidation = True
      OnClick = cbModifiedClick
      Style = stNormal
      TabOrder = 6
      Checked = False
    end
    object IWLabel2: TIWLabel
      Left = 162
      Top = 10
      Width = 107
      Height = 16
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'RecordTypes:'
      RawText = False
    end
    object lbResult: TIWLabel
      Left = 226
      Top = 34
      Width = 63
      Height = 16
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'lbResult'
      RawText = False
    end
    object lbUpdates: TIWLabel
      Left = 177
      Top = 60
      Width = 80
      Height = 16
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Font.Color = 6956042
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'lbUpdates'
      RawText = False
    end
    object btApply: TIWButton
      Left = 8
      Top = 80
      Width = 75
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Apply'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      TabOrder = 9
      OnClick = btApplyClick
    end
    object btCommit: TIWButton
      Left = 88
      Top = 80
      Width = 75
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Commit'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      TabOrder = 10
      OnClick = btCommitClick
    end
    object btCancel: TIWButton
      Left = 168
      Top = 80
      Width = 75
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Cancel'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      TabOrder = 11
      OnClick = btCancelClick
    end
    object btRevert: TIWButton
      Left = 248
      Top = 80
      Width = 75
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Revert'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      TabOrder = 12
      OnClick = btRevertClick
    end
    object btTransStart: TIWButton
      Left = 352
      Top = 80
      Width = 75
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Start'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      TabOrder = 13
      OnClick = btTransStartClick
    end
    object btTransCommit: TIWButton
      Left = 432
      Top = 80
      Width = 75
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Commit'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      TabOrder = 14
      OnClick = btTransCommitClick
    end
    object btTransRollback: TIWButton
      Left = 512
      Top = 80
      Width = 75
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Rollback'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      TabOrder = 15
      OnClick = btTransRollbackClick
    end
    object IWLabel4: TIWLabel
      Left = 16
      Top = 60
      Width = 66
      Height = 16
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'Updates'
      RawText = False
    end
    object IWLabel6: TIWLabel
      Left = 368
      Top = 60
      Width = 93
      Height = 16
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'Transaction'
      RawText = False
    end
    object lbTransaction: TIWLabel
      Left = 472
      Top = 60
      Width = 107
      Height = 16
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Font.Color = 6956042
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'lbTransaction'
      RawText = False
    end
    object IWRegion1: TIWRegion
      Left = 48
      Top = 112
      Width = 562
      Height = 49
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Color = clNone
      object meSQL: TIWMemo
        Left = 0
        Top = 0
        Width = 562
        Height = 49
        Align = alClient
        ShowHint = True
        ParentShowHint = False
        ZIndex = 0
        Editable = True
        Font.Color = clNone
        Font.Enabled = True
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        RawText = False
        ReadOnly = False
        Required = False
        TabOrder = 16
        WantReturns = False
        FriendlyName = 'meSQL'
      end
    end
  end
  object rgEdits: TIWRegion
    Left = 16
    Top = 485
    Width = 621
    Height = 62
    Visible = False
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    Color = clBlack
    DesignSize = (
      621
      62)
    object rcEdits: TIWRectangle
      Left = 1
      Top = 1
      Width = 619
      Height = 60
      Anchors = [akLeft, akTop, akRight, akBottom]
      ShowHint = True
      ParentShowHint = False
      ZIndex = -1
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      Color = 14811135
      Alignment = taLeftJustify
      VAlign = vaMiddle
    end
  end
  object Query: TMSQuery
    Left = 432
    Top = 264
  end
  object DataSource: TDataSource
    DataSet = Query
    Left = 456
    Top = 264
  end
end
  Width = 662
  Height = 570
  OnCreate = IWAppFormCreate
  DesignLeft = 255
  DesignTop = 81
  inherited IWRectangle: TIWRectangle
    Width = 625
  end
  inherited lbPageName: TIWLabel
    Left = 522
    Width = 113
    Caption = 'CachedUpdates'
  end
  object IWDBNavigator1: TIWDBNavigator [7]
    Left = 16
    Top = 312
    Width = 230
    Height = 30
    ShowHint = True
    ParentShowHint = False
    ZIndex = 0
    Confirmations.Delete = 'Are you sure you want to delete this record?'
    Confirmations.Post = 'Are you sure you want to update this record?'
    Confirmations.Cancel = 'Are you sure you want to cancel your changes to this record?'
    DataSource = DataSource
    ImageHeight = 21
    ImageWidth = 21
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    Orientation = orHorizontal
  end
  object IWDBGrid1: TIWDBGrid [8]
    Left = 16
    Top = 344
    Width = 621
    Height = 135
    Anchors = [akLeft, akTop, akRight]
    ShowHint = True
    ParentShowHint = False
    ZIndex = 0
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clSkyBlue
    BorderSize = 1
    BorderStyle = tfDefault
    CellPadding = 0
    CellSpacing = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.FontName = 'Verdana'
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlAll
    UseFrame = True
    UseWidth = True
    Columns = <>
    DataSource = DataSource
    FooterRowCount = 0
    FromStart = True
    HighlightColor = clNone
    HighlightRows = False
    Options = [dgShowTitles]
    RefreshMode = rmAutomatic
    RowLimit = 0
    RollOver = False
    RowClick = False
    RollOverColor = clNone
    RowHeaderColor = 12876667
    RowAlternateColor = clNone
    RowCurrentColor = clMoneyGreen
  end
  inherited rgConnection: TIWRegion
    Width = 620
    inherited IWRectangle4: TIWRectangle
      Width = 618
    end
  end
  object IWRegion4: TIWRegion
    Left = 16
    Top = 128
    Width = 620
    Height = 177
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    Color = clBlack
    DesignSize = (
      620
      177)
    object IWRectangle3: TIWRectangle
      Left = 1
      Top = 1
      Width = 618
      Height = 175
      Anchors = [akLeft, akTop, akRight, akBottom]
      ShowHint = True
      ParentShowHint = False
      ZIndex = -1
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      Color = 14811135
      Alignment = taLeftJustify
      VAlign = vaMiddle
    end
    object cbCachedUpdates: TIWCheckBox
      Left = 8
      Top = 8
      Width = 137
      Height = 21
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Caption = 'CachedUpdates'
      Editable = True
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      ScriptEvents = <>
      DoSubmitValidation = True
      Style = stNormal
      TabOrder = 2
      Checked = False
    end
    object IWLabel1: TIWLabel
      Left = 8
      Top = 111
      Width = 30
      Height = 16
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'SQL'
      RawText = False
    end
    object btOpen: TIWButton
      Left = 8
      Top = 30
      Width = 97
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Open'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      ScriptEvents = <>
      TabOrder = 7
      OnClick = btOpenClick
    end
    object btClose: TIWButton
      Left = 112
      Top = 31
      Width = 97
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Close'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      ScriptEvents = <>
      TabOrder = 8
      OnClick = btCloseClick
    end
    object cbUnmodified: TIWCheckBox
      Left = 265
      Top = 9
      Width = 98
      Height = 21
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Caption = 'Unmodified'
      Editable = True
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      DoSubmitValidation = True
      OnClick = cbModifiedClick
      Style = stNormal
      TabOrder = 3
      Checked = False
    end
    object cbModified: TIWCheckBox
      Left = 361
      Top = 9
      Width = 82
      Height = 21
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Caption = 'Modified'
      Editable = True
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      DoSubmitValidation = True
      OnClick = cbModifiedClick
      Style = stNormal
      TabOrder = 4
      Checked = False
    end
    object cbInserted: TIWCheckBox
      Left = 441
      Top = 9
      Width = 82
      Height = 21
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Caption = 'Inserted'
      Editable = True
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      DoSubmitValidation = True
      OnClick = cbModifiedClick
      Style = stNormal
      TabOrder = 5
      Checked = False
    end
    object cbDeleted: TIWCheckBox
      Left = 521
      Top = 9
      Width = 74
      Height = 21
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Caption = 'Deleted'
      Editable = True
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      DoSubmitValidation = True
      OnClick = cbModifiedClick
      Style = stNormal
      TabOrder = 6
      Checked = False
    end
    object IWLabel2: TIWLabel
      Left = 162
      Top = 10
      Width = 107
      Height = 16
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'RecordTypes:'
      RawText = False
    end
    object lbResult: TIWLabel
      Left = 226
      Top = 34
      Width = 63
      Height = 16
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'lbResult'
      RawText = False
    end
    object lbUpdates: TIWLabel
      Left = 177
      Top = 60
      Width = 80
      Height = 16
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Font.Color = 6956042
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'lbUpdates'
      RawText = False
    end
    object btApply: TIWButton
      Left = 8
      Top = 80
      Width = 75
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Apply'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      TabOrder = 9
      OnClick = btApplyClick
    end
    object btCommit: TIWButton
      Left = 88
      Top = 80
      Width = 75
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Commit'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      TabOrder = 10
      OnClick = btCommitClick
    end
    object btCancel: TIWButton
      Left = 168
      Top = 80
      Width = 75
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Cancel'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      TabOrder = 11
      OnClick = btCancelClick
    end
    object btRevert: TIWButton
      Left = 248
      Top = 80
      Width = 75
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Revert'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      TabOrder = 12
      OnClick = btRevertClick
    end
    object btTransStart: TIWButton
      Left = 352
      Top = 80
      Width = 75
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Start'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      TabOrder = 13
      OnClick = btTransStartClick
    end
    object btTransCommit: TIWButton
      Left = 432
      Top = 80
      Width = 75
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Commit'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      TabOrder = 14
      OnClick = btTransCommitClick
    end
    object btTransRollback: TIWButton
      Left = 512
      Top = 80
      Width = 75
      Height = 25
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      ButtonType = btButton
      Caption = 'Rollback'
      Color = clBtnFace
      DoSubmitValidation = True
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      ScriptEvents = <>
      TabOrder = 15
      OnClick = btTransRollbackClick
    end
    object IWLabel4: TIWLabel
      Left = 16
      Top = 60
      Width = 66
      Height = 16
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'Updates'
      RawText = False
    end
    object IWLabel6: TIWLabel
      Left = 368
      Top = 60
      Width = 93
      Height = 16
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Font.Color = clNone
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'Transaction'
      RawText = False
    end
    object lbTransaction: TIWLabel
      Left = 472
      Top = 60
      Width = 107
      Height = 16
      ShowHint = True
      ParentShowHint = False
      ZIndex = 0
      Font.Color = 6956042
      Font.Enabled = True
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      Caption = 'lbTransaction'
      RawText = False
    end
    object IWRegion1: TIWRegion
      Left = 48
      Top = 112
      Width = 562
      Height = 49
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Color = clNone
      object meSQL: TIWMemo
        Left = 0
        Top = 0
        Width = 562
        Height = 49
        Align = alClient
        ShowHint = True
        ParentShowHint = False
        ZIndex = 0
        Editable = True
        Font.Color = clNone
        Font.Enabled = True
        Font.Size = 10
        Font.Style = []
        ScriptEvents = <>
        RawText = False
        ReadOnly = False
        Required = False
        TabOrder = 16
        WantReturns = False
        FriendlyName = 'meSQL'
      end
    end
  end
  object rgEdits: TIWRegion
    Left = 16
    Top = 485
    Width = 621
    Height = 62
    Visible = False
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    Color = clBlack
    DesignSize = (
      621
      62)
    object rcEdits: TIWRectangle
      Left = 1
      Top = 1
      Width = 619
      Height = 60
      Anchors = [akLeft, akTop, akRight, akBottom]
      ShowHint = True
      ParentShowHint = False
      ZIndex = -1
      Font.Color = clNone
      Font.Enabled = True
      Font.Size = 10
      Font.Style = []
      Color = 14811135
      Alignment = taLeftJustify
      VAlign = vaMiddle
    end
  end
  object Query: TMSQuery
    Left = 432
    Top = 264
  end
  object DataSource: TDataSource
    DataSet = Query
    Left = 456
    Top = 264
  end
end
