object editar_med: Teditar_med
  Left = 0
  Top = 0
  Caption = 'Editar M'#233'dicos'
  ClientHeight = 497
  ClientWidth = 747
  Color = 3416861
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pn_editar: TPanel
    Left = 0
    Top = 0
    Width = 747
    Height = 497
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -113
    ExplicitTop = -162
    ExplicitWidth = 748
    ExplicitHeight = 461
    object lb_bairro: TLabel
      Left = 211
      Top = 316
      Width = 55
      Height = 25
      Caption = 'Bairro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      ParentFont = False
    end
    object lb_cep: TLabel
      Left = 37
      Top = 246
      Width = 37
      Height = 25
      Caption = 'CEP:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      ParentFont = False
    end
    object lb_cidade: TLabel
      Left = 33
      Top = 316
      Width = 63
      Height = 25
      Caption = 'Cidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      ParentFont = False
    end
    object lb_cpf: TLabel
      Left = 37
      Top = 115
      Width = 36
      Height = 25
      Caption = 'CPF:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      ParentFont = False
    end
    object lb_email: TLabel
      Left = 37
      Top = 176
      Width = 59
      Height = 25
      Caption = 'E-mail:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      ParentFont = False
    end
    object lb_estado: TLabel
      Left = 503
      Top = 312
      Width = 61
      Height = 25
      Caption = 'Estado:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      ParentFont = False
    end
    object lb_nome: TLabel
      Left = 37
      Top = 55
      Width = 148
      Height = 25
      Caption = 'Nome Completo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      ParentFont = False
    end
    object lb_numero: TLabel
      Left = 503
      Top = 246
      Width = 75
      Height = 25
      Caption = 'N'#250'mero:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      ParentFont = False
    end
    object lb_especialidade: TLabel
      Left = 333
      Top = 176
      Width = 119
      Height = 25
      Caption = 'Especialidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      ParentFont = False
    end
    object lb_rg: TLabel
      Left = 333
      Top = 115
      Width = 29
      Height = 25
      Caption = 'RG:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      ParentFont = False
    end
    object lb_rua: TLabel
      Left = 211
      Top = 246
      Width = 37
      Height = 25
      Caption = 'Rua:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      ParentFont = False
    end
    object lb_telefone: TLabel
      Left = 509
      Top = 55
      Width = 77
      Height = 25
      Caption = 'Telefone:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      ParentFont = False
    end
    object pn_titulo: TPanel
      Left = 0
      Top = 0
      Width = 747
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Editar M'#233'dicos'
      Color = -1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Gadugi'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 748
    end
    object edt_bairro: TEdit
      Left = 211
      Top = 339
      Width = 286
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edt_cep: TEdit
      Left = 37
      Top = 273
      Width = 168
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edt_cidade: TEdit
      Left = 36
      Top = 339
      Width = 169
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edt_cpf: TEdit
      Left = 37
      Top = 142
      Width = 286
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edt_email: TEdit
      Left = 37
      Top = 205
      Width = 284
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object edt_estado: TEdit
      Left = 503
      Top = 339
      Width = 164
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edt_nome: TEdit
      Left = 37
      Top = 86
      Width = 466
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object edt_numero: TEdit
      Left = 503
      Top = 273
      Width = 164
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object edt_especialidade: TEdit
      Left = 333
      Top = 205
      Width = 233
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object edt_rg: TEdit
      Left = 333
      Top = 142
      Width = 233
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object edt_rua: TEdit
      Left = 211
      Top = 273
      Width = 286
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object edt_telefone: TEdit
      Left = 509
      Top = 86
      Width = 212
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object Panel1: TPanel
      Left = 280
      Top = 408
      Width = 185
      Height = 41
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Salvar'
      Color = 5489806
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 13
      OnClick = Panel1Click
    end
  end
  object query_medicos: TFDQuery
    Active = True
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      'select * from medicos')
    Left = 631
    Top = 197
  end
end
