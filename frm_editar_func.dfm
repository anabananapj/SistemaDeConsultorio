object funcionarios: Tfuncionarios
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'funcionarios'
  ClientHeight = 458
  ClientWidth = 762
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
    Width = 762
    Height = 458
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
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
      Left = 37
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
      Top = 316
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
    object lb_cargo: TLabel
      Left = 333
      Top = 176
      Width = 55
      Height = 25
      Caption = 'Cargo:'
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
      Width = 762
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Editar Funcion'#225'rios'
      Color = -1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Gadugi'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 12
      object btn_fechar: TImage
        Left = 707
        Top = 8
        Width = 30
        Height = 33
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          0020080300000044A48AC6000000017352474201D9C92C7F0000000970485973
          00000EC400000EC401952B0E1B000000DE504C5445000000E63946E63946E639
          46E63946E63946E63946E63946E63946E63946E63946E63946E63946E63946E6
          3946E63946E63946E63946E63946E63946E63946E63946E63946E63946E63946
          E63946E63946E63946E63946E63946E63946E63946E86973E8616BE63946E86A
          73EDEAE9E97F87E99298E75964E63946EDEBEAE97F86E99197E7545EE63946E6
          3946E97E86E99097E86F78E63946E86F77E63946E97E85EDE9E9E86E77E63946
          E99096E63946E98087E63946E63946E63946E63946E7545FE63946E63946E639
          46E63946E63946E63946E63946E63946E63946BF0C14020000004A74524E5300
          1F4C6261491A35A4E6FFE19D2822B9FEFDAD185FF2EC4875FB5A4323F3179AFF
          FFA5FFFFFFFFFF7CFFFFFFFFD920FFFFFF15FF33FFFFFF41FF31FF11E0D19CFF
          72FC1B8AE310FA32447745EEFE000001824944415478DA9593DB4B024114C6CF
          CCEEB88A6E4259666ED285200A2C244812E9CF4E24094222ECF6E0434517BA53
          4449A5A00E69BB735977D68DE8BC0CE73BBFE57C73CE2C823F02FD0F402CBABF
          00865D93D8D73030E2FDD266DF7C4002B5946631F4A200939D8ECF5C1C3D7980
          C4B7BF6E13F8D1052CB7A3D2257C2781380D1CC1F8AD008C08F73F218CC9D388
          3E7060EE99E52904C8696BF540BB674AE68C0311EE34A9111ABA81D90EA1E16B
          A6CCD71990BD143DD37D42A3A849A8792E94C56307C061E96AA14528101A3F95
          C2D2A1036886EB7BB941C0447537CFEE3B801E7285955702347AE1030891B9ED
          CF7C674E45ACEE39404817A9D52374ACD720347922945C955DB37824E6C0FCCD
          7409157358DBE573D83C10730076BF741FAC1A53D6773860EA7C97D3A99A72E6
          51452C6BB41DB8AC8D6DB9CD4CBB19502FA0B2FB6092F863A85E44A5C18B82A9
          BE9F28E22DF00090A66A9782560205800CFA1CBCCB3CC665F001F62063E48ACF
          47C31557557FBD1CD601E3AA57FAE7CF1B103F0CCB612138029C840000000049
          454E44AE426082}
        OnClick = btn_fecharClick
      end
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
      TabOrder = 10
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
      TabOrder = 6
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
      TabOrder = 9
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
      TabOrder = 2
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
      TabOrder = 4
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
      TabOrder = 11
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
      TabOrder = 0
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
    object edt_cargo: TEdit
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
      TabOrder = 5
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
      TabOrder = 3
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
      TabOrder = 7
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
      TabOrder = 1
    end
    object Panel1: TPanel
      Left = 280
      Top = 392
      Width = 185
      Height = 41
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Salvar'
      Color = 5489806
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 13
      OnClick = Panel1Click
    end
  end
  object query_funcionarios: TFDQuery
    Active = True
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      'select * from funcionarios')
    Left = 64
    Top = 400
  end
end
