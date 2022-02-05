object DTM_Modulo: TDTM_Modulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 399
  Width = 592
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Users\willi\Desktop\Prova Fortes\BD\POSTO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'DriverID=IB')
    Connected = True
    LoginPrompt = False
    Transaction = FDTransaction
    Left = 40
    Top = 32
  end
  object FDTransaction: TFDTransaction
    Connection = FDConnection
    Left = 40
    Top = 80
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Users\willi\Desktop\Prova Fortes\Fontes\fbclient.dll'
    Left = 40
    Top = 144
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 40
    Top = 200
  end
  object FDQ_Parametros: TFDQuery
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select parametros.codigo_id,'
      '       parametros.percentual_impostos'
      ''
      'from parametros')
    Left = 240
    Top = 32
    object FDQ_ParametrosCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'CODIGO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ParametrosPERCENTUAL_IMPOSTOS: TFloatField
      FieldName = 'PERCENTUAL_IMPOSTOS'
      Origin = 'PERCENTUAL_IMPOSTOS'
      DisplayFormat = '##0.00'
    end
  end
  object DTS_Parametros: TDataSource
    DataSet = FDQ_Parametros
    Left = 245
    Top = 96
  end
end
