object Form4: TForm4
  Left = 552
  Top = 216
  Width = 1011
  Height = 668
  Caption = #1042#1086#1089#1087#1080#1090#1072#1085#1085#1080#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 161
    Top = 41
    Width = 842
    Height = 463
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1060#1048#1054
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1055#1086#1083
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1056#1086#1076#1080#1090#1077#1083#1080
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1040#1076#1088#1077#1089' '#1084#1077#1089#1090#1072' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1058#1077#1083#1077#1092#1086#1085#1099' '#1088#1086#1076#1089#1090#1074#1077#1085#1085#1080#1082#1086#1074
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1042#1086#1089#1087#1080#1090#1099#1074#1072#1077#1090#1089#1103' '#1074' '#1085#1072#1089#1090#1086#1103#1097#1077#1077' '#1074#1088#1077#1084#1103
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1060#1086#1090#1086
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1043#1088#1091#1087#1087#1072
        Visible = False
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 1003
    Height = 41
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbRefresh]
    Align = alTop
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 504
    Width = 1003
    Height = 120
    Align = alBottom
    Caption = #1043#1088#1091#1087#1087#1072
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 78
      Height = 23
      Caption = #1042' '#1075#1088#1091#1087#1087#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 280
      Top = 24
      Width = 145
      Height = 21
      DataField = #1043#1088#1091#1087#1087#1072
      DataSource = DataSource1
      KeyField = #1050#1086#1076
      ListField = #1053#1072#1079#1074#1072#1085#1080#1077
      ListSource = Form6.DataSource1
      TabOrder = 0
    end
    object Button1: TButton
      Left = 464
      Top = 24
      Width = 75
      Height = 25
      Caption = '...'
      TabOrder = 1
      OnClick = Button1Click
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 72
      Width = 609
      Height = 25
      Caption = #1055#1054#1048#1057#1050' '#1055#1054' '#1042#1067#1041#1056#1040#1053#1053#1054#1052#1059' '#1055#1054#1051#1070
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 41
    Width = 161
    Height = 463
    Align = alLeft
    Caption = #1060#1086#1090#1086
    TabOrder = 3
    object Label2: TLabel
      Left = 16
      Top = 248
      Width = 20
      Height = 13
      Caption = #1055#1086#1083
    end
    object DBImage1: TDBImage
      Left = 8
      Top = 40
      Width = 145
      Height = 129
      DataField = #1060#1086#1090#1086
      DataSource = DataSource1
      Stretch = True
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 8
      Top = 184
      Width = 75
      Height = 25
      Caption = #1079#1072#1075#1088#1091#1079#1080#1090#1100
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 208
      Width = 75
      Height = 25
      Caption = #1074#1099#1075#1088#1091#1079#1080#1090#1100
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object DBCheckBox1: TDBCheckBox
      Left = 16
      Top = 304
      Width = 129
      Height = 65
      Caption = #1042#1086#1089#1087#1080#1090#1099#1074#1072#1077#1090#1089#1103' '#1074' '#1085#1072#1089#1090#1086#1103#1097#1077#1077' '#1074#1088#1077#1084#1103
      DataField = #1042#1086#1089#1087#1080#1090#1099#1074#1072#1077#1090#1089#1103' '#1074' '#1085#1072#1089#1090#1086#1103#1097#1077#1077' '#1074#1088#1077#1084#1103
      DataSource = DataSource1
      TabOrder = 3
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      WordWrap = True
    end
    object DBComboBox1: TDBComboBox
      Left = 16
      Top = 268
      Width = 100
      Height = 21
      DataField = #1055#1086#1083
      DataSource = DataSource1
      ItemHeight = 13
      Items.Strings = (
        #1084
        #1078)
      TabOrder = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 416
    Top = 248
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = #1042#1086#1089#1087#1080#1090#1072#1085#1085#1080#1082
    Left = 352
    Top = 248
    object ADOTable1DSDesigner: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOTable1DSDesigner2: TWideStringField
      FieldName = #1060#1048#1054
      Size = 255
    end
    object ADOTable1DSDesigner3: TWideStringField
      FieldName = #1055#1086#1083
      Size = 255
    end
    object ADOTable1DSDesigner4: TWideStringField
      FieldName = #1056#1086#1076#1080#1090#1077#1083#1080
      Size = 255
    end
    object ADOTable1DSDesigner5: TWideStringField
      FieldName = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      Size = 255
    end
    object ADOTable1DSDesigner6: TWideStringField
      FieldName = #1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103
      Size = 255
    end
    object ADOTable1DSDesigner7: TWideStringField
      FieldName = #1040#1076#1088#1077#1089' '#1084#1077#1089#1090#1072' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072
      Size = 255
    end
    object ADOTable1DSDesigner8: TWideStringField
      FieldName = #1058#1077#1083#1077#1092#1086#1085#1099' '#1088#1086#1076#1089#1090#1074#1077#1085#1085#1080#1082#1086#1074
      Size = 255
    end
    object ADOTable1DSDesigner9: TBooleanField
      FieldName = #1042#1086#1089#1087#1080#1090#1099#1074#1072#1077#1090#1089#1103' '#1074' '#1085#1072#1089#1090#1086#1103#1097#1077#1077' '#1074#1088#1077#1084#1103
    end
    object ADOTable1DSDesigner10: TBlobField
      FieldName = #1060#1086#1090#1086
    end
    object ADOTable1DSDesigner11: TIntegerField
      FieldName = #1043#1088#1091#1087#1087#1072
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 96
    Top = 257
  end
  object SavePictureDialog1: TSavePictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 104
    Top = 225
  end
end
