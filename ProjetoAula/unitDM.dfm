object DM: TDM
  Height = 480
  Width = 640
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=aula'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 272
  end
  object tbCliente: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'aula.cliente'
    Left = 48
    Top = 96
    object tbClienteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = False
    end
    object tbClientenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object tbClientesalario: TFloatField
      FieldName = 'salario'
      Origin = 'salario'
      Required = True
      currency = True
    end
  end
  object tbDependente: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'aula.dependente'
    Left = 208
    Top = 96
  end
  object dnCliente: TDataSource
    DataSet = tbCliente
    Left = 48
    Top = 176
  end
  object dsDependente: TDataSource
    DataSet = tbDependente
    Left = 208
    Top = 176
  end
  object tbUsuario: TFDTable
    Active = True
    AfterScroll = tbUsuarioAfterScroll
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'aula.usuarios'
    Left = 368
    Top = 96
    object tbUsuarioid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = False
    end
    object tbUsuarionome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object tbUsuariologin: TStringField
      FieldName = 'login'
      Origin = 'login'
      Required = True
      Size = 30
    end
    object tbUsuariosenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 30
    end
  end
  object dsUsuario: TDataSource
    DataSet = tbUsuario
    Left = 368
    Top = 176
  end
  object query: TFDQuery
    Connection = Conexao
    Left = 480
    Top = 128
  end
end
