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
      Caption = 'Ver Prontu'#225'rios dos Pacientes'
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
    object grid_agendar: TDBGrid
      Left = 14
      Top = 80
      Width = 1273
      Height = 609
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = '@Yu Gothic'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Century Gothic'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'nome_pac'
          Title.Caption = 'Nome do Paciente'
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
          FieldName = 'cpf_pac'
          Title.Caption = 'CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nascimento_pac'
          Title.Caption = 'Nascimento'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone_pac'
          Title.Caption = 'Telefone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email_pac'
          Title.Caption = 'Email'
          Width = 150
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
          FieldName = 'cep'
          Title.Caption = 'CEP'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cidade'
          Title.Caption = 'Cidade'
          Width = 150
          Visible = True
        end>
    end
  end
end
