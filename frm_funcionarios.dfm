object frm_func: Tfrm_func
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_func'
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
    ParentBackground = False
    TabOrder = 0
    object pn_titulo: TPanel
      Left = 0
      Top = 0
      Width = 1301
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Funcion'#225'rios'
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
    object grid_funcionarios: TDBGrid
      Left = 0
      Top = 48
      Width = 1373
      Height = 671
      DataSource = ds_funcionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tw Cen MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Century Gothic'
      TitleFont.Style = []
      OnDblClick = grid_funcionariosDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'nome_func'
          ImeName = 'Portuguese (Brazilian ABNT)'
          Title.Caption = 'Nome'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sexo_func'
          Title.Caption = 'Sexo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nascimento_func'
          Title.Caption = 'Nascimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf_func'
          Title.Caption = 'CPF'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rg_func'
          Title.Caption = 'RG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cargo_func'
          Title.Caption = 'Cargo'
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
          FieldName = 'telefone_func'
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
  object query_funcionarios: TFDQuery
    Active = True
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      'select * from funcionarios')
    Left = 872
    Top = 472
  end
  object ds_funcionarios: TDataSource
    DataSet = query_funcionarios
    Left = 960
    Top = 472
  end
end
