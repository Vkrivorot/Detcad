object Form13: TForm13
  Left = 629
  Top = 359
  Width = 1069
  Height = 622
  Caption = #1059#1089#1087#1077#1074#1072#1077#1084#1086#1089#1090#1100
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
    Top = 0
    Width = 1053
    Height = 583
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1046#1091#1088#1085#1072#1083' '#1075#1088#1091#1087#1087#1099
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 1045
        Height = 73
        Align = alTop
        Caption = #1043#1088#1091#1087#1087#1072
        TabOrder = 0
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 40
          Top = 30
          Width = 281
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          KeyField = #1050#1086#1076
          ListField = #1053#1072#1079#1074#1072#1085#1080#1077
          ListSource = Form6.DataSource1
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 73
        Width = 1045
        Height = 66
        Align = alTop
        Caption = #1047#1072' '#1087#1077#1088#1080#1086#1076
        TabOrder = 1
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
        object nd: TDateTimePicker
          Left = 40
          Top = 24
          Width = 145
          Height = 31
          Date = 44023.708741851850000000
          Time = 44023.708741851850000000
          TabOrder = 0
        end
        object kd: TDateTimePicker
          Left = 264
          Top = 24
          Width = 122
          Height = 31
          Date = 45849.708764641200000000
          Time = 45849.708764641200000000
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 139
        Width = 1045
        Height = 73
        Align = alTop
        TabOrder = 2
        object Button1: TButton
          Left = 24
          Top = 16
          Width = 400
          Height = 50
          Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 448
          Top = 15
          Width = 400
          Height = 50
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button2Click
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 212
        Width = 1045
        Height = 333
        Align = alClient
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Times New Roman'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1044#1072#1090#1072
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1060#1048#1054
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1041#1072#1083#1083
            Width = 200
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1044#1085#1077#1074#1085#1080#1082' '#1074#1086#1089#1087#1080#1090#1072#1085#1085#1080#1082#1072
      ImageIndex = 1
      object GroupBox4: TGroupBox
        Left = 0
        Top = 73
        Width = 1045
        Height = 66
        Align = alTop
        Caption = #1047#1072' '#1087#1077#1088#1080#1086#1076
        TabOrder = 0
        object Label2: TLabel
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
        object Label3: TLabel
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
        object nd1: TDateTimePicker
          Left = 40
          Top = 24
          Width = 145
          Height = 31
          Date = 44023.708741851850000000
          Time = 44023.708741851850000000
          TabOrder = 0
        end
        object kd1: TDateTimePicker
          Left = 264
          Top = 24
          Width = 122
          Height = 31
          Date = 45849.708764641200000000
          Time = 45849.708764641200000000
          TabOrder = 1
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 0
        Width = 1045
        Height = 73
        Align = alTop
        Caption = #1042#1086#1089#1087#1080#1090#1072#1085#1085#1080#1082
        TabOrder = 1
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 40
          Top = 30
          Width = 281
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          KeyField = #1050#1086#1076
          ListField = #1060#1048#1054
          ListSource = Form4.DataSource1
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 139
        Width = 1045
        Height = 73
        Align = alTop
        TabOrder = 2
        object Button3: TButton
          Left = 24
          Top = 16
          Width = 400
          Height = 50
          Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 464
          Top = 15
          Width = 400
          Height = 50
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button4Click
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 212
        Width = 1045
        Height = 333
        Align = alClient
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Times New Roman'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1044#1072#1090#1072
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1072#1073#1080#1085#1077#1090
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1042#1080#1076'_'#1079#1072#1085#1103#1090#1080#1103
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1041#1072#1083#1083
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1042#1086#1089#1087#1080#1090#1072#1090#1077#1083#1100
            Width = 200
            Visible = True
          end>
      end
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 272
    Top = 376
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'kl'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'nd'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'kd'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT '#1047#1072#1085#1103#1090#1080#1077'.'#1044#1072#1090#1072', ['#1042#1080#1076' '#1079#1072#1085#1103#1090#1080#1103'].'#1053#1072#1079#1074#1072#1085#1080#1077', '#1042#1086#1089#1087#1080#1090#1072#1085#1085#1080#1082'.'#1060#1048#1054', '#1054#1094 +
        #1077#1085#1082#1072'.'#1041#1072#1083#1083
      
        'FROM '#1042#1086#1089#1087#1080#1090#1072#1085#1085#1080#1082' INNER JOIN (['#1042#1080#1076' '#1079#1072#1085#1103#1090#1080#1103'] INNER JOIN ('#1047#1072#1085#1103#1090#1080#1077' I' +
        'NNER JOIN '#1054#1094#1077#1085#1082#1072' ON '#1047#1072#1085#1103#1090#1080#1077'.'#1050#1086#1076' = '#1054#1094#1077#1085#1082#1072'.'#1047#1072#1085#1103#1090#1080#1077') ON ['#1042#1080#1076' '#1079#1072#1085#1103#1090#1080 +
        #1103'].'#1050#1086#1076' = '#1047#1072#1085#1103#1090#1080#1077'.['#1042#1080#1076' '#1079#1072#1085#1103#1090#1080#1103']) ON '#1042#1086#1089#1087#1080#1090#1072#1085#1085#1080#1082'.'#1050#1086#1076' = '#1054#1094#1077#1085#1082#1072'.'#1042#1086#1089#1087 +
        #1080#1090#1072#1085#1085#1080#1082
      
        'WHERE ((('#1047#1072#1085#1103#1090#1080#1077'.'#1043#1088#1091#1087#1087#1072')= :kl) AND (('#1047#1072#1085#1103#1090#1080#1077'.'#1044#1072#1090#1072')> :nd  And ('#1047#1072 +
        #1085#1103#1090#1080#1077'.'#1044#1072#1090#1072')< :kd))'
      'ORDER BY '#1047#1072#1085#1103#1090#1080#1077'.'#1044#1072#1090#1072', ['#1042#1080#1076' '#1079#1072#1085#1103#1090#1080#1103'].'#1053#1072#1079#1074#1072#1085#1080#1077
      'WITH OWNERACCESS OPTION;')
    Left = 168
    Top = 384
    object ADOQuery1DSDesigner: TDateTimeField
      FieldName = #1044#1072#1090#1072
    end
    object ADOQuery1DSDesigner2: TWideStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
      Size = 255
    end
    object ADOQuery1DSDesigner3: TWideStringField
      FieldName = #1060#1048#1054
      Size = 255
    end
    object ADOQuery1DSDesigner6: TIntegerField
      FieldName = #1041#1072#1083#1083
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Left = 552
    Top = 336
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'kl'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'nd'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'kd'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT '#1047#1072#1085#1103#1090#1080#1077'.'#1044#1072#1090#1072', '#1050#1072#1073#1080#1085#1077#1090'.'#1053#1086#1084#1077#1088' AS '#1050#1072#1073#1080#1085#1077#1090', ['#1042#1080#1076' '#1079#1072#1085#1103#1090#1080#1103'].'#1053#1072#1079 +
        #1074#1072#1085#1080#1077' AS '#1042#1080#1076'_'#1079#1072#1085#1103#1090#1080#1103', '#1054#1094#1077#1085#1082#1072'.'#1041#1072#1083#1083', '#1042#1086#1089#1087#1080#1090#1072#1090#1077#1083#1100'.'#1060#1048#1054' AS '#1042#1086#1089#1087#1080#1090#1072#1090#1077#1083 +
        #1100
      
        'FROM '#1050#1072#1073#1080#1085#1077#1090' INNER JOIN ('#1042#1086#1089#1087#1080#1090#1072#1090#1077#1083#1100' INNER JOIN (['#1042#1080#1076' '#1079#1072#1085#1103#1090#1080#1103'] I' +
        'NNER JOIN ('#1047#1072#1085#1103#1090#1080#1077' INNER JOIN '#1054#1094#1077#1085#1082#1072' ON '#1047#1072#1085#1103#1090#1080#1077'.'#1050#1086#1076' = '#1054#1094#1077#1085#1082#1072'.'#1047#1072#1085 +
        #1103#1090#1080#1077') ON ['#1042#1080#1076' '#1079#1072#1085#1103#1090#1080#1103'].'#1050#1086#1076' = '#1047#1072#1085#1103#1090#1080#1077'.['#1042#1080#1076' '#1079#1072#1085#1103#1090#1080#1103']) ON '#1042#1086#1089#1087#1080#1090#1072#1090#1077 +
        #1083#1100'.'#1050#1086#1076' = '#1047#1072#1085#1103#1090#1080#1077'.'#1042#1086#1089#1087#1080#1090#1072#1090#1077#1083#1100') ON '#1050#1072#1073#1080#1085#1077#1090'.'#1050#1086#1076' = '#1047#1072#1085#1103#1090#1080#1077'.'#1050#1072#1073#1080#1085#1077#1090
      
        'WHERE  ((('#1054#1094#1077#1085#1082#1072'.'#1042#1086#1089#1087#1080#1090#1072#1085#1085#1080#1082')= :kl)  AND (('#1047#1072#1085#1103#1090#1080#1077'.'#1044#1072#1090#1072')> :nd  A' +
        'nd ('#1047#1072#1085#1103#1090#1080#1077'.'#1044#1072#1090#1072')< :kd))'
      'ORDER BY '#1047#1072#1085#1103#1090#1080#1077'.'#1044#1072#1090#1072', ['#1042#1080#1076' '#1079#1072#1085#1103#1090#1080#1103'].'#1053#1072#1079#1074#1072#1085#1080#1077
      'WITH OWNERACCESS OPTION;')
    Left = 448
    Top = 344
    object ADOQuery2DSDesigner: TDateTimeField
      FieldName = #1044#1072#1090#1072
    end
    object ADOQuery2DSDesigner2: TWideStringField
      FieldName = #1050#1072#1073#1080#1085#1077#1090
      Size = 255
    end
    object ADOQuery2_: TWideStringField
      FieldName = #1042#1080#1076'_'#1079#1072#1085#1103#1090#1080#1103
      Size = 255
    end
    object ADOQuery2DSDesigner3: TIntegerField
      FieldName = #1041#1072#1083#1083
    end
    object ADOQuery2DSDesigner4: TWideStringField
      FieldName = #1042#1086#1089#1087#1080#1090#1072#1090#1077#1083#1100
      Size = 255
    end
  end
end
