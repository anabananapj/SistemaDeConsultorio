object consultas: Tconsultas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'consultas'
  ClientHeight = 680
  ClientWidth = 1285
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pn_cad_pac: TPanel
    Left = 0
    Top = 0
    Width = 1285
    Height = 680
    Align = alClient
    BevelOuter = bvNone
    Color = 3416861
    Constraints.MaxHeight = 680
    Constraints.MaxWidth = 1285
    Constraints.MinHeight = 680
    Constraints.MinWidth = 1285
    ParentBackground = False
    TabOrder = 0
    object pn_titulo: TPanel
      Left = 0
      Top = 0
      Width = 1285
      Height = 49
      BevelOuter = bvNone
      Caption = 'Consultas Agendadas'
      Color = -1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object grid_consultas: TDBGrid
      Left = 0
      Top = 48
      Width = 1285
      Height = 593
      DataSource = ds_consultas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tw Cen MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = grid_consultasDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'nome_med'
          Title.Caption = 'M'#233'dico(a)'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'crm_med'
          Title.Caption = 'CRM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_pac'
          ImeName = 'Portuguese (Brazilian ABNT)'
          Title.Caption = 'Nome'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sexo_pac'
          Title.Caption = 'Sexo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nascimento_pac'
          Title.Caption = 'Nascimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf_pac'
          Title.Caption = 'CPF'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hora_cons'
          Title.Caption = 'Hora da Consulta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_cons'
          Title.Caption = 'Data da Consulta'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone_pac'
          Title.Caption = 'Telefone'
          Width = 170
          Visible = True
        end>
    end
  end
  object query_consultas: TFDQuery
    Active = True
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM pacientes'
      'INNER JOIN consultas ON pacientes.cpf_pac = consultas.cpf_pac'
      'INNER JOIN medicos ON consultas.nome_med = medicos.nome_med')
    Left = 560
    Top = 336
  end
  object ds_consultas: TDataSource
    DataSet = query_consultas
    Left = 648
    Top = 336
  end
end