object medicos: Tmedicos
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'medicos'
  ClientHeight = 719
  ClientWidth = 1301
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
    Width = 1301
    Height = 719
    Align = alClient
    BevelOuter = bvNone
    Color = 3416861
    Constraints.MaxHeight = 719
    Constraints.MaxWidth = 1301
    Constraints.MinHeight = 680
    Constraints.MinWidth = 1285
    ParentBackground = False
    TabOrder = 0
    object pn_titulo: TPanel
      Left = 0
      Top = 0
      Width = 1301
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Caption = 'M'#233'dicos'
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
    object grid_medicos: TDBGrid
      Left = 0
      Top = 48
      Width = 1301
      Height = 671
      DataSource = ds_medicos
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
      OnDblClick = grid_medicosDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'nome_med'
          ImeName = 'Portuguese (Brazilian ABNT)'
          Title.Caption = 'Nome'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sexo_med'
          Title.Caption = 'Sexo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nascimento_med'
          Title.Caption = 'Nascimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf_med'
          Title.Caption = 'CPF'
          Width = 180
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
          FieldName = 'rg_med'
          Title.Caption = 'RG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'especialidade_med'
          Title.Caption = 'Profiss'#227'o'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rua'
          Title.Caption = 'Rua'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numero_casa'
          Title.Caption = 'N'#250'mero'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bairro'
          Title.Caption = 'Bairro'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cidade'
          Title.Caption = 'Cidade'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep'
          Title.Caption = 'CEP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone_pac'
          Title.Caption = 'Telefone'
          Width = 170
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'estado'
          Title.Caption = 'Estado'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'formacao_med'
          Title.Caption = 'Foma'#231#227'o'
          Visible = True
        end>
    end
  end
  object query_medicos: TFDQuery
    Active = True
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      'select * from medicos')
    Left = 848
    Top = 472
  end
  object ds_medicos: TDataSource
    DataSet = query_medicos
    Left = 912
    Top = 472
  end
end
