object frm_consulta: Tfrm_consulta
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Agendamento'
  ClientHeight = 680
  ClientWidth = 1285
  Color = clBtnFace
  Constraints.MaxHeight = 768
  Constraints.MaxWidth = 1366
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
      Left = 553
      Top = 71
      Width = 176
      Height = 27
      Caption = 'CPF do Paciente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Yu Gothic'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pn_agendar: TPanel
      Left = 0
      Top = 0
      Width = 1285
      Height = 49
      Caption = 'Agendar uma Consulta'
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
    object edt_cpf: TEdit
      Left = 464
      Top = 104
      Width = 281
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btn_buscar: TButton
      Left = 751
      Top = 104
      Width = 74
      Height = 27
      Cursor = crHandPoint
      Caption = 'Buscar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btn_buscarClick
    end
    object edt_nome: TDBEdit
      Left = 56
      Top = 160
      Width = 457
      Height = 27
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Gadugi'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object edt_rg: TDBEdit
      Left = 519
      Top = 160
      Width = 281
      Height = 27
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Gadugi'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object edt_nascimento: TDBEdit
      Left = 806
      Top = 160
      Width = 195
      Height = 27
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Gadugi'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object edt_nome_mae: TDBEdit
      Left = 56
      Top = 193
      Width = 457
      Height = 27
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Gadugi'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object edt_nome_pai: TDBEdit
      Left = 519
      Top = 193
      Width = 482
      Height = 27
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Gadugi'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object edt_telefone: TDBEdit
      Left = 1007
      Top = 160
      Width = 195
      Height = 27
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Gadugi'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object edt_profissao: TDBEdit
      Left = 1007
      Top = 193
      Width = 195
      Height = 27
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Gadugi'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object edt_numero: TDBEdit
      Left = 720
      Top = 226
      Width = 195
      Height = 27
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Gadugi'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object edt_rua: TDBEdit
      Left = 257
      Top = 226
      Width = 457
      Height = 27
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Gadugi'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object edt_cep: TDBEdit
      Left = 56
      Top = 226
      Width = 195
      Height = 27
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Gadugi'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object edt_bairro: TDBEdit
      Left = 921
      Top = 226
      Width = 281
      Height = 27
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Gadugi'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object pn_fundo: TPanel
      Left = 423
      Top = 312
      Width = 458
      Height = 305
      BevelOuter = bvNone
      Color = 4665642
      ParentBackground = False
      TabOrder = 14
      object lb_data: TLabel
        Left = 140
        Top = 57
        Width = 181
        Height = 27
        Caption = 'Data da Consulta:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Yu Gothic'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lb_hora: TLabel
        Left = 99
        Top = 128
        Width = 270
        Height = 27
        Caption = 'Hora Prevista da Consulta:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Yu Gothic'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dia_consulta: TDateTimePicker
        Left = 136
        Top = 90
        Width = 186
        Height = 32
        Date = 45030.000000000000000000
        Time = 0.404928055555501500
        TabOrder = 0
      end
      object hora_consulta: TTimePicker
        Left = 156
        Top = 161
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 1
        Time = 45030.404872754630000000
        TimeFormat = 'hh:mm'
      end
      object btn_concluir: TPanel
        Left = 150
        Top = 234
        Width = 159
        Height = 41
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Agendar'
        Color = 5231311
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Corbel'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnClick = btn_concluirClick
      end
      object cm_medicos: TComboBox
        Left = 112
        Top = 25
        Width = 233
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object query_agendamentos: TFDQuery
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      'select * from consultas')
    Left = 120
    Top = 336
  end
  object query_pacientes: TFDQuery
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      'select * from pacientes')
    Left = 224
    Top = 336
  end
  object query_medicos: TFDQuery
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      'select * from medicos'
      '')
    Left = 120
    Top = 400
  end
end
