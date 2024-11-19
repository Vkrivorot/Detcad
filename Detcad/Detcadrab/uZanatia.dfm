object Form12: TForm12
  Left = 687
  Top = 269
  Width = 685
  Height = 723
  Caption = #1047#1072#1085#1103#1090#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 132
    Width = 232
    Height = 552
    Align = alClient
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 66
    Width = 669
    Height = 66
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbRefresh]
    Align = alTop
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 132
    Width = 232
    Height = 552
    Align = alClient
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1043#1088#1091#1087#1087#1072
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1050#1072#1073#1080#1085#1077#1090
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1044#1072#1090#1072
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1042#1080#1076' '#1079#1072#1085#1103#1090#1080#1103
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1042#1086#1089#1087#1080#1090#1072#1090#1077#1083#1100
        Visible = False
      end>
  end
  object Panel1: TPanel
    Left = 232
    Top = 132
    Width = 437
    Height = 552
    Align = alRight
    TabOrder = 3
    object Label1: TLabel
      Left = 24
      Top = 152
      Width = 61
      Height = 23
      Caption = #1043#1088#1091#1087#1087#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 72
      Width = 37
      Height = 21
      Caption = #1044#1072#1090#1072
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 200
      Width = 74
      Height = 23
      Caption = #1050#1072#1073#1080#1085#1077#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 0
      Top = 248
      Width = 109
      Height = 23
      Caption = #1042#1080#1076' '#1079#1072#1085#1103#1090#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 0
      Top = 296
      Width = 112
      Height = 23
      Caption = #1042#1086#1089#1087#1080#1090#1072#1090#1077#1083#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 264
      Top = 144
      Width = 75
      Height = 25
      Caption = '...'
      TabOrder = 0
      OnClick = Button1Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 112
      Top = 144
      Width = 145
      Height = 27
      DataField = #1043#1088#1091#1087#1087#1072
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      KeyField = #1050#1086#1076
      ListField = #1053#1072#1079#1074#1072#1085#1080#1077
      ListSource = Form6.DataSource1
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 96
      Width = 321
      Height = 27
      DataField = #1044#1072#1090#1072
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 112
      Top = 192
      Width = 145
      Height = 27
      DataField = #1050#1072#1073#1080#1085#1077#1090
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      KeyField = #1050#1086#1076
      ListField = #1053#1086#1084#1077#1088
      ListSource = Form11.DataSource1
      ParentFont = False
      TabOrder = 3
    end
    object Button2: TButton
      Left = 264
      Top = 192
      Width = 75
      Height = 25
      Caption = '...'
      TabOrder = 4
      OnClick = Button2Click
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 112
      Top = 248
      Width = 145
      Height = 27
      DataField = #1042#1080#1076' '#1079#1072#1085#1103#1090#1080#1103
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      KeyField = #1050#1086#1076
      ListField = #1053#1072#1079#1074#1072#1085#1080#1077
      ListSource = Form8.DataSource1
      ParentFont = False
      TabOrder = 5
    end
    object Button3: TButton
      Left = 264
      Top = 248
      Width = 75
      Height = 25
      Caption = '...'
      TabOrder = 6
      OnClick = Button3Click
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 112
      Top = 296
      Width = 145
      Height = 27
      DataField = #1042#1086#1089#1087#1080#1090#1072#1090#1077#1083#1100
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      KeyField = #1050#1086#1076
      ListField = #1060#1048#1054
      ListSource = Form3.DataSource1
      ParentFont = False
      TabOrder = 7
    end
    object Button4: TButton
      Left = 264
      Top = 296
      Width = 75
      Height = 25
      Caption = '...'
      TabOrder = 8
      OnClick = Button4Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 0
    Width = 669
    Height = 66
    Align = alTop
    Caption = #1060#1080#1083#1100#1090#1088#1072#1094#1080#1103
    TabOrder = 4
    object Label6: TLabel
      Left = 8
      Top = 24
      Width = 14
      Height = 23
      Caption = #1057
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 216
      Top = 24
      Width = 30
      Height = 23
      Caption = #1055#1054
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object CheckBox1: TCheckBox
      Left = 400
      Top = 24
      Width = 97
      Height = 17
      Caption = #1060#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 40
      Top = 24
      Width = 145
      Height = 21
      Date = 40370.708741851850000000
      Time = 40370.708741851850000000
      TabOrder = 1
    end
    object DateTimePicker2: TDateTimePicker
      Left = 264
      Top = 24
      Width = 122
      Height = 21
      Date = 41466.708764641200000000
      Time = 41466.708764641200000000
      TabOrder = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 424
    Top = 248
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = #1047#1072#1085#1103#1090#1080#1077
    Left = 360
    Top = 240
    object ADOTable1DSDesigner: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOTable1DSDesigner2: TIntegerField
      FieldName = #1043#1088#1091#1087#1087#1072
    end
    object ADOTable1DSDesigner3: TIntegerField
      FieldName = #1050#1072#1073#1080#1085#1077#1090
    end
    object ADOTable1DSDesigner4: TDateTimeField
      FieldName = #1044#1072#1090#1072
    end
    object ADOTable1DSDesigner5: TIntegerField
      FieldName = #1042#1080#1076' '#1079#1072#1085#1103#1090#1080#1103
    end
    object ADOTable1DSDesigner6: TIntegerField
      FieldName = #1042#1086#1089#1087#1080#1090#1072#1090#1077#1083#1100
    end
  end
end
