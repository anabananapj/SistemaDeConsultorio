object frm_modalconsultas: Tfrm_modalconsultas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_modalconsultas'
  ClientHeight = 759
  ClientWidth = 767
  Color = clBtnFace
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
    Width = 767
    Height = 759
    Align = alClient
    BevelOuter = bvNone
    Color = 3416861
    ParentBackground = False
    TabOrder = 0
    object lb_nome: TLabel
      Left = 53
      Top = 63
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
    object lb_telefone: TLabel
      Left = 525
      Top = 63
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
    object lb_cpf: TLabel
      Left = 53
      Top = 123
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
    object lb_rg: TLabel
      Left = 349
      Top = 123
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
    object lb_email: TLabel
      Left = 53
      Top = 184
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
    object lb_profissao: TLabel
      Left = 349
      Top = 184
      Width = 81
      Height = 25
      Caption = 'Profiss'#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Malgun Gothic'
      Font.Style = []
      ParentFont = False
    end
    object lb_cep: TLabel
      Left = 53
      Top = 254
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
    object lb_rua: TLabel
      Left = 227
      Top = 254
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
    object lb_numero: TLabel
      Left = 519
      Top = 254
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
    object lb_cidade: TLabel
      Left = 53
      Top = 324
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
    object lb_bairro: TLabel
      Left = 227
      Top = 324
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
    object lb_estado: TLabel
      Left = 519
      Top = 324
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
    object pn_titulo: TPanel
      Left = 0
      Top = 0
      Width = 767
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Consulta em Andamento'
      Color = 12701617
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Gadugi'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object btn_fechar: TImage
        Left = 717
        Top = 8
        Width = 31
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
    object Panel1: TPanel
      Left = 276
      Top = 696
      Width = 185
      Height = 41
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Concluir'
      Color = 5489806
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
    object edt_nome: TEdit
      Left = 53
      Top = 94
      Width = 466
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edt_telefone: TEdit
      Left = 525
      Top = 94
      Width = 212
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
      Left = 53
      Top = 150
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
    object edt_rg: TEdit
      Left = 349
      Top = 150
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
    object edt_email: TEdit
      Left = 53
      Top = 213
      Width = 284
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edt_profissao: TEdit
      Left = 349
      Top = 213
      Width = 233
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object edt_cep: TEdit
      Left = 53
      Top = 281
      Width = 168
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object edt_rua: TEdit
      Left = 227
      Top = 281
      Width = 286
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object edt_numero: TEdit
      Left = 519
      Top = 281
      Width = 164
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object edt_cidade: TEdit
      Left = 52
      Top = 347
      Width = 169
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object edt_bairro: TEdit
      Left = 227
      Top = 347
      Width = 286
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object edt_estado: TEdit
      Left = 519
      Top = 347
      Width = 164
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
  end
  object query_consultas: TFDQuery
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM pacientes'
      'INNER JOIN consultas ON pacientes.cpf_pac = consultas.cpf_pac'
      'INNER JOIN medicos ON consultas.nome_med = medicos.nome_med')
    Left = 448
    Top = 408
  end
end
