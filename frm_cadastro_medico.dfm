object cadastro_medico: Tcadastro_medico
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 680
  ClientWidth = 1285
  Color = clBtnFace
  Constraints.MaxHeight = 680
  Constraints.MaxWidth = 1285
  Constraints.MinHeight = 680
  Constraints.MinWidth = 1285
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
    object lb_cpf: TLabel
      Left = 477
      Top = 111
      Width = 49
      Height = 27
      Caption = 'CPF:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_rg: TLabel
      Left = 781
      Top = 111
      Width = 37
      Height = 27
      Caption = 'RG:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_endereco: TLabel
      Left = 37
      Top = 377
      Width = 147
      Height = 39
      Caption = 'Endere'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lb_nome: TLabel
      Left = 40
      Top = 111
      Width = 168
      Height = 27
      Caption = 'Nome Completo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_cep: TLabel
      Left = 35
      Top = 422
      Width = 50
      Height = 27
      Caption = 'CEP:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_rua: TLabel
      Left = 211
      Top = 422
      Width = 46
      Height = 27
      Caption = 'Rua:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_numero: TLabel
      Left = 719
      Top = 422
      Width = 86
      Height = 27
      Caption = 'N'#250'mero:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_nascimento: TLabel
      Left = 248
      Top = 187
      Width = 212
      Height = 27
      Caption = 'Data de Nascimento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_email: TLabel
      Left = 477
      Top = 187
      Width = 72
      Height = 27
      Caption = 'E-mail:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_bairro: TLabel
      Left = 519
      Top = 422
      Width = 67
      Height = 27
      Caption = 'Bairro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_cidade: TLabel
      Left = 827
      Top = 422
      Width = 77
      Height = 27
      Caption = 'Cidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_estado: TLabel
      Left = 1053
      Top = 422
      Width = 76
      Height = 27
      Caption = 'Estado:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_profissao: TLabel
      Left = 781
      Top = 187
      Width = 101
      Height = 27
      Caption = 'Profiss'#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_telefone: TLabel
      Left = 1028
      Top = 111
      Width = 93
      Height = 27
      Caption = 'Telefone:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_crm: TLabel
      Left = 1028
      Top = 187
      Width = 56
      Height = 27
      Caption = 'CRM:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_especialidade: TLabel
      Left = 38
      Top = 283
      Width = 229
      Height = 27
      Caption = 'Especialidade M'#233'dica:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_formacao: TLabel
      Left = 330
      Top = 283
      Width = 223
      Height = 27
      Caption = 'Forma'#231#227'o Acad'#234'mica:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 620
      Top = 283
      Width = 199
      Height = 27
      Caption = 'Senha para Acesso:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt_nome: TEdit
      Left = 40
      Top = 144
      Width = 420
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edt_sexo: TRadioGroup
      Left = 59
      Top = 187
      Width = 144
      Height = 67
      Caption = 'Sexo'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clCream
      Font.Height = -16
      Font.Name = 'Yu Gothic'
      Font.Style = []
      Items.Strings = (
        'Feminino'
        'Masculino')
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object edt_cpf: TEdit
      Left = 477
      Top = 144
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
    object edt_rg: TEdit
      Left = 781
      Top = 144
      Width = 233
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edt_cep: TEdit
      Left = 35
      Top = 455
      Width = 168
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object edt_rua: TEdit
      Left = 209
      Top = 455
      Width = 304
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edt_numero: TEdit
      Left = 719
      Top = 455
      Width = 102
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object edt_email: TEdit
      Left = 479
      Top = 220
      Width = 284
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edt_bairro: TEdit
      Left = 519
      Top = 455
      Width = 194
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object edt_cidade: TEdit
      Left = 827
      Top = 455
      Width = 220
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object edt_estado: TEdit
      Left = 1053
      Top = 455
      Width = 187
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object edt_profissao: TEdit
      Left = 781
      Top = 220
      Width = 233
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object btn_concluir: TPanel
      Left = 35
      Top = 552
      Width = 185
      Height = 41
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Concluir'
      Color = 25600
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Corbel'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 12
      OnClick = btn_concluirClick
    end
    object data_nasc: TDatePicker
      Left = 248
      Top = 220
      Width = 212
      Height = 27
      Date = 45018.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 13
    end
    object edt_telefone: TEdit
      Left = 1028
      Top = 144
      Width = 212
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object edt_crm: TEdit
      Left = 1028
      Top = 220
      Width = 212
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object edt_especialidade: TEdit
      Left = 40
      Top = 316
      Width = 284
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object edt_formacao: TEdit
      Left = 330
      Top = 316
      Width = 284
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1285
      Height = 49
      Caption = 'Cadastrar M'#233'dico'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 18
    end
    object edt_senha: TEdit
      Left = 622
      Top = 316
      Width = 199
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 19
    end
  end
  object query_cad_med: TFDQuery
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      'select * from medicos')
    Left = 32
    Top = 624
  end
  object query_cad_user: TFDQuery
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      'select * from usuarios')
    Left = 112
    Top = 624
  end
end
