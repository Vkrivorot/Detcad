object Form8: TForm8
  Left = 562
  Top = 366
  Width = 641
  Height = 543
  Caption = #1042#1080#1076' '#1088#1072#1079#1074#1080#1074#1072#1102#1097#1080#1093' '#1079#1072#1085#1103#1090#1080#1081
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 0
    Top = 41
    Width = 633
    Height = 23
    Align = alTop
    Caption = #1050#1072#1078#1076#1099#1081' '#1074#1080#1076' '#1079#1072#1085#1103#1090#1080#1103' '#1084#1086#1078#1085#1086' '#1074#1099#1076#1077#1083#1080#1090#1100' '#1086#1090#1076#1077#1083#1100#1085#1099#1084' '#1094#1074#1077#1090#1086#1084', '#1076#1083#1103' '#1091#1076#1086#1073#1089#1090#1074#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 64
    Width = 633
    Height = 271
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
        FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
        Visible = False
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 633
    Height = 41
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbRefresh]
    Align = alTop
    TabOrder = 1
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 335
    Width = 633
    Height = 164
    Align = alBottom
    Caption = #1057#1074#1086#1081#1089#1090#1074#1072' '#1079#1072#1087#1080#1089#1080
    TabOrder = 2
    object DBMemo1: TDBMemo
      Left = 2
      Top = 15
      Width = 629
      Height = 49
      Align = alClient
      DataField = #1054#1087#1080#1089#1072#1085#1080#1077
      DataSource = DataSource1
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 64
      Width = 629
      Height = 98
      Align = alBottom
      Caption = #1042#1099#1073#1086#1088' '#1094#1074#1077#1090#1072' '
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 16
        Top = 24
        Width = 417
        Height = 49
        Caption = #1042#1099#1073#1088#1072#1090#1100' '#1094#1074#1077#1090' '#1076#1083#1103' '#1079#1072#1087#1080#1089#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn1Click
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000CFD4D300000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000005B72774C6469B6C2C400000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000040616C44728043717F355763B3C0C200000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00677D857AA1B02E6D8539758C3D6C7C4A636BB1BABA00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005E85
          907FABB96BA5B7488FA736819A34788B4076853B6975ACB6B600000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000657E8578A8
          B37BB1BF66A8B9539EB24895AA438A9C4783923D75815B777AA6B0B300000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000074939B87BBC26CAE
          BC63AAB85EAAB960AEBD58A8B7519CAC498E9F367C8E3F757E586F7AB4B6BD00
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000007990998EBDC691D4DB84CB
          DA6FBBC962B1BD5AAAB75AA9B661ABBA5FA5B8549AAF3B8597477A8B52737D9F
          B1B5000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000809BA199C5CD93CFD781C7D088D1
          DE87CEDA87CED77CC5CE74BBC56DB4C262A9BB5AA2B8509DB43D8EA144828D61
          7A819F9EA2000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000009CACB297BBC1B1E1E8B0E8F0A9E4EC8CD0
          DA91D4DE94D7E290D2DD87CAD679BECC6EB3C56DB2C55EA6BC58A4B4619BA455
          696E766F72CAC6C7000000000000000000000000000000000000000000000000
          000000000000000000000000A7B6B8A5BBC0BBD6DDAACFD8A5D3DAB4E6EEB3F0
          F6AAE9F09EE0E996DBE594D8E489CFDD7EC5D273BBC973B6C471A3AC5570766A
          6F6E65625D74746E000000000000000000000000000000000000000000000000
          000000000000000000A7B9BAA3BDC0D0E6ECD6E6EED8EBF4CEF0F7B1E3E8B4F0
          F3B3F2F7ADEEF7A2E6F293DCE98DD7E48DD6E282CAD676B6BC5B797D766E6F74
          6B626E73645B6355A9AAA5000000000000000000000000000000000000000000
          000000000000A7C2C7B5CACFB5C4CAB9C4CACAD7DDD5E9ECD3F1F3D1F5F6CBF8
          FAC0ECF1BCF1FAA7F0F897E9F098E4EB98D7DE89C5CB6B7977777F7C74757175
          726E6E6D696E6D696F706E000000000000000000000000000000000000000000
          000000B8C4C9D0E9EDDEF7FBE4FDFFE4FBFFDDF4F8D2E9EDD4EDEFDEF7F9CEF4
          F7CEFAFDC7F9FFB6EEF6B0F1F7A4EBEEA3D3D77D8F96939A998B8A898883807B
          7C7972736F6F6C68646261000000000000000000000000000000000000000000
          C0D1D2CCE0E2DFF7FADCF9FCD3F5F7D1F4F7D7F9FBDEFBFEE7FBFFE9F7FDDDFD
          FFD3F4F8CDF4F9C4F5FAC2F5F8BBDFE29BA8AAA49EA1ACA5A69F9C9B9494908A
          878381807C6D716C666B69000000000000000000000000000000000000000000
          CAD9DAB8CACAB2C5C9AFC5C9B6D2D5CDECEDDBF9FCE0F9FDE7FAFEEBF9FEE4F8
          FDE0F9FDD5F8FACFF8F8BEDADA9FA3A4C0B9B9C5C5C0C6B7B8B0B2B1959E9994
          918C918D896D7771949D9B000000000000000000000000000000000000000000
          000000000000000000000000D1DDDFBBCACCAFC0C4BED0D4D8ECEFE2F6F9F0FA
          FFE2FBFDDDF9F9C5D4D5AEB0B0CED2CED2D6D1CFD2CACCC5C5BDBEBBB3B8B4A5
          A7A28B8883847F7CD9D8D5000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000D6DFE2BFCED1AABEC0BAD1
          D2E1EEF0C4C6CAB9B7B7DFE2E0DBE3DED6DED8D1D5CECAD1CED9D5D2C6C3BF99
          9D978A807C8F6D6DD4BBBB000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000B5CE
          CEBBBBBFD7CACDF0ECEDE2E9E7E4E9E5E2E2DEE8E7E4DDE2E0DDDCD9B1A9A59A
          8A88AC8A8A945A5F946569D9C3C5000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00D9DDDFCDCCCEE9E3E4EEEDECEDF1F0F7F6F5F6E9EBE3DEDBA6AFAA9E9E99D4
          B0AFCF9395B67D82925E63986166CACACA000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000D1D2D0D4D5D3ECEDEBF0F1F0DEDFDEBFB8B9AC9C9EF7DBDEF6
          CED1E2AEB2CC9395B17677A36766916564D5C4C2000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000C7C8C6BBBBBAB8B9B7E3DEDFE9DEE0D4BEC0FD
          DCDEFACED1E3B2B3CE9797B27778A26769A28181D6D2D0000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000000CD
          B6B6FDDEDEF7CECEE0AFB0CE9497BB767C936367D7C9CA000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000D9C5C5F9DADAF8CED1E4B2B6C5888EA98083F3E6E7000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000D4BFBFFBDCDEF4CBCEC09A9DD2BCBF000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000C6B2B4BA9DA1D6C8C9000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 72
        Width = 20
        Height = 21
        DataField = #1062#1074#1077#1090
        DataSource = DataSource1
        TabOrder = 1
        Visible = False
      end
      object Panel1: TPanel
        Left = 446
        Top = 15
        Width = 181
        Height = 81
        Align = alRight
        TabOrder = 2
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 179
          Height = 13
          Align = alTop
          Caption = #1062#1074#1077#1090
        end
        object Image1: TImage
          Left = 1
          Top = 14
          Width = 179
          Height = 66
          Align = alClient
          Transparent = True
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    OnDataChange = DataSource1DataChange
    Left = 416
    Top = 248
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = #1042#1080#1076' '#1079#1072#1085#1103#1090#1080#1103
    Left = 352
    Top = 248
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
    object ADOTable1DSDesigner4: TWideStringField
      FieldName = #1062#1074#1077#1090
      Size = 255
    end
  end
  object ColorDialog1: TColorDialog
    Left = 140
    Top = 248
  end
end