object FRM_RelatorioAbast: TFRM_RelatorioAbast
  Left = 0
  Top = 0
  ClientHeight = 628
  ClientWidth = 954
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLR_Abastecimentos: TRLReport
    Left = 32
    Top = 120
    Width = 794
    Height = 1123
    DataSource = DTS_Dados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 155
      BandType = btTitle
      BeforePrint = RLBand1BeforePrint
      object Label1: TLabel
        Left = 32
        Top = 56
        Width = 76
        Height = 16
        Caption = 'Data Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 39
        Top = 78
        Width = 69
        Height = 16
        Caption = 'Data Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBL_DataInicial: TLabel
        Left = 114
        Top = 56
        Width = 90
        Height = 16
        Caption = 'LBL_DataInicial'
      end
      object LBL_Datafinal: TLabel
        Left = 114
        Top = 78
        Width = 80
        Height = 16
        Caption = 'LBL_Datafinal'
      end
      object Label3: TLabel
        Left = 158
        Top = 133
        Width = 47
        Height = 16
        Caption = 'Tanque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 3
        Top = 133
        Width = 21
        Height = 16
        Caption = 'Dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 255
        Top = 133
        Width = 45
        Height = 16
        Caption = 'Bomba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 358
        Top = 133
        Width = 137
        Height = 16
        Alignment = taRightJustify
        Caption = 'Quantidade em Litros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 530
        Top = 133
        Width = 68
        Height = 16
        Alignment = taRightJustify
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 604
        Top = 133
        Width = 111
        Height = 16
        Alignment = taRightJustify
        Caption = 'Total de Impostos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = -3
        Top = 3
        Width = 721
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Relat'#243'rio de Abastecimentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 193
      Width = 718
      Height = 28
      BeforePrint = RLBand2BeforePrint
      object RLDBText3: TRLDBText
        Left = 255
        Top = 6
        Width = 84
        Height = 16
        DataField = 'DESCBOMBA'
        DataSource = DTS_Dados
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 356
        Top = 6
        Width = 139
        Height = 16
        Alignment = taRightJustify
        DataField = 'QUANTIDADE_LITROS'
        DataSource = DTS_Dados
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 503
        Top = 6
        Width = 95
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_TOTAL'
        DataSource = DTS_Dados
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 600
        Top = 6
        Width = 115
        Height = 16
        Alignment = taRightJustify
        DataField = 'TOTAL_IMPOSTOS'
        DataSource = DTS_Dados
        Text = ''
      end
      object RLDBText1: TRLDBText
        Left = 3
        Top = 6
        Width = 151
        Height = 16
        DataField = 'DATA_ABASTECIMENTO'
        DataSource = DTS_Dados
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 158
        Top = 6
        Width = 93
        Height = 16
        DataField = 'DESCTANQUE'
        DataSource = DTS_Dados
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 221
      Width = 718
      Height = 36
      BandType = btSummary
      BeforePrint = RLBand3BeforePrint
      object Label5: TLabel
        Left = 304
        Top = 9
        Width = 35
        Height = 16
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLL_TotQtdLitros: TRLLabel
        Left = 484
        Top = 9
        Width = 11
        Height = 16
        Alignment = taRightJustify
        Caption = '0'
      end
      object RLL_TotValor: TRLLabel
        Left = 587
        Top = 9
        Width = 11
        Height = 16
        Alignment = taRightJustify
        Caption = '0'
      end
      object RLL_TotImpostos: TRLLabel
        Left = 704
        Top = 9
        Width = 11
        Height = 16
        Alignment = taRightJustify
        Caption = '0'
      end
      object RLDraw1: TRLDraw
        Left = 356
        Top = 7
        Width = 139
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Brush.Style = bsClear
      end
      object RLDraw2: TRLDraw
        Left = 503
        Top = 7
        Width = 95
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Brush.Style = bsClear
      end
      object RLDraw3: TRLDraw
        Left = 600
        Top = 7
        Width = 115
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Brush.Style = bsClear
      end
    end
  end
  object FDQ_Dados: TFDQuery
    Connection = DTM_Modulo.FDConnection
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select ab.data_abastecimento,'
      '       sum(ab.valor_total) as valor_total,'
      '       sum(ab.quantidade_litros) as quantidade_litros,'
      '       sum(ab.total_impostos) as total_impostos,'
      '       bb.descricao as descBomba,'
      '       tq.descricao as descTanque,'
      '       cb.descricao as descCombustivel'
      ''
      'from abastecimento ab'
      'inner join bomba bb          on (bb.codigo_id = ab.id_bomba)'
      'inner join tanque tq         on (tq.codigo_id = bb.id_tanque)'
      
        'inner join combustivel cb    on (cb.codigo_id = tq.id_combustive' +
        'l)'
      ''
      
        'where ab.data_abastecimento between :pDataInicial and :pDataFina' +
        'l'
      ''
      'group by 1, 5, 6, 7')
    Left = 616
    Top = 153
    ParamData = <
      item
        Name = 'PDATAINICIAL'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PDATAFINAL'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
    object FDQ_DadosDATA_ABASTECIMENTO: TDateField
      FieldName = 'DATA_ABASTECIMENTO'
      Origin = 'DATA_ABASTECIMENTO'
    end
    object FDQ_DadosVALOR_TOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'R$ ###,##0.00'
    end
    object FDQ_DadosQUANTIDADE_LITROS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE_LITROS'
      Origin = 'QUANTIDADE_LITROS'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '###,##0.000'
    end
    object FDQ_DadosTOTAL_IMPOSTOS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_IMPOSTOS'
      Origin = 'TOTAL_IMPOSTOS'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'R$ ###,##0.00'
    end
    object FDQ_DadosDESCBOMBA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCBOMBA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQ_DadosDESCTANQUE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCTANQUE'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQ_DadosDESCCOMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCCOMBUSTIVEL'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object DTS_Dados: TDataSource
    DataSet = FDQ_Dados
    Left = 613
    Top = 209
  end
end
