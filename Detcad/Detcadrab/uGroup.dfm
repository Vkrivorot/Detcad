object Form6: TForm6
  Left = 610
  Top = 335
  Width = 764
  Height = 518
  Caption = #1043#1088#1091#1087#1087#1072#1099' '#1089#1072#1076#1080#1082#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 25
    Width = 756
    Height = 240
    Align = alClient
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 756
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbRefresh]
    Align = alTop
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 756
    Height = 240
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
        FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1043#1088#1091#1087#1087#1072#1085#1099#1081' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
        Visible = False
      end>
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 265
    Width = 756
    Height = 209
    Align = alBottom
    Caption = #1057#1074#1086#1081#1089#1090#1074#1072' '#1079#1072#1087#1080#1089#1080
    TabOrder = 3
    object DBMemo1: TDBMemo
      Left = 2
      Top = 15
      Width = 752
      Height = 127
      Align = alClient
      DataField = #1054#1087#1080#1089#1072#1085#1080#1077
      DataSource = DataSource1
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 2
      Top = 142
      Width = 752
      Height = 65
      Align = alBottom
      TabOrder = 1
      object Label1: TLabel
        Left = 128
        Top = 24
        Width = 123
        Height = 23
        Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Button1: TButton
        Left = 464
        Top = 24
        Width = 75
        Height = 25
        Caption = '...'
        TabOrder = 0
        OnClick = Button1Click
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 280
        Top = 24
        Width = 145
        Height = 21
        DataField = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
        DataSource = DataSource1
        KeyField = #1050#1086#1076
        ListField = #1060#1048#1054
        ListSource = Form3.DataSource1
        TabOrder = 1
      end
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
    TableName = #1043#1088#1091#1087#1087#1072
    Left = 352
    Top = 240
    object ADOTable1DSDesigner: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
    end
    object ADOTable1DSDesigner2: TWideStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
      Size = 255
    end
    object ADOTable1DSDesigner3: TMemoField
      FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
      BlobType = ftMemo
    end
    object ADOTable1DSDesigner4: TIntegerField
      FieldName = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
    end
  end
end
