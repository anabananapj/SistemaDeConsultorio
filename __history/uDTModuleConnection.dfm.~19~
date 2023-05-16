object DTConnection: TDTConnection
  OldCreateOrder = False
  Height = 142
  Width = 222
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Password=12345'
      'User_Name=aprendiz'
      'Database=apr_ana'
      'Server=bdteste.rpinfo.com.br'
      'DriverID=PG')
    Left = 48
    Top = 16
  end
  object DriverLink: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 112
    Top = 16
  end
  object query_pac: TFDQuery
    Connection = FDConnection1
    Left = 160
    Top = 80
  end
  object query_cons: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM consultas AS c'
      'INNER JOIN prontuarios AS p ON p.cpf_pac = c.cpf_pac'
      'INNER JOIN medicos AS m ON m.cpf_med = c.cpf_med'
      'INNER JOIN pacientes AS pa ON pa.cpf_pac = c.cpf_pac;')
    Left = 32
    Top = 80
  end
  object query_med: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from medicos')
    Left = 96
    Top = 80
  end
end
