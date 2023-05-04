object frm_todospront: Tfrm_todospront
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_todospront'
  ClientHeight = 716
  ClientWidth = 1300
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
  object pn_cad_pac: TPanel
    Left = 0
    Top = 0
    Width = 1300
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
      BevelOuter = bvNone
      Caption = 'Hist'#243'rico de Consultas'
      Color = 16445671
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object btn_fechar: TImage
        Left = 1257
        Top = 10
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
    object search_pront: TSearchBox
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
      TextHint = 'Pesquise por Data'
      OnChange = search_prontChange
    end
    object grid_pront: TDBGrid
      Left = 0
      Top = 85
      Width = 1301
      Height = 631
      DataSource = ds_consultas
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
      Columns = <
        item
          Expanded = False
          FieldName = 'data_cons'
          Title.Caption = 'Data Consulta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hora_cons'
          Title.Caption = 'Hora Consulta'
          Width = 170
          Visible = True
        end
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
          FieldName = 'cpf_pac'
          Title.Caption = 'CPF'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'crm_med'
          Title.Caption = 'CRM M'#233'dico(A)'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hist_atual'
          Title.Caption = 'Hist'#243'rico Atual'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'queixa_principal'
          Title.Caption = 'Queixa Principal'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'antecedentes'
          Title.Caption = 'Antecedentes'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'receita'
          Title.Caption = 'Receita'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'observacoes'
          Title.Caption = 'Observa'#231#245'es'
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
        end>
    end
  end
  object query_prontuarios: TFDQuery
    Active = True
    ConstraintsEnabled = True
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM prontuarios '
      'INNER JOIN pacientes ON pacientes.cpf_pac = prontuarios.cpf_pac '
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 64
    Top = 8
  end
  object ds_consultas: TDataSource
    DataSet = query_prontuarios
    Left = 152
    Top = 8
  end
end
