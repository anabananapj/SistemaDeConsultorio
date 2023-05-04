object frm_pront: Tfrm_pront
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'bo'
  ClientHeight = 716
  ClientWidth = 1302
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  PixelsPerInch = 96
  TextHeight = 13
  object pn_cad_pac: TPanel
    Left = 0
    Top = 0
    Width = 1302
    Height = 716
    Align = alClient
    BevelOuter = bvNone
    Color = 3416861
    ParentBackground = False
    TabOrder = 0
    object pn_agendar: TPanel
      Left = 0
      Top = 0
      Width = 1301
      Height = 49
      Caption = 'Prontu'#225'rios dos Pacientes'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object search_pac: TSearchBox
      Left = 5
      Top = 53
      Width = 265
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Yu Gothic'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TextHint = 'Pesquise por Paciente'
      OnChange = search_pacChange
    end
    object grid_pacientes: TDBGrid
      Left = 0
      Top = 85
      Width = 1301
      Height = 631
      DataSource = ds_pacientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tw Cen MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Century Gothic'
      TitleFont.Style = []
      OnDblClick = grid_pacientesDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'nome_pac'
          ImeName = 'Portuguese (Brazilian ABNT)'
          Title.Caption = 'Nome'
          Width = 200
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
          FieldName = 'rg_pac'
          Title.Caption = 'RG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email_pac'
          Title.Caption = 'E-mail'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'profissao'
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
        end>
    end
  end
  object query_pacientes: TFDQuery
    Active = True
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM pacientes'
      '')
    Left = 32
    Top = 8
  end
  object ds_pacientes: TDataSource
    DataSet = query_pacientes
    Left = 128
    Top = 8
  end
end
