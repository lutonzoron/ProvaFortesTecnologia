object FRM_LancAbastecimento: TFRM_LancAbastecimento
  Left = 0
  Top = 0
  Caption = 'Lan'#231'amento de Abastecimentos'
  ClientHeight = 186
  ClientWidth = 572
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 572
    Height = 186
    Align = alClient
    TabOrder = 0
    DesignSize = (
      572
      186)
    object SPB_Sair: TSpeedButton
      Left = 476
      Top = 136
      Width = 85
      Height = 27
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      Glyph.Data = {
        B6020000424DB602000000000000B60100002800000010000000100000000100
        08000000000000010000120B0000120B0000600000006000000000000000FFFF
        FF00FF00FF00FCD1D3004E1E1F00C54D4E00C9525300C24F5000D4585900C954
        5500CF575800CB555600D75C5D00D55C5D00D05A5B00CF595A00B74F5200B24D
        4E00B64F5000D55E5F00BD535600D75F6000DD636400C2575A00C6595B00E267
        6800DD656600DA636400E3686900DE666700EB6D6E00E96C6D00F2737400F073
        7400EE727300F7777900D1656600F0757600F6797A00F77A7B00FE7F8000FB7E
        7F00FF818200FC7F8000DA6E6F00FF828300FE818200FF838400E5767700E073
        7400E2757600FF868700FF888900CF6E7000CB6C6D00CC6E7000FE8B8C00EB81
        8200E67E7F009C565700FB9A9C00F8AAAB00F7B5B600FAD3D400A64B4B00A94D
        4D00F8787900D76B6B00CF6E6E00824B4B00FAEBC500FCEFC700FFF2CC00FCFB
        CF00FCFBD100FFFFD300FFFFD400FFFFD500FFFFD700E6FCC700A5D8970050D1
        6F0026B149002AB44D001BBB490023B54A002DC7580042C966000CBC410010BB
        430013C1480013BC450016BD480016BC48001CBF4C001EBC4C00020202020202
        0245040202020202020202020202454540410402020202020202020245451207
        05110445454545454502020245080B09061004383C3D3E3E45020202450C0E0F
        0A1404555A5C583E45020202451615130D1704535E5F5B3E45020202451C1A1B
        1D1804525D54593E45020202451E193A3F3704505157563E4502020245201F39
        033504484E4C4F3E4502020245422522212404474D4B4E3E4502020245282726
        234304474D4B4D3E45020202452F2B29282C04474D4B4D3E4502020245342D2A
        2D3104474D4B4D3E450202024545322E333004464A494A3E450202020202453B
        3644044545454545450202020202020245450402020202020202}
      OnClick = SPB_SairClick
    end
    object SPB_Cancelar: TSpeedButton
      Left = 101
      Top = 136
      Width = 85
      Height = 27
      Caption = 'Lim&par'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000FF00FF00043E
        9000003A990008479F000141A400094FAF00034BB4003D73B4000C5DCF00035B
        DE00045BDE000F6ADE001169DE00004FE0000052E0000055E0000058E100025C
        E2000662E2000565E5000D67E2000768E7000F6AE0000F6AE500096DE9001069
        E5000B70E9001674E7001176EA001577EA00137AEA001679EA00117AED00147B
        ED00167FEE001878E900287BE7005580B0005B89BC005E8CBF001A82EE001C81
        ED001E87EF001E89F0003584EA003688ED002996F4002A99F4003298F2003599
        F300369CF4003AA0F6004586CF004787D1006392C700599EEF00529EF4005CA0
        EF0041AFFC005EA3F0005DA5F20045B4FE005AB6F80066A7EF0070A9E60064A6
        F20070AFF40077B1F00073B0F40076B2F4007AB5F60076BDF9007FC5FA00809E
        BC0082BCF60088BCF30087C0F60089C4F70081C7FA008EC7F80096C7F7009ECA
        F8009ECFF800B5D0EE00A5DDFD00B7D3F000DED9D500CFDAE600C1DDFA00C4DD
        F900C6E1FA00C9E2FB00CAE5FB00CCE7FB00CBE6FC00CCE6FC00C5EDFF00D9E6
        F000EEEAE700F8F4EF00E3EEF700E6F2FD00E9F3FD00EAF5FE00EFF8FF00F6F4
        F600F8FAF600F8FBFF00F9FDFF00FEFEFF000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000001
        01010101010000000000000000060608343627070302010000000000060A4369
        6155535756250401000000060A516D37191111193963490401000006466D2411
        0F110F110F2D6A2701000B0C6D3711664B0F11595911416205010B3C651B1359
        6D4B596D4B0F146435010B4B5A1C181C5B6D6D4B110F115940010B4D5B282028
        5B6D6D4B0F110F5946010B4766312B5B6D505A6D4B0D196638010B316D482E68
        5120205B590D3F6D1401000B546D3E2F2B281A15112D6D420600000B3A606D4E
        312B2023396D510A060000000B3D546D665B5B656D420A0600000000000B0C33
        474F4C3C16060600000000000000000B0B0B0B0B0B0000000000}
      OnClick = SPB_CancelarClick
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 570
      Height = 120
      Align = alTop
      Caption = 'Lan'#231'amento de Abastecimentos'
      TabOrder = 0
      object Label1: TLabel
        Left = 9
        Top = 17
        Width = 93
        Height = 13
        Caption = 'Selecione a Bomba:'
      end
      object Label2: TLabel
        Left = 191
        Top = 17
        Width = 40
        Height = 13
        Caption = 'Tanque:'
      end
      object Label3: TLabel
        Left = 318
        Top = 17
        Width = 62
        Height = 13
        Caption = 'Combust'#237'vel:'
      end
      object Label4: TLabel
        Left = 445
        Top = 17
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor:'
      end
      object Label5: TLabel
        Left = 9
        Top = 65
        Width = 106
        Height = 13
        Caption = 'Quantidade em Litros:'
      end
      object Label6: TLabel
        Left = 190
        Top = 65
        Width = 55
        Height = 13
        Caption = 'Valor Total:'
      end
      object Label7: TLabel
        Left = 318
        Top = 65
        Width = 75
        Height = 13
        Caption = 'Total Impostos:'
      end
      object DBLC_Bomba: TDBLookupComboBox
        Left = 9
        Top = 36
        Width = 176
        Height = 21
        DataField = 'ID_BOMBA'
        DataSource = DTS_Abastecimento
        KeyField = 'CODIGO_ID'
        ListField = 'DESCRICAO'
        ListSource = DTS_Bomba
        TabOrder = 0
        OnKeyPress = DBLC_BombaKeyPress
      end
      object DBE_Tanque: TDBEdit
        Left = 191
        Top = 36
        Width = 121
        Height = 21
        DataField = 'DESCTANQUE'
        DataSource = DTS_Bomba
        Enabled = False
        TabOrder = 1
      end
      object DBE_Combustivel: TDBEdit
        Left = 318
        Top = 36
        Width = 121
        Height = 21
        DataField = 'DESCCOMBUSTIVEL'
        DataSource = DTS_Bomba
        Enabled = False
        TabOrder = 2
      end
      object DBE_Valor: TDBEdit
        Left = 445
        Top = 36
        Width = 115
        Height = 21
        BiDiMode = bdRightToLeft
        DataField = 'VALORCOMBUSTIVEL'
        DataSource = DTS_Bomba
        Enabled = False
        ParentBiDiMode = False
        TabOrder = 3
      end
      object DBE_Quantidade: TDBEdit
        Left = 9
        Top = 84
        Width = 175
        Height = 21
        BiDiMode = bdRightToLeft
        DataField = 'QUANTIDADE_LITROS'
        DataSource = DTS_Abastecimento
        ParentBiDiMode = False
        TabOrder = 4
        OnKeyPress = DBE_QuantidadeKeyPress
      end
      object DBE_ValorTotal: TDBEdit
        Left = 190
        Top = 84
        Width = 121
        Height = 21
        DataField = 'VALOR_TOTAL'
        DataSource = DTS_Abastecimento
        Enabled = False
        TabOrder = 5
      end
      object DBE_TotalImpostos: TDBEdit
        Left = 317
        Top = 84
        Width = 121
        Height = 21
        DataField = 'TOTAL_IMPOSTOS'
        DataSource = DTS_Abastecimento
        Enabled = False
        TabOrder = 6
      end
    end
    object BTN_Lancar: TButton
      Left = 10
      Top = 136
      Width = 85
      Height = 27
      Caption = 'Lan'#231'ar '
      TabOrder = 1
      OnClick = BTN_LancarClick
    end
  end
  object FDQ_Abastecimento: TFDQuery
    BeforePost = FDQ_AbastecimentoBeforePost
    Connection = DTM_Modulo.FDConnection
    SQL.Strings = (
      'select abastecimento.codigo_id,'
      '       abastecimento.id_bomba,'
      '       abastecimento.quantidade_litros,'
      '       abastecimento.valor_total,'
      '       abastecimento.total_impostos,'
      '       abastecimento.data_abastecimento'
      ''
      'from abastecimento')
    Left = 72
    Top = 200
    object FDQ_AbastecimentoCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'CODIGO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_AbastecimentoID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
    end
    object FDQ_AbastecimentoQUANTIDADE_LITROS: TFloatField
      FieldName = 'QUANTIDADE_LITROS'
      Origin = 'QUANTIDADE_LITROS'
      OnChange = FDQ_AbastecimentoQUANTIDADE_LITROSChange
      DisplayFormat = '##0.000'
    end
    object FDQ_AbastecimentoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      DisplayFormat = '##0.000'
    end
    object FDQ_AbastecimentoTOTAL_IMPOSTOS: TFloatField
      FieldName = 'TOTAL_IMPOSTOS'
      Origin = 'TOTAL_IMPOSTOS'
      DisplayFormat = '##0.000'
    end
    object FDQ_AbastecimentoDATA_ABASTECIMENTO: TDateField
      FieldName = 'DATA_ABASTECIMENTO'
      Origin = 'DATA_ABASTECIMENTO'
    end
  end
  object DTS_Abastecimento: TDataSource
    DataSet = FDQ_Abastecimento
    Left = 72
    Top = 256
  end
  object DTS_Bomba: TDataSource
    DataSet = FDQ_Bomba
    Left = 173
    Top = 265
  end
  object FDQ_Bomba: TFDQuery
    Connection = DTM_Modulo.FDConnection
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select bomba.codigo_id,'
      '       bomba.descricao,'
      '       bomba.id_tanque'
      ''
      'from bomba')
    Left = 176
    Top = 201
    object FDQ_BombaCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'CODIGO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_BombaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object FDQ_BombaID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Required = True
    end
    object FDQ_BombaDESCTANQUE: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCTANQUE'
      LookupDataSet = FDQ_Tanque
      LookupKeyFields = 'CODIGO_ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_TANQUE'
      Size = 100
      Lookup = True
    end
    object FDQ_BombaID_COMBUTIVEL: TSmallintField
      FieldKind = fkLookup
      FieldName = 'ID_COMBUTIVEL'
      LookupDataSet = FDQ_Tanque
      LookupKeyFields = 'CODIGO_ID'
      LookupResultField = 'ID_COMBUSTIVEL'
      KeyFields = 'ID_TANQUE'
      Lookup = True
    end
    object FDQ_BombaDESCCOMBUSTIVEL: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCCOMBUSTIVEL'
      LookupDataSet = FDQ_COMBUSTIVEL
      LookupKeyFields = 'CODIGO_ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_COMBUTIVEL'
      Size = 100
      Lookup = True
    end
    object FDQ_BombaVALORCOMBUSTIVEL: TFloatField
      FieldKind = fkLookup
      FieldName = 'VALORCOMBUSTIVEL'
      LookupDataSet = FDQ_COMBUSTIVEL
      LookupKeyFields = 'CODIGO_ID'
      LookupResultField = 'VALOR'
      KeyFields = 'ID_COMBUTIVEL'
      DisplayFormat = '##0.000'
      Lookup = True
    end
  end
  object FDQ_Tanque: TFDQuery
    Connection = DTM_Modulo.FDConnection
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select tanque.codigo_id,'
      '       tanque.descricao,'
      '       tanque.id_combustivel'
      ''
      'from tanque')
    Left = 245
    Top = 201
    object FDQ_TanqueCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'CODIGO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_TanqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 10
    end
    object FDQ_TanqueID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
      Origin = 'ID_COMBUSTIVEL'
      Required = True
    end
    object FDQ_TanqueDESCCOMBUSTIVEL: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCCOMBUSTIVEL'
      LookupDataSet = FDQ_COMBUSTIVEL
      LookupKeyFields = 'CODIGO_ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_COMBUSTIVEL'
      Size = 100
      Lookup = True
    end
  end
  object DTS_Tanque: TDataSource
    DataSet = FDQ_Tanque
    Left = 245
    Top = 273
  end
  object DTS_Combustivel: TDataSource
    DataSet = FDQ_COMBUSTIVEL
    Left = 334
    Top = 273
  end
  object FDQ_COMBUSTIVEL: TFDQuery
    Connection = DTM_Modulo.FDConnection
    SQL.Strings = (
      'select combustivel.codigo_id,'
      '       combustivel.descricao,'
      '       combustivel.valor'
      ''
      'from combustivel')
    Left = 334
    Top = 201
    object FDQ_COMBUSTIVELCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'CODIGO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_COMBUSTIVELDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object FDQ_COMBUSTIVELVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
  end
end
