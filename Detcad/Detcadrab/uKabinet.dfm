object Form11: TForm11
  Left = 361
  Top = 114
  Width = 654
  Height = 609
  Caption = 'Кабинет'
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
    Width = 646
    Height = 341
    Align = alClient
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 646
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbRefresh]
    Align = alTop
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 646
    Height = 341
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
        FieldName = 'Код'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Номер'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Описание'
        Visible = False
      end>
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 366
    Width = 646
    Height = 209
    Align = alBottom
    Caption = 'Свойства записи'
    TabOrder = 3
    object DBMemo1: TDBMemo
      Left = 2
      Top = 15
      Width = 642
      Height = 192
      Align = alClient
      DataField = 'Описание'
      DataSource = DataSource1
      TabOrder = 0
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
    TableName = 'Кабинет'
    Left = 352
    Top = 240
    object ADOTable1DSDesigner: TAutoIncField
      FieldName = 'Код'
      ReadOnly = True
    end
    object ADOTable1DSDesigner2: TWideStringField
      FieldName = 'Номер'
      Size = 255
    end
    object ADOTable1DSDesigner3: TMemoField
      FieldName = 'Описание'
      BlobType = ftMemo
    end
  end
end
