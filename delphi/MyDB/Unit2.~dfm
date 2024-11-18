object Form2: TForm2
  Left = 559
  Top = 280
  Width = 1305
  Height = 675
  Caption = #1044#1077#1090#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 544
    Top = 16
    Width = 21
    Height = 13
    Caption = 'POL'
  end
  object Label1: TLabel
    Left = 168
    Top = 16
    Width = 17
    Height = 13
    Caption = 'FIO'
  end
  object Label2: TLabel
    Left = 360
    Top = 16
    Width = 44
    Height = 13
    Caption = 'Data_rog'
  end
  object DBGrid1: TDBGrid
    Left = 176
    Top = 120
    Width = 857
    Height = 281
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_detcad'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_rog'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FIO'
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'POL'
        Width = 303
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 248
    Top = 448
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 208
    Top = 16
    Width = 121
    Height = 21
    DataField = 'FIO'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 408
    Top = 16
    Width = 121
    Height = 21
    DataField = 'Data_rog'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 592
    Top = 16
    Width = 121
    Height = 21
    DataField = 'POL'
    DataSource = DataSource1
    TabOrder = 4
  end
  object MySQLDatabase1: TMySQLDatabase
    Connected = True
    DatabaseName = 'bh35910_kis'
    UserName = 'bh35910_student1711'
    UserPassword = 'pgu2023pgu2023'
    Host = '91.219.194.4'
    ConnectOptions = []
    ConnectionCharacterSet = 'utf8'
    Params.Strings = (
      'Port=3306'
      'TIMEOUT=30'
      'DatabaseName=bh35910_kis'
      'UID=bh35910_student1711'
      'PWD=pgu2023pgu2023'
      'Host=91.219.194.4')
    DatasetOptions = []
    Left = 224
    Top = 72
  end
  object MySQLTable1: TMySQLTable
    Database = MySQLDatabase1
    Active = True
    TableName = 'Krivorot_Detcad'
    Left = 304
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = MySQLTable1
    Left = 384
    Top = 72
  end
end
