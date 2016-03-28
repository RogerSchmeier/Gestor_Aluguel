object DM: TDM
  OldCreateOrder = False
  Height = 341
  Width = 379
  object SQLConnection1: TSQLConnection
    ConnectionName = 'GETALUGUEL'
    DriverName = 'MYSQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbxmys.dll'
    LoginPrompt = False
    Params.Strings = (
      'drivername=MYSQL'
      'librarynameosx=libsqlmys.dylib'
      'vendorlibwin64=libmysql.dll'
      'vendorlibosx=libmysqlclient.dylib'
      'blobsize=-1'
      'database=getaluguel'
      'hostname=127.0.0.1'
      'localecode=0000'
      'password=naotemsenha'
      'user_name=root'
      'compressed=False'
      'encrypted=False')
    VendorLib = 'LIBMYSQL.dll'
    Connected = True
    Left = 8
    Top = 8
  end
  object DSImovel: TSQLDataSet
    Active = True
    CommandText = 'select * from `imovel`'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 14
    Top = 80
  end
  object CDSImovel: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPImovel'
    Left = 16
    Top = 192
    object CDSImovelid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object CDSImovelnumero: TFMTBCDField
      FieldName = 'numero'
      Precision = 6
      Size = 0
    end
    object CDSImovelrua: TStringField
      FieldName = 'rua'
      Size = 100
    end
    object CDSImovelreferencia: TMemoField
      FieldName = 'referencia'
      BlobType = ftMemo
      Size = 1
    end
  end
  object DSPImovel: TDataSetProvider
    DataSet = DSImovel
    Left = 16
    Top = 136
  end
  object DataImovel: TDataSource
    DataSet = CDSImovel
    Left = 24
    Top = 256
  end
end
