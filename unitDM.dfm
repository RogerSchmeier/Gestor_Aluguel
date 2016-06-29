object DM: TDM
  OldCreateOrder = False
  Height = 385
  Width = 531
  object FDConexao: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Password=naotemsenha'
      'Database=getaluguel'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 24
  end
  object FDPMysql: TFDPhysMySQLDriverLink
    VendorLib = 'C:\sistemas\Gestor_Aluguel\app\libmysql.dll'
    Left = 56
    Top = 160
  end
  object QImovel: TFDQuery
    Active = True
    Connection = FDConexao
    SQL.Strings = (
      'select * from Imovel')
    Left = 344
    Top = 192
    object QImovelid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QImovelnumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
    end
    object QImovelrua: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rua'
      Origin = 'rua'
      Size = 100
    end
    object QImovelreferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'referencia'
      Origin = 'referencia'
      Size = 255
    end
  end
  object dsImovel: TDataSource
    DataSet = QImovel
    Left = 344
    Top = 256
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 96
  end
  object tblLocatario: TFDQuery
    Active = True
    Connection = FDConexao
    SQL.Strings = (
      'select * from locatario')
    Left = 416
    Top = 192
    object tblLocatarioid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblLocatarionome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object tblLocatariocpf: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
    end
    object tblLocatariorg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg'
      Origin = 'rg'
      Size = 10
    end
    object tblLocatarionascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'nascimento'
      Origin = 'nascimento'
      EditMask = '99/!99/0000;1;_'
    end
    object tblLocatariosexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sexo'
      Origin = 'sexo'
      Size = 50
    end
  end
  object dsLocatario: TDataSource
    DataSet = tblLocatario
    Left = 416
    Top = 256
  end
  object tblLocacao: TFDQuery
    Active = True
    Connection = FDConexao
    SQL.Strings = (
      'select * from locacao')
    Left = 272
    Top = 192
    object tblLocacaoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblLocacaolocatario_id: TIntegerField
      FieldName = 'locatario_id'
      Origin = 'locatario_id'
      Required = True
    end
    object tblLocacaoimovel_id: TIntegerField
      FieldName = 'imovel_id'
      Origin = 'imovel_id'
      Required = True
    end
    object tblLocacaovalor: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
    end
    object tblLocacaoprazo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prazo'
      Origin = 'prazo'
      Size = 50
    end
    object tblLocacaoDataInicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataInicio'
      Origin = 'DataInicio'
      EditMask = '99/!99/0000;1;_'
    end
    object tblLocacaoDataFinal: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataFinal'
      Origin = 'DataFinal'
      EditMask = '99/!99/0000;1;_'
    end
  end
  object dsLocacao: TDataSource
    DataSet = tblLocacao
    Left = 272
    Top = 256
  end
  object tblConsulta: TFDQuery
    Active = True
    Connection = FDConexao
    SQL.Strings = (
      'select IM.numero, IM.rua, IM.referencia from'
      'imovel IM'
      '')
    Left = 464
    Top = 8
  end
  object DSconsulta: TDataSource
    DataSet = tblConsulta
    Left = 464
    Top = 64
  end
end
