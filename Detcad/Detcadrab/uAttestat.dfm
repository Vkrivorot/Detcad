object Form9: TForm9
  Left = 570
  Top = 382
  Width = 469
  Height = 368
  Caption = 'Виды аттестации'
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
    Left = 0
    Top = 41
    Width = 461
    Height = 207
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
        FieldName = 'Код'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Название'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Описание'
        Visible = False
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 461
    Height = 41
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbRefresh]
    Align = alTop
    TabOrder = 1
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 248
    Width = 461
    Height = 86
    Align = alBottom
    Caption = 'Свойства записи'
    TabOrder = 2
    object DBMemo1: TDBMemo
      Left = 2
      Top = 15
      Width = 457
      Height = 69
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
    TableName = 'Аттестация'
    Left = 352
    Top = 248
    object ADOTable1DSDesigner: TAutoIncField
      FieldName = 'Код'
      ReadOnly = True
    end
    object ADOTable1DSDesigner2: TWideStringField
      FieldName = 'Название'
      Size = 255
    end
    object ADOTable1DSDesigner3: TMemoField
      FieldName = 'Описание'
      BlobType = ftMemo
    end
  end
end
