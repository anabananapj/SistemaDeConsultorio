object frm_relat: Tfrm_relat
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_relat'
  ClientHeight = 700
  ClientWidth = 1301
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pn_cad_pac: TPanel
    Left = 0
    Top = 0
    Width = 1301
    Height = 700
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
      BevelOuter = bvNone
      Caption = 'Relat'#243'rios'
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
    object btn_api: TPanel
      Left = 570
      Top = 72
      Width = 161
      Height = 33
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Desafio'
      Color = 9068119
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = btn_apiClick
    end
    object pn_pacientes: TPanel
      Left = 24
      Top = 138
      Width = 297
      Height = 519
      BevelOuter = bvNone
      Color = 5650478
      ParentBackground = False
      TabOrder = 2
      object lb_pacientes: TLabel
        Left = 18
        Top = 16
        Width = 260
        Height = 25
        Caption = 'Gerar Relat'#243'rio de Pacientes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = '@Yu Gothic'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 91
        Top = 270
        Width = 116
        Height = 24
        Caption = 'Data In'#237'cio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 95
        Top = 333
        Width = 107
        Height = 24
        Caption = 'Data Final:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 52
        Top = 109
        Width = 201
        Height = 24
        Caption = 'Nome do Paciente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
      end
      object btn_pac: TPanel
        Left = 67
        Top = 416
        Width = 161
        Height = 33
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Gerar por Data'
        Color = 3690797
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnClick = btn_pacClick
      end
      object cm_pac2: TComboBox
        Left = 46
        Top = 139
        Width = 207
        Height = 29
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
      end
      object date_pac2: TDateTimePicker
        Left = 66
        Top = 360
        Width = 163
        Height = 21
        Date = 45061.000000000000000000
        Time = 0.610284305555978800
        TabOrder = 2
      end
      object date_pac: TDateTimePicker
        Left = 65
        Top = 300
        Width = 163
        Height = 21
        Date = 45061.000000000000000000
        Time = 0.610284305555978800
        TabOrder = 3
      end
      object btn_pac_nome: TPanel
        Left = 68
        Top = 176
        Width = 161
        Height = 33
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Gerar por Nome'
        Color = 3690797
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
        OnClick = btn_pac_nomeClick
      end
    end
    object pn_consultas: TPanel
      Left = 344
      Top = 138
      Width = 297
      Height = 519
      BevelOuter = bvNone
      Color = 9067082
      ParentBackground = False
      TabOrder = 3
      object Label1: TLabel
        Left = 20
        Top = 16
        Width = 262
        Height = 25
        Caption = 'Gerar Relat'#243'rio de Consultas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = '@Yu Gothic'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 48
        Top = 61
        Width = 201
        Height = 24
        Caption = 'Nome do Paciente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 96
        Top = 310
        Width = 116
        Height = 24
        Caption = 'Data In'#237'cio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 102
        Top = 373
        Width = 107
        Height = 24
        Caption = 'Data Final:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 48
        Top = 188
        Width = 188
        Height = 24
        Caption = 'Nome do M'#233'dico:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
      end
      object btn_cons_data: TPanel
        Left = 70
        Top = 456
        Width = 161
        Height = 33
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Gerar por Data'
        Color = 5075262
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnClick = btn_cons_dataClick
      end
      object cm_pac: TComboBox
        Left = 44
        Top = 91
        Width = 209
        Height = 29
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
      end
      object btn_cons_pac: TPanel
        Left = 70
        Top = 128
        Width = 161
        Height = 33
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Gerar por Nome'
        Color = 5075262
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnClick = btn_cons_pacClick
      end
      object date_cons: TDateTimePicker
        Left = 68
        Top = 340
        Width = 163
        Height = 21
        Date = 45061.000000000000000000
        Time = 0.610284305555978800
        TabOrder = 3
      end
      object date_cons2: TDateTimePicker
        Left = 69
        Top = 400
        Width = 163
        Height = 21
        Date = 45061.000000000000000000
        Time = 0.610284305555978800
        TabOrder = 4
      end
      object cm_med_cons: TComboBox
        Left = 48
        Top = 218
        Width = 201
        Height = 29
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 5
      end
      object btn_nome_med_cons: TPanel
        Left = 70
        Top = 256
        Width = 161
        Height = 33
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Gerar por Nome'
        Color = 5075262
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 6
        OnClick = btn_nome_med_consClick
      end
    end
    object pn_medicos: TPanel
      Left = 661
      Top = 138
      Width = 297
      Height = 519
      BevelOuter = bvNone
      Color = 5650478
      ParentBackground = False
      TabOrder = 4
      object Label2: TLabel
        Left = 25
        Top = 16
        Width = 247
        Height = 25
        Caption = 'Gerar Relat'#243'rio de M'#233'dicos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = '@Yu Gothic'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 90
        Top = 270
        Width = 116
        Height = 24
        Caption = 'Data In'#237'cio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 91
        Top = 333
        Width = 107
        Height = 24
        Caption = 'Data Final:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 53
        Top = 109
        Width = 188
        Height = 24
        Caption = 'Nome do M'#233'dico:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
      end
      object btn_medicos: TPanel
        Left = 68
        Top = 416
        Width = 161
        Height = 33
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Gerar por Data'
        Color = 3690797
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnClick = btn_medicosClick
      end
      object cm_med: TComboBox
        Left = 48
        Top = 139
        Width = 201
        Height = 29
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
      end
      object date_med2: TDateTimePicker
        Left = 64
        Top = 360
        Width = 161
        Height = 21
        Date = 45061.000000000000000000
        Time = 0.610284305555978800
        TabOrder = 2
      end
      object date_med: TDateTimePicker
        Left = 64
        Top = 300
        Width = 161
        Height = 21
        Date = 45061.000000000000000000
        Time = 0.610284305555978800
        TabOrder = 3
      end
      object btn_nome_med: TPanel
        Left = 64
        Top = 176
        Width = 161
        Height = 33
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Gerar por Nome'
        Color = 3690797
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
        OnClick = btn_nome_medClick
      end
    end
    object pn_prontuarios: TPanel
      Left = 980
      Top = 138
      Width = 297
      Height = 519
      BevelOuter = bvNone
      Color = 9067082
      ParentBackground = False
      TabOrder = 5
      object Label10: TLabel
        Left = 12
        Top = 16
        Width = 276
        Height = 25
        Caption = 'Gerar Relat'#243'rio de Prontu'#225'rios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = '@Yu Gothic'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 96
        Top = 310
        Width = 116
        Height = 24
        Caption = 'Data In'#237'cio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 97
        Top = 373
        Width = 107
        Height = 24
        Caption = 'Data Final:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 61
        Top = 188
        Width = 188
        Height = 24
        Caption = 'Nome do M'#233'dico:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 53
        Top = 61
        Width = 201
        Height = 24
        Caption = 'Nome do Paciente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Century Gothic'
        Font.Style = []
        ParentFont = False
      end
      object date_pront: TDateTimePicker
        Left = 70
        Top = 340
        Width = 161
        Height = 21
        Date = 45060.000000000000000000
        Time = 0.874976157407218100
        TabOrder = 0
      end
      object date_pront2: TDateTimePicker
        Left = 69
        Top = 400
        Width = 161
        Height = 21
        Date = 45060.000000000000000000
        Time = 0.874976157407218100
        TabOrder = 1
      end
      object btn_pront_data: TPanel
        Left = 70
        Top = 456
        Width = 161
        Height = 33
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Gerar por Data'
        Color = 5075262
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnClick = btn_pront_dataClick
      end
      object cm_pront_med: TComboBox
        Left = 52
        Top = 218
        Width = 201
        Height = 29
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 3
      end
      object cm_pront_pac: TComboBox
        Left = 52
        Top = 91
        Width = 201
        Height = 29
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 4
      end
      object btn_pront_pac: TPanel
        Left = 72
        Top = 128
        Width = 161
        Height = 33
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Gerar por Nome'
        Color = 5075262
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 5
        OnClick = btn_pront_pacClick
      end
      object btn_pront_med: TPanel
        Left = 72
        Top = 256
        Width = 161
        Height = 33
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Gerar por Nome'
        Color = 5075262
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 6
        OnClick = btn_pront_medClick
      end
    end
  end
  object response: TRESTResponse
    Left = 49
    Top = 9
  end
  object request: TRESTRequest
    Client = client
    Params = <>
    Response = response
    Left = 113
    Top = 9
  end
  object client: TRESTClient
    Params = <>
    Left = 177
    Top = 9
  end
  object frx_pacientes: TfrxReport
    Version = '2023.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45058.962499791700000000
    ReportOptions.LastChange = 45060.865826307900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 112
    Top = 80
    Datasets = <
      item
        DataSet = dataset_pac
        DataSetName = 'dataset_pac'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 90.708720000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -29
          Font.Name = 'Source Code Pro'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 8404992
          HAlign = haCenter
          Memo.UTF8W = (
            'Pacientes')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 1.779530000000000000
          Width = 128.504020000000000000
          Height = 34.015770000000000000
          Frame.Typ = []
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000001060000
            00490806000000DF4C8831000000097048597300000B1300000B1301009A9C18
            000000017352474200AECE1CE90000000467414D410000B18F0BFC610500000B
            094944415478DAED9D5D92DCB611C79BDA7C3C463A41A8925215B9BC8974028F
            DEE475AABC3A81B927D8D5093C3A81A5136474024B2FB2F2B4D409BCB2E58A2B
            89B4CC4BAAF2E475928A13DB5A062D82192C0870064063400EFB57C51A697606
            D304893FBEBA9B19300CC36864A90D60186678B030300CD381858161980E6F85
            E1D56FF6E6196487755D5F4E6D90F3096450BD0178F4AB2F9ECE53DBC230DB42
            86A200357C9CDA90606A985F7BF9F47E6A3318661BC85EEF7EF04D0DE31B2918
            38BBF6E5D32BA98D60986D207BB5BB57A736820A210CBC66C23004B030301BA7
            AEEB5CBC9C65597696DA164FFB71847D531CBFC5FF8BF37898DA266A5818988D
            2245E1581C280AB7C7260EC2FE43F1F24079AB14E7703BB55DD4B030301B4334
            2AEC653F15472EDF5A88467590DA2EC773C085FAB9F2160BC3D06161182E5214
            70A4A02F74CF45C31ACD6E120BC308616118263DA25041339DA852DBE8702E2C
            0C63838561788886348366FAA08B42298EBB235C63988630BCDE7DFFB8866C96
            DA9050C4052BAFBFFC6CEB2ED09811D7A4102FBF37FC6954D307ED9CA6210C7F
            FCF59DFC673FCDC4302FCB531BE34F5D7DFF437DFBC6D7CFAAD496300D1651C0
            D1C19168488F52DB17705ED31086F61FA7BB7B1FBEC9CE47E701B95367D5D93F
            BF7B71AB2A473524DD662CA25041337538496D5FE0B94D4B18188602D170E6E2
            458FBD4131B83BA645C69EF36361601817A447E0E7B0F453401E8886732FB56D
            84E7C8C2C030AE48CF4614071489A36D73179EAC30FC6577AFC86AF8656AC356
            51D7E7D5F5AF9E8D76116B9B917E0BBF100DE6796A5B229CDB3485E1F5EE07C7
            35BCDD7B1E34BC3DC9A4808561E0B0303029606118382C0C4C0A5818064E6C61
            902BECFBD0C4DCE7D0C4DFB79C2947298E17E2E62823D9D0C6FDE3EB65698BEA
            6F5229763C89B9252817165548722AE8E56E625BD3707DD53AC573421B708DA4
            54CF31953048D7F299666F7B0F9EC8E33955DDB13074CBCDC5CB27D0DC342EE0
            057A2C8EFBA11747DEB4185F30F3F87A296D2823D4CD295CDC8A2C42BD18657D
            9FAAEF8932A3ED96C906868D7BE6F0B585381E619D6E5218E47D70240ECC01B1
            AEF321DA1A7C0FB2305C2C132F025EF8100FD07D71519E04DA81BFFF4DE0E990
            FB0F8C5918E4EFA037E62CA098129A9144A1BE174318A480A1BDB96711280E73
            DFDF676158963707B066CB6E876C95FC7F0E8D789804E40AD1F05A6F842D95F6
            FFBCA718D244286315064382184AC8854176509FF47CA4BD1F01225D7F1606E8
            8D02C4145E8F6DFBF1B2677F0F9A69079641769388B2DB50E51296EB186796CF
            BE277FBF30FC992C92718CC2D0930B0229A1197AE3EBB76DFDCAEB8A73F91934
            D7F666CF4F900A434F078536E254F5917E1FACB8FE5E2347160630DEF0153806
            FCC89B29A70A12C2F25C471E3DC3CFAB148B5263130625BFA45E1FA5380ED6AD
            13590E36D6C2F067CACE0045E853C39FD6F220ED395FBC971FBBD8327961908D
            E9587B9BA42125AA17D3F990AC378C501850240BED6DEF1194A5E1910883A56C
            EC18F65D3C482DE554E2B8E5D2D1B0306C61D65F714E383F3D52DEC26DC5E087
            F18C49182CD3C3E0359758BB12A25CBC070FB5B79D7B7A59D60CBA9D8353DC4A
            4461A8AB9E9FCD834BA71306BD118D2E73B1E19C704EFCB9F6364E73FE1A58EE
            9884C1343D74EA352DE5920B83A90E20F03E1465A230CC7CED8C230CF59BA36B
            2FFF6055A7B7815AE6C53E9713A712067DB8397A6190E785DB9DEA821B45231E
            8530587ACC605B65D93184412FB382C024B9963A587BC72C8A305C12DFBFFAE5
            67D679D19FDFFDDDEC52767EEC52A6E1C4A98441BF2824C3EED4187A8CE0DD89
            1109832EF69528F26A48994AD9318441AF5792CE29A4736061302BEB3D51810F
            3C8A1B0C86C631256188D2D064D9A4C26099F6CD2842D60D9DC3DA8BD02C0CCD
            3623DE48BAAFFC81CFC2CF5098AA3058E6EB24D308593EB53014A04DAB097765
            F4F533F4C9B9BBCE77272F0CB22C9BA7D90208FCCE5330616198417704788BD0
            BF845A18F4C67B22CABB4564ABBEE3B676D92C0CCBF2F40BA4B210C7C354198E
            574459AA919E68DF0BF9AA3BE44C4518F4C640ED49492D0CFA701FAF1D558CCB
            8770F19E5E7BAD8585E16299FA45D7C18BF66053CF455022015B3108612AC210
            75317903C2101316868072D709B8A96019DE5C45B0017F3B341250672AC2A08F
            FCC8762464F9D4C2600B968B414C61A8AB4BE286F8F98FF606F1F7EFFEFDEDAA
            07C0FCEDC69E35E1EC7F33B852EF646887B597DC40A29642BC7C04AB1BE70208
            05A2C7DF5D057F4B8DB003F9F9BEEF4C4518A26D55CAF259182C27B291946A43
            B1438E2070DE5AACF868F016678F28A0002CA089AEB34659CA3230D20E6D3ED2
            CA998A308C7DC4504273AD6370B66EAE10168635913730DA8337466EF9585072
            0C4BD00F8AC18147A4E55477253A5E84031706F46150C3BA07E179CBC2E0819C
            66D804C24B1C2CFBEF6BEF3B1BCA8B210CFA4D3C4461C073D6DDED4992E7C8F2
            A98501D7B3D43482DED79C121686007AFC1F6EBBE65CB4EC8878877F47128618
            6ED639B01F43B4A98F2F2C0C81586E44E7E12075CF114918C803CE220883295F
            26D9A3F2220843C7EF02084738BEB03010606830CE7BE7D4BD712461D07BB728
            21C704B112FA948732CBD2266225C85CB87DF1118613D120495C36FB18993098
            527239E53F302CEC0D5118F4DE2DD879289230904ECB56944D218E7A1464F264
            41BE0E4E8FC557AD439DEF7F7873FFC6D7CF2ADBDF4FDFD9BB79BE931DDAFE2E
            8CCA57D9303061C8A1BB70E82A0C7A2F17948E2D9230987A37E7F59455754720
            0CA6E9045528730C6130B9E3274D2FC89E8F0450644C3234E4D0212AB930C872
            F5DE2D34D3500E71323899B67E83444C961B431866D05DA74A3A6A6061208022
            74D6344C87A6D7F05A848A280C26DFFE90DD931CE20803968B62AD3FCE2F3433
            52AC9C8FA67A4D961784852110396CC51B3057DE76BE592CBDC6A0FC187AECAC
            C0B3C145CE126DDA4E461B9D1E0DA095194B18B01E742143829CE67C99BC3028
            CF0C708E7790DFC54547FD81245EABCA965E033D1FEF79D816451864D9A63931
            DA77E0E1BF9143DC07CE2CA08979D1C19EF8A147BD467B7625755E1029E21FF9
            4CF558182E4E034A904F0D86C6D1E444FB6CFB583AAC1F5B809577A28D9E5E03
            598803FDDC2B69DB99E1BB088A1406A891C74A68F5A08F925A4A79601DEA815E
            6A1E89F6A9CD33FD7C898501CB3E06FBD3A416D2DE177ABD2AD73B87652E8C7D
            88B883B022F4BFAF6EDBFA6DF376148A9DCE7E112C0CB4F1F01584CF610B08CC
            A06D814C18A49D39AC8E02F5825218147BFB12F18490E2D995AE382FBAB23008
            42CB90E0D0F43E85C7DA9A39215C2115066927DA677B749B2FD1B274AF8871F1
            25D6D3AED1461487FDC0A210E7A96D1461C8A02E7F04BB213FC9E05034C79B2E
            65EA10AF31E08E005E80DCF1EB280225343E07C1597D0DB615D236DFBAAAA099
            1AE1F124566A3A19EA3D07BF91576B6309CD348CBC1E0DF616B05EAE8D3E9B4B
            793C89E9BE5C2F1F58AB4F6156F1FF507D9F3A8DF824AAB8444AED860DB09DA3
            B5734B1535B7E2DBFC8A9BF06997E2D5CE7173699B9AEF11A96099C005FD27AA
            4DD8A6D9D9AE1DA8769AEAAFB5F379CA9800AD5E4DE9F3D47C9A953C92D9ACE4
            DAC861790F5C9676816263E9E2436382858161980E2C0C0CC37460616018A603
            0B03C3301D58181886E9C0C2C0304C07160686613A7484E1D5EE9E9E7B7090B0
            30304C3C3AC2F0A777EE143B3B9762F8EA93529F9F17D7BF7A96342F1EC36C2B
            C66095D7BBEF8BE944364B6D9C8D4DE59D6498A9628D623B7DF7CEC7E7595688
            8FE4A98D5C5257421516FFF8D77F1EAE7A3626C330FE9087B7320C337E581818
            86E9C0C2C0304C87FF01ED0632D12ECA85D70000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 430.866420000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = dataset_pac
        DataSetName = 'dataset_pac'
        RowCount = 0
        object memo_nome: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 60.472480000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
          VAlign = vaCenter
        end
        object memo_nasc: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 83.149660000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Nascimento:')
          ParentFont = False
          VAlign = vaCenter
        end
        object db_nasc: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 93.488250000000000000
          Top = 87.149660000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'nascimento_pac'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_pac."nascimento_pac"]')
          ParentFont = False
        end
        object db_nome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 59.472480000000000000
          Top = 62.472480000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          DataField = 'nome_pac'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_pac."nome_pac"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object memo_cpf: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 105.826840000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
          VAlign = vaCenter
        end
        object db_cpf: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 47.133890000000000000
          Top = 109.606370000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'cpf_pac'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_pac."cpf_pac"]')
          ParentFont = False
        end
        object memo_email: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 151.960730000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'E-mail:')
          ParentFont = False
          VAlign = vaCenter
        end
        object db_email: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 56.252010000000000000
          Top = 151.740260000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          DataField = 'email_pac'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_pac."email_pac"]')
          ParentFont = False
        end
        object memo_sexo: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 175.637910000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Sexo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object db_sexo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 50.692950000000000000
          Top = 177.417440000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'sexo_pac'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataset_pac."sexo_pac"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 18.897650000000000000
          Width = 291.023810000000000000
          Height = 34.015770000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Informa'#231#245'es Pessoais:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 200.315090000000000000
          Width = 105.826840000000000000
          Height = 34.015770000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object frxDBDataset1cep: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 49.913420000000000000
          Top = 249.448980000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cep'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataset_pac."cep"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 245.669450000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 275.905690000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Rua:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 301.141930000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'N'#250'mero da Casa:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 325.378170000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 353.055350000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1rua: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 279.905690000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'rua'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataset_pac."rua"]')
          ParentFont = False
        end
        object frxDBDataset1numero_casa: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 124.504020000000000000
          Top = 304.141930000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'numero_casa'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataset_pac."numero_casa"]')
          ParentFont = False
        end
        object frxDBDataset1cidade: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 62.252010000000000000
          Top = 325.378170000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'cidade'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_pac."cidade"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1estado: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 60.031540000000000000
          Top = 351.055350000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'estado'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_pac."estado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = -3.779530000000000000
          Width = 718.110700000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = -1
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 60.472480000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Pai:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 83.149660000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'M'#227'e:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 467.661720000000000000
          Top = 86.149660000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'nome_mae_pac'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_pac."nome_mae_pac"]')
          ParentFont = False
        end
        object frxDBDataset1nome_pai_pac: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 464.102660000000000000
          Top = 60.472480000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'nome_pai_pac'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_pac."nome_pai_pac"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 107.826840000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Profiss'#227'o:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1profissao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 490.897960000000000000
          Top = 107.826840000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataField = 'profissao'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_pac."profissao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 128.504020000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'RG:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 47.133890000000000000
          Top = 132.283550000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'rg_pac'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_pac."rg_pac"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 403.189240000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Data do Cadastro:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1data_cadastro: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 403.189240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'data_cadastro'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_pac."data_cadastro"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 132.283550000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 490.897960000000000000
          Top = 132.283550000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataField = 'telefone_pac'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_pac."telefone_pac"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 706.772110000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo5: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 661.417750000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object query_pac: TFDQuery
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM pacientes')
    Left = 8
    Top = 80
  end
  object ds_pac: TDataSource
    DataSet = query_pac
    Left = 56
    Top = 80
  end
  object dataset_pac: TfrxDBDataset
    UserName = 'dataset_pac'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_pac=id_pac'
      'nome_pac=nome_pac'
      'email_pac=email_pac'
      'sexo_pac=sexo_pac'
      'nascimento_pac=nascimento_pac'
      'cpf_pac=cpf_pac'
      'rg_pac=rg_pac'
      'telefone_pac=telefone_pac'
      'profissao=profissao'
      'nome_pai_pac=nome_pai_pac'
      'nome_mae_pac=nome_mae_pac'
      'cep=cep'
      'rua=rua'
      'numero_casa=numero_casa'
      'bairro=bairro'
      'cidade=cidade'
      'estado=estado'
      'data_cadastro=data_cadastro')
    DataSource = ds_pac
    BCDToCurrency = False
    DataSetOptions = []
    Left = 160
    Top = 80
  end
  object query_cons: TFDQuery
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      'SELECT consultas.*, pacientes.nome_pac, medicos.crm_med'
      'FROM consultas'
      'INNER JOIN pacientes'
      'ON consultas.cpf_pac = pacientes.cpf_pac'
      'INNER JOIN medicos '
      'ON consultas.nome_med = medicos.nome_med')
    Left = 352
    Top = 88
  end
  object dataset_cons: TfrxDBDataset
    UserName = 'data_cons'
    CloseDataSource = False
    DataSet = query_cons
    BCDToCurrency = False
    DataSetOptions = []
    Left = 440
    Top = 88
  end
  object ds_cons: TDataSource
    DataSet = query_cons
    Left = 488
    Top = 88
  end
  object frx_cons: TfrxReport
    Version = '2023.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45058.962499791700000000
    ReportOptions.LastChange = 45060.865826307900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 400
    Top = 88
    Datasets = <
      item
        DataSet = dataset_pac
        DataSetName = 'dataset_pac'
      end
      item
        DataSet = dataset_cons
        DataSetName = 'data_cons'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 90.708720000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -29
          Font.Name = 'Source Code Pro'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 8404992
          HAlign = haCenter
          Memo.UTF8W = (
            'Consultas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 1.779530000000000000
          Width = 128.504020000000000000
          Height = 34.015770000000000000
          Frame.Typ = []
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000001060000
            00490806000000DF4C8831000000097048597300000B1300000B1301009A9C18
            000000017352474200AECE1CE90000000467414D410000B18F0BFC610500000B
            094944415478DAED9D5D92DCB611C79BDA7C3C463A41A8925215B9BC8974028F
            DEE475AABC3A81B927D8D5093C3A81A5136474024B2FB2F2B4D409BCB2E58A2B
            89B4CC4BAAF2E475928A13DB5A062D82192C0870064063400EFB57C51A697606
            D304893FBEBA9B19300CC36864A90D60186678B030300CD381858161980E6F85
            E1D56FF6E6196487755D5F4E6D90F3096450BD0178F4AB2F9ECE53DBC230DB42
            86A200357C9CDA90606A985F7BF9F47E6A3318661BC85EEF7EF04D0DE31B2918
            38BBF6E5D32BA98D60986D207BB5BB57A736820A210CBC66C23004B030301BA7
            AEEB5CBC9C65597696DA164FFB71847D531CBFC5FF8BF37898DA266A5818988D
            2245E1581C280AB7C7260EC2FE43F1F24079AB14E7703BB55DD4B030301B4334
            2AEC653F15472EDF5A88467590DA2EC773C085FAB9F2160BC3D06161182E5214
            70A4A02F74CF45C31ACD6E120BC308616118263DA25041339DA852DBE8702E2C
            0C63838561788886348366FAA08B42298EBB235C63988630BCDE7DFFB8866C96
            DA9050C4052BAFBFFC6CEB2ED09811D7A4102FBF37FC6954D307ED9CA6210C7F
            FCF59DFC673FCDC4302FCB531BE34F5D7DFF437DFBC6D7CFAAD496300D1651C0
            D1C19168488F52DB17705ED31086F61FA7BB7B1FBEC9CE47E701B95367D5D93F
            BF7B71AB2A473524DD662CA25041337538496D5FE0B94D4B18188602D170E6E2
            458FBD4131B83BA645C69EF36361601817A447E0E7B0F453401E8886732FB56D
            84E7C8C2C030AE48CF4614071489A36D73179EAC30FC6577AFC86AF8656AC356
            51D7E7D5F5AF9E8D76116B9B917E0BBF100DE6796A5B229CDB3485E1F5EE07C7
            35BCDD7B1E34BC3DC9A4808561E0B0303029606118382C0C4C0A5818064E6C61
            902BECFBD0C4DCE7D0C4DFB79C2947298E17E2E62823D9D0C6FDE3EB65698BEA
            6F5229763C89B9252817165548722AE8E56E625BD3707DD53AC573421B708DA4
            54CF31953048D7F299666F7B0F9EC8E33955DDB13074CBCDC5CB27D0DC342EE0
            057A2C8EFBA11747DEB4185F30F3F87A296D2823D4CD295CDC8A2C42BD18657D
            9FAAEF8932A3ED96C906868D7BE6F0B585381E619D6E5218E47D70240ECC01B1
            AEF321DA1A7C0FB2305C2C132F025EF8100FD07D71519E04DA81BFFF4DE0E990
            FB0F8C5918E4EFA037E62CA098129A9144A1BE174318A480A1BDB96711280E73
            DFDF676158963707B066CB6E876C95FC7F0E8D789804E40AD1F05A6F842D95F6
            FFBCA718D244286315064382184AC8854176509FF47CA4BD1F01225D7F1606E8
            8D02C4145E8F6DFBF1B2677F0F9A69079641769388B2DB50E51296EB186796CF
            BE277FBF30FC992C92718CC2D0930B0229A1197AE3EBB76DFDCAEB8A73F91934
            D7F666CF4F900A434F078536E254F5917E1FACB8FE5E2347160630DEF0153806
            FCC89B29A70A12C2F25C471E3DC3CFAB148B5263130625BFA45E1FA5380ED6AD
            13590E36D6C2F067CACE0045E853C39FD6F220ED395FBC971FBBD8327961908D
            E9587B9BA42125AA17D3F990AC378C501850240BED6DEF1194A5E1910883A56C
            EC18F65D3C482DE554E2B8E5D2D1B0306C61D65F714E383F3D52DEC26DC5E087
            F18C49182CD3C3E0359758BB12A25CBC070FB5B79D7B7A59D60CBA9D8353DC4A
            4461A8AB9E9FCD834BA71306BD118D2E73B1E19C704EFCB9F6364E73FE1A58EE
            9884C1343D74EA352DE5920B83A90E20F03E1465A230CC7CED8C230CF59BA36B
            2FFF6055A7B7815AE6C53E9713A712067DB8397A6190E785DB9DEA821B45231E
            8530587ACC605B65D93184412FB382C024B9963A587BC72C8A305C12DFBFFAE5
            67D679D19FDFFDDDEC52767EEC52A6E1C4A98441BF2824C3EED4187A8CE0DD89
            1109832EF69528F26A48994AD9318441AF5792CE29A4736061302BEB3D51810F
            3C8A1B0C86C631256188D2D064D9A4C26099F6CD2842D60D9DC3DA8BD02C0CCD
            3623DE48BAAFFC81CFC2CF5098AA3058E6EB24D308593EB53014A04DAB097765
            F4F533F4C9B9BBCE77272F0CB22C9BA7D90208FCCE5330616198417704788BD0
            BF845A18F4C67B22CABB4564ABBEE3B676D92C0CCBF2F40BA4B210C7C354198E
            574459AA919E68DF0BF9AA3BE44C4518F4C640ED49492D0CFA701FAF1D558CCB
            8770F19E5E7BAD8585E16299FA45D7C18BF66053CF455022015B3108612AC210
            75317903C2101316868072D709B8A96019DE5C45B0017F3B341250672AC2A08F
            FCC8762464F9D4C2600B968B414C61A8AB4BE286F8F98FF606F1F7EFFEFDEDAA
            07C0FCEDC69E35E1EC7F33B852EF646887B597DC40A29642BC7C04AB1BE70208
            05A2C7DF5D057F4B8DB003F9F9BEEF4C4518A26D55CAF259182C27B291946A43
            B1438E2070DE5AACF868F016678F28A0002CA089AEB34659CA3230D20E6D3ED2
            CA998A308C7DC4504273AD6370B66EAE10168635913730DA8337466EF9585072
            0C4BD00F8AC18147A4E55477253A5E84031706F46150C3BA07E179CBC2E0819C
            66D804C24B1C2CFBEF6BEF3B1BCA8B210CFA4D3C4461C073D6DDED4992E7C8F2
            A98501D7B3D43482DED79C121686007AFC1F6EBBE65CB4EC8878877F47128618
            6ED639B01F43B4A98F2F2C0C81586E44E7E12075CF114918C803CE220883295F
            26D9A3F2220843C7EF02084738BEB03010606830CE7BE7D4BD712461D07BB728
            21C704B112FA948732CBD2266225C85CB87DF1118613D120495C36FB18993098
            527239E53F302CEC0D5118F4DE2DD879289230904ECB56944D218E7A1464F264
            41BE0E4E8FC557AD439DEF7F7873FFC6D7CF2ADBDF4FDFD9BB79BE931DDAFE2E
            8CCA57D9303061C8A1BB70E82A0C7A2F17948E2D9230987A37E7F59455754720
            0CA6E9045528730C6130B9E3274D2FC89E8F0450644C3234E4D0212AB930C872
            F5DE2D34D3500E71323899B67E83444C961B431866D05DA74A3A6A6061208022
            74D6344C87A6D7F05A848A280C26DFFE90DD931CE20803968B62AD3FCE2F3433
            52AC9C8FA67A4D961784852110396CC51B3057DE76BE592CBDC6A0FC187AECAC
            C0B3C145CE126DDA4E461B9D1E0DA095194B18B01E742143829CE67C99BC3028
            CF0C708E7790DFC54547FD81245EABCA965E033D1FEF79D816451864D9A63931
            DA77E0E1BF9143DC07CE2CA08979D1C19EF8A147BD467B7625755E1029E21FF9
            4CF558182E4E034A904F0D86C6D1E444FB6CFB583AAC1F5B809577A28D9E5E03
            598803FDDC2B69DB99E1BB088A1406A891C74A68F5A08F925A4A79601DEA815E
            6A1E89F6A9CD33FD7C898501CB3E06FBD3A416D2DE177ABD2AD73B87652E8C7D
            88B883B022F4BFAF6EDBFA6DF376148A9DCE7E112C0CB4F1F01584CF610B08CC
            A06D814C18A49D39AC8E02F5825218147BFB12F18490E2D995AE382FBAB23008
            42CB90E0D0F43E85C7DA9A39215C2115066927DA677B749B2FD1B274AF8871F1
            25D6D3AED1461487FDC0A210E7A96D1461C8A02E7F04BB213FC9E05034C79B2E
            65EA10AF31E08E005E80DCF1EB280225343E07C1597D0DB615D236DFBAAAA099
            1AE1F124566A3A19EA3D07BF91576B6309CD348CBC1E0DF616B05EAE8D3E9B4B
            793C89E9BE5C2F1F58AB4F6156F1FF507D9F3A8DF824AAB8444AED860DB09DA3
            B5734B1535B7E2DBFC8A9BF06997E2D5CE7173699B9AEF11A96099C005FD27AA
            4DD8A6D9D9AE1DA8769AEAAFB5F379CA9800AD5E4DE9F3D47C9A953C92D9ACE4
            DAC861790F5C9676816263E9E2436382858161980E2C0C0CC37460616018A603
            0B03C3301D58181886E9C0C2C0304C07160686613A7484E1D5EE9E9E7B7090B0
            30304C3C3AC2F0A777EE143B3B9762F8EA93529F9F17D7BF7A96342F1EC36C2B
            C66095D7BBEF8BE944364B6D9C8D4DE59D6498A9628D623B7DF7CEC7E7595688
            8FE4A98D5C5257421516FFF8D77F1EAE7A3626C330FE9087B7320C337E581818
            86E9C0C2C0304C87FF01ED0632D12ECA85D70000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 268.346630000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = dataset_cons
        DataSetName = 'data_cons'
        RowCount = 0
        object memo_nome: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 64.252010000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Nome do M'#233'dico:')
          ParentFont = False
          VAlign = vaCenter
        end
        object memo_nasc: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 86.929190000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Nome do Paciente:')
          ParentFont = False
          VAlign = vaCenter
        end
        object db_nasc: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 135.063080000000000000
          Top = 89.929190000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataField = 'nome_pac'
          DataSet = dataset_cons
          DataSetName = 'data_cons'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[data_cons."nome_pac"]')
          ParentFont = False
        end
        object db_nome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 135.063080000000000000
          Top = 64.252010000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'nome_med'
          DataSet = dataset_cons
          DataSetName = 'data_cons'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[data_cons."nome_med"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object memo_cpf: TfrxMemoView
          AllowVectorExport = True
          Left = 336.968770000000000000
          Top = 86.929190000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
          VAlign = vaCenter
        end
        object db_cpf: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 376.543600000000000000
          Top = 90.708720000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'cpf_pac'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_pac."cpf_pac"]')
          ParentFont = False
        end
        object memo_email: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 155.740260000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Hora da Consulta:')
          ParentFont = False
          VAlign = vaCenter
        end
        object db_email: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 131.842610000000000000
          Top = 155.519790000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataField = 'hora_cons'
          DataSet = dataset_cons
          DataSetName = 'data_cons'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[data_cons."hora_cons"]')
          ParentFont = False
        end
        object memo_sexo: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 179.417440000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Status:')
          ParentFont = False
          VAlign = vaCenter
        end
        object db_sexo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 54.472480000000000000
          Top = 180.196970000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'status_cons'
          DataSet = dataset_cons
          DataSetName = 'data_cons'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[data_cons."status_cons"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 291.023810000000000000
          Height = 34.015770000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Informa'#231#245'es:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = -1
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 132.283550000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Data da Consulta:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 130.283550000000000000
          Top = 136.063080000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'data_cons'
          DataSet = dataset_cons
          DataSetName = 'data_cons'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[data_cons."data_cons"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 221.771800000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Data do Registro:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1data_cadastro: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 221.771800000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'data_registro'
          DataSet = dataset_cons
          DataSetName = 'data_cons'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[data_cons."data_registro"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 336.968770000000000000
          Top = 64.252010000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'CRM:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 376.543600000000000000
          Top = 68.031540000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'crm_med'
          DataSet = dataset_cons
          DataSetName = 'data_cons'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[data_cons."crm_med"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 544.252320000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo5: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 498.897960000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object query_med: TFDQuery
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      'select * from medicos')
    Left = 760
    Top = 88
  end
  object ds_med: TDataSource
    DataSet = query_med
    Left = 912
    Top = 88
  end
  object dataset_med: TfrxDBDataset
    UserName = 'dataset_med'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_med=id_med'
      'crm_med=crm_med'
      'nome_med=nome_med'
      'email_med=email_med'
      'sexo_med=sexo_med'
      'nascimento_med=nascimento_med'
      'cpf_med=cpf_med'
      'rg_med=rg_med'
      'telefone_med=telefone_med'
      'especialidade_med=especialidade_med'
      'formacao_med=formacao_med'
      'cep=cep'
      'rua=rua'
      'numero_casa=numero_casa'
      'bairro=bairro'
      'cidade=cidade'
      'estado=estado'
      'data_cadastro=data_cadastro')
    DataSet = query_med
    BCDToCurrency = False
    DataSetOptions = []
    Left = 856
    Top = 88
  end
  object frx_med: TfrxReport
    Version = '2023.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45058.962499791700000000
    ReportOptions.LastChange = 45062.633050381940000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 808
    Top = 88
    Datasets = <
      item
        DataSet = dataset_pac
        DataSetName = 'dataset_pac'
      end
      item
        DataSet = dataset_med
        DataSetName = 'dataset_med'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 90.708720000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -29
          Font.Name = 'Source Code Pro'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 8404992
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#233'dicos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 1.779530000000000000
          Width = 128.504020000000000000
          Height = 34.015770000000000000
          Frame.Typ = []
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000001060000
            00490806000000DF4C8831000000097048597300000B1300000B1301009A9C18
            000000017352474200AECE1CE90000000467414D410000B18F0BFC610500000B
            094944415478DAED9D5D92DCB611C79BDA7C3C463A41A8925215B9BC8974028F
            DEE475AABC3A81B927D8D5093C3A81A5136474024B2FB2F2B4D409BCB2E58A2B
            89B4CC4BAAF2E475928A13DB5A062D82192C0870064063400EFB57C51A697606
            D304893FBEBA9B19300CC36864A90D60186678B030300CD381858161980E6F85
            E1D56FF6E6196487755D5F4E6D90F3096450BD0178F4AB2F9ECE53DBC230DB42
            86A200357C9CDA90606A985F7BF9F47E6A3318661BC85EEF7EF04D0DE31B2918
            38BBF6E5D32BA98D60986D207BB5BB57A736820A210CBC66C23004B030301BA7
            AEEB5CBC9C65597696DA164FFB71847D531CBFC5FF8BF37898DA266A5818988D
            2245E1581C280AB7C7260EC2FE43F1F24079AB14E7703BB55DD4B030301B4334
            2AEC653F15472EDF5A88467590DA2EC773C085FAB9F2160BC3D06161182E5214
            70A4A02F74CF45C31ACD6E120BC308616118263DA25041339DA852DBE8702E2C
            0C63838561788886348366FAA08B42298EBB235C63988630BCDE7DFFB8866C96
            DA9050C4052BAFBFFC6CEB2ED09811D7A4102FBF37FC6954D307ED9CA6210C7F
            FCF59DFC673FCDC4302FCB531BE34F5D7DFF437DFBC6D7CFAAD496300D1651C0
            D1C19168488F52DB17705ED31086F61FA7BB7B1FBEC9CE47E701B95367D5D93F
            BF7B71AB2A473524DD662CA25041337538496D5FE0B94D4B18188602D170E6E2
            458FBD4131B83BA645C69EF36361601817A447E0E7B0F453401E8886732FB56D
            84E7C8C2C030AE48CF4614071489A36D73179EAC30FC6577AFC86AF8656AC356
            51D7E7D5F5AF9E8D76116B9B917E0BBF100DE6796A5B229CDB3485E1F5EE07C7
            35BCDD7B1E34BC3DC9A4808561E0B0303029606118382C0C4C0A5818064E6C61
            902BECFBD0C4DCE7D0C4DFB79C2947298E17E2E62823D9D0C6FDE3EB65698BEA
            6F5229763C89B9252817165548722AE8E56E625BD3707DD53AC573421B708DA4
            54CF31953048D7F299666F7B0F9EC8E33955DDB13074CBCDC5CB27D0DC342EE0
            057A2C8EFBA11747DEB4185F30F3F87A296D2823D4CD295CDC8A2C42BD18657D
            9FAAEF8932A3ED96C906868D7BE6F0B585381E619D6E5218E47D70240ECC01B1
            AEF321DA1A7C0FB2305C2C132F025EF8100FD07D71519E04DA81BFFF4DE0E990
            FB0F8C5918E4EFA037E62CA098129A9144A1BE174318A480A1BDB96711280E73
            DFDF676158963707B066CB6E876C95FC7F0E8D789804E40AD1F05A6F842D95F6
            FFBCA718D244286315064382184AC8854176509FF47CA4BD1F01225D7F1606E8
            8D02C4145E8F6DFBF1B2677F0F9A69079641769388B2DB50E51296EB186796CF
            BE277FBF30FC992C92718CC2D0930B0229A1197AE3EBB76DFDCAEB8A73F91934
            D7F666CF4F900A434F078536E254F5917E1FACB8FE5E2347160630DEF0153806
            FCC89B29A70A12C2F25C471E3DC3CFAB148B5263130625BFA45E1FA5380ED6AD
            13590E36D6C2F067CACE0045E853C39FD6F220ED395FBC971FBBD8327961908D
            E9587B9BA42125AA17D3F990AC378C501850240BED6DEF1194A5E1910883A56C
            EC18F65D3C482DE554E2B8E5D2D1B0306C61D65F714E383F3D52DEC26DC5E087
            F18C49182CD3C3E0359758BB12A25CBC070FB5B79D7B7A59D60CBA9D8353DC4A
            4461A8AB9E9FCD834BA71306BD118D2E73B1E19C704EFCB9F6364E73FE1A58EE
            9884C1343D74EA352DE5920B83A90E20F03E1465A230CC7CED8C230CF59BA36B
            2FFF6055A7B7815AE6C53E9713A712067DB8397A6190E785DB9DEA821B45231E
            8530587ACC605B65D93184412FB382C024B9963A587BC72C8A305C12DFBFFAE5
            67D679D19FDFFDDDEC52767EEC52A6E1C4A98441BF2824C3EED4187A8CE0DD89
            1109832EF69528F26A48994AD9318441AF5792CE29A4736061302BEB3D51810F
            3C8A1B0C86C631256188D2D064D9A4C26099F6CD2842D60D9DC3DA8BD02C0CCD
            3623DE48BAAFFC81CFC2CF5098AA3058E6EB24D308593EB53014A04DAB097765
            F4F533F4C9B9BBCE77272F0CB22C9BA7D90208FCCE5330616198417704788BD0
            BF845A18F4C67B22CABB4564ABBEE3B676D92C0CCBF2F40BA4B210C7C354198E
            574459AA919E68DF0BF9AA3BE44C4518F4C640ED49492D0CFA701FAF1D558CCB
            8770F19E5E7BAD8585E16299FA45D7C18BF66053CF455022015B3108612AC210
            75317903C2101316868072D709B8A96019DE5C45B0017F3B341250672AC2A08F
            FCC8762464F9D4C2600B968B414C61A8AB4BE286F8F98FF606F1F7EFFEFDEDAA
            07C0FCEDC69E35E1EC7F33B852EF646887B597DC40A29642BC7C04AB1BE70208
            05A2C7DF5D057F4B8DB003F9F9BEEF4C4518A26D55CAF259182C27B291946A43
            B1438E2070DE5AACF868F016678F28A0002CA089AEB34659CA3230D20E6D3ED2
            CA998A308C7DC4504273AD6370B66EAE10168635913730DA8337466EF9585072
            0C4BD00F8AC18147A4E55477253A5E84031706F46150C3BA07E179CBC2E0819C
            66D804C24B1C2CFBEF6BEF3B1BCA8B210CFA4D3C4461C073D6DDED4992E7C8F2
            A98501D7B3D43482DED79C121686007AFC1F6EBBE65CB4EC8878877F47128618
            6ED639B01F43B4A98F2F2C0C81586E44E7E12075CF114918C803CE220883295F
            26D9A3F2220843C7EF02084738BEB03010606830CE7BE7D4BD712461D07BB728
            21C704B112FA948732CBD2266225C85CB87DF1118613D120495C36FB18993098
            527239E53F302CEC0D5118F4DE2DD879289230904ECB56944D218E7A1464F264
            41BE0E4E8FC557AD439DEF7F7873FFC6D7CF2ADBDF4FDFD9BB79BE931DDAFE2E
            8CCA57D9303061C8A1BB70E82A0C7A2F17948E2D9230987A37E7F59455754720
            0CA6E9045528730C6130B9E3274D2FC89E8F0450644C3234E4D0212AB930C872
            F5DE2D34D3500E71323899B67E83444C961B431866D05DA74A3A6A6061208022
            74D6344C87A6D7F05A848A280C26DFFE90DD931CE20803968B62AD3FCE2F3433
            52AC9C8FA67A4D961784852110396CC51B3057DE76BE592CBDC6A0FC187AECAC
            C0B3C145CE126DDA4E461B9D1E0DA095194B18B01E742143829CE67C99BC3028
            CF0C708E7790DFC54547FD81245EABCA965E033D1FEF79D816451864D9A63931
            DA77E0E1BF9143DC07CE2CA08979D1C19EF8A147BD467B7625755E1029E21FF9
            4CF558182E4E034A904F0D86C6D1E444FB6CFB583AAC1F5B809577A28D9E5E03
            598803FDDC2B69DB99E1BB088A1406A891C74A68F5A08F925A4A79601DEA815E
            6A1E89F6A9CD33FD7C898501CB3E06FBD3A416D2DE177ABD2AD73B87652E8C7D
            88B883B022F4BFAF6EDBFA6DF376148A9DCE7E112C0CB4F1F01584CF610B08CC
            A06D814C18A49D39AC8E02F5825218147BFB12F18490E2D995AE382FBAB23008
            42CB90E0D0F43E85C7DA9A39215C2115066927DA677B749B2FD1B274AF8871F1
            25D6D3AED1461487FDC0A210E7A96D1461C8A02E7F04BB213FC9E05034C79B2E
            65EA10AF31E08E005E80DCF1EB280225343E07C1597D0DB615D236DFBAAAA099
            1AE1F124566A3A19EA3D07BF91576B6309CD348CBC1E0DF616B05EAE8D3E9B4B
            793C89E9BE5C2F1F58AB4F6156F1FF507D9F3A8DF824AAB8444AED860DB09DA3
            B5734B1535B7E2DBFC8A9BF06997E2D5CE7173699B9AEF11A96099C005FD27AA
            4DD8A6D9D9AE1DA8769AEAAFB5F379CA9800AD5E4DE9F3D47C9A953C92D9ACE4
            DAC861790F5C9676816263E9E2436382858161980E2C0C0CC37460616018A603
            0B03C3301D58181886E9C0C2C0304C07160686613A7484E1D5EE9E9E7B7090B0
            30304C3C3AC2F0A777EE143B3B9762F8EA93529F9F17D7BF7A96342F1EC36C2B
            C66095D7BBEF8BE944364B6D9C8D4DE59D6498A9628D623B7DF7CEC7E7595688
            8FE4A98D5C5257421516FFF8D77F1EAE7A3626C330FE9087B7320C337E581818
            86E9C0C2C0304C87FF01ED0632D12ECA85D70000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 430.866420000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = dataset_med
        DataSetName = 'dataset_med'
        RowCount = 0
        object memo_nome: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 60.472480000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
          VAlign = vaCenter
        end
        object memo_nasc: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 83.149660000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Nascimento:')
          ParentFont = False
          VAlign = vaCenter
        end
        object db_nasc: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 93.488250000000000000
          Top = 87.149660000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'nascimento_med'
          DataSet = dataset_med
          DataSetName = 'dataset_med'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_med."nascimento_med"]')
          ParentFont = False
        end
        object db_nome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 59.472480000000000000
          Top = 62.472480000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          DataField = 'nome_med'
          DataSet = dataset_med
          DataSetName = 'dataset_med'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_med."nome_med"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object memo_cpf: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 128.504020000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'CRM:')
          ParentFont = False
          VAlign = vaCenter
        end
        object db_cpf: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 47.133890000000000000
          Top = 132.283550000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'crm_med'
          DataSet = dataset_med
          DataSetName = 'dataset_med'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_med."crm_med"]')
          ParentFont = False
        end
        object memo_email: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 174.637910000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'E-mail:')
          ParentFont = False
          VAlign = vaCenter
        end
        object db_email: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 56.252010000000000000
          Top = 174.417440000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          DataField = 'email_med'
          DataSet = dataset_med
          DataSetName = 'dataset_med'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_med."email_med"]')
          ParentFont = False
        end
        object memo_sexo: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 198.315090000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Sexo:')
          ParentFont = False
          VAlign = vaCenter
        end
        object db_sexo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 50.692950000000000000
          Top = 200.094620000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'sexo_med'
          DataSet = dataset_med
          DataSetName = 'dataset_med'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataset_med."sexo_med"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 18.897650000000000000
          Width = 291.023810000000000000
          Height = 34.015770000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Informa'#231#245'es Pessoais:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 238.110390000000000000
          Width = 105.826840000000000000
          Height = 34.015770000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object frxDBDataset1cep: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 49.913420000000000000
          Top = 279.126160000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'cep'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataset_pac."cep"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 275.346630000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 298.582870000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Rua:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 323.819110000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'N'#250'mero da Casa:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 348.055350000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 375.732530000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1rua: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 302.582870000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'rua'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataset_pac."rua"]')
          ParentFont = False
        end
        object frxDBDataset1numero_casa: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 124.504020000000000000
          Top = 326.819110000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'numero_casa'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dataset_pac."numero_casa"]')
          ParentFont = False
        end
        object frxDBDataset1cidade: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 62.252010000000000000
          Top = 348.055350000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'cidade'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_pac."cidade"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1estado: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 60.031540000000000000
          Top = 373.732530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'estado'
          DataSet = dataset_pac
          DataSetName = 'dataset_pac'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_pac."estado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = -3.779530000000000000
          Width = 718.110700000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = -1
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 60.472480000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Forma'#231#227'o:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 83.149660000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Especialidade:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 516.795610000000000000
          Top = 86.149660000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'especialidade_med'
          DataSet = dataset_med
          DataSetName = 'dataset_med'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_med."especialidade_med"]')
          ParentFont = False
        end
        object frxDBDataset1nome_pai_pac: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 494.897960000000000000
          Top = 60.472480000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'formacao_med'
          DataSet = dataset_med
          DataSetName = 'dataset_med'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_med."formacao_med"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 107.826840000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = dataset_med
          DataSetName = 'dataset_med'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1profissao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 487.118430000000000000
          Top = 107.826840000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataField = 'telefone_med'
          DataSet = dataset_med
          DataSetName = 'dataset_med'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_med."telefone_med"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'RG:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 47.133890000000000000
          Top = 154.960730000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'rg_med'
          DataSet = dataset_med
          DataSetName = 'dataset_med'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_med."rg_med"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 403.189240000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Data do Cadastro:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1data_cadastro: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 403.189240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'data_cadastro'
          DataSet = dataset_med
          DataSetName = 'dataset_med'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_med."data_cadastro"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 104.826840000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 47.133890000000000000
          Top = 108.606370000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'cpf_med'
          DataSet = dataset_med
          DataSetName = 'dataset_med'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dataset_med."cpf_med"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 706.772110000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo5: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 661.417750000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object query_pront: TFDQuery
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      
        'SELECT prontuarios.*, pacientes.nome_pac, medicos.nome_med, cons' +
        'ultas.data_registro FROM prontuarios'
      'INNER JOIN medicos ON '
      'prontuarios.crm_med = medicos.crm_med'
      'INNER JOIN pacientes ON'
      'prontuarios.cpf_pac = pacientes.cpf_pac'
      'INNER JOIN consultas ON'
      'prontuarios.cpf_pac = consultas.cpf_pac ')
    Left = 1056
    Top = 88
  end
  object ds_pront: TDataSource
    DataSet = query_pront
    Left = 1104
    Top = 88
  end
  object dataset_pront: TfrxDBDataset
    UserName = 'dateset_pront'
    CloseDataSource = False
    DataSet = query_pront
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1160
    Top = 88
  end
  object frx_pront: TfrxReport
    Version = '2023.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45058.962499791700000000
    ReportOptions.LastChange = 45061.922247118100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 1216
    Top = 88
    Datasets = <
      item
        DataSet = dataset_pac
        DataSetName = 'dataset_pac'
      end
      item
        DataSet = dataset_cons
        DataSetName = 'data_cons'
      end
      item
        DataSet = dataset_pront
        DataSetName = 'dateset_pront'
      end
      item
        DataSet = dataset_med
        DataSetName = 'dataset_med'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 90.708720000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -29
          Font.Name = 'Source Code Pro'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 8404992
          HAlign = haCenter
          Memo.UTF8W = (
            'Prontu'#225'rios')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 1.779530000000000000
          Width = 128.504020000000000000
          Height = 34.015770000000000000
          Frame.Typ = []
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000001060000
            00490806000000DF4C8831000000097048597300000B1300000B1301009A9C18
            000000017352474200AECE1CE90000000467414D410000B18F0BFC610500000B
            094944415478DAED9D5D92DCB611C79BDA7C3C463A41A8925215B9BC8974028F
            DEE475AABC3A81B927D8D5093C3A81A5136474024B2FB2F2B4D409BCB2E58A2B
            89B4CC4BAAF2E475928A13DB5A062D82192C0870064063400EFB57C51A697606
            D304893FBEBA9B19300CC36864A90D60186678B030300CD381858161980E6F85
            E1D56FF6E6196487755D5F4E6D90F3096450BD0178F4AB2F9ECE53DBC230DB42
            86A200357C9CDA90606A985F7BF9F47E6A3318661BC85EEF7EF04D0DE31B2918
            38BBF6E5D32BA98D60986D207BB5BB57A736820A210CBC66C23004B030301BA7
            AEEB5CBC9C65597696DA164FFB71847D531CBFC5FF8BF37898DA266A5818988D
            2245E1581C280AB7C7260EC2FE43F1F24079AB14E7703BB55DD4B030301B4334
            2AEC653F15472EDF5A88467590DA2EC773C085FAB9F2160BC3D06161182E5214
            70A4A02F74CF45C31ACD6E120BC308616118263DA25041339DA852DBE8702E2C
            0C63838561788886348366FAA08B42298EBB235C63988630BCDE7DFFB8866C96
            DA9050C4052BAFBFFC6CEB2ED09811D7A4102FBF37FC6954D307ED9CA6210C7F
            FCF59DFC673FCDC4302FCB531BE34F5D7DFF437DFBC6D7CFAAD496300D1651C0
            D1C19168488F52DB17705ED31086F61FA7BB7B1FBEC9CE47E701B95367D5D93F
            BF7B71AB2A473524DD662CA25041337538496D5FE0B94D4B18188602D170E6E2
            458FBD4131B83BA645C69EF36361601817A447E0E7B0F453401E8886732FB56D
            84E7C8C2C030AE48CF4614071489A36D73179EAC30FC6577AFC86AF8656AC356
            51D7E7D5F5AF9E8D76116B9B917E0BBF100DE6796A5B229CDB3485E1F5EE07C7
            35BCDD7B1E34BC3DC9A4808561E0B0303029606118382C0C4C0A5818064E6C61
            902BECFBD0C4DCE7D0C4DFB79C2947298E17E2E62823D9D0C6FDE3EB65698BEA
            6F5229763C89B9252817165548722AE8E56E625BD3707DD53AC573421B708DA4
            54CF31953048D7F299666F7B0F9EC8E33955DDB13074CBCDC5CB27D0DC342EE0
            057A2C8EFBA11747DEB4185F30F3F87A296D2823D4CD295CDC8A2C42BD18657D
            9FAAEF8932A3ED96C906868D7BE6F0B585381E619D6E5218E47D70240ECC01B1
            AEF321DA1A7C0FB2305C2C132F025EF8100FD07D71519E04DA81BFFF4DE0E990
            FB0F8C5918E4EFA037E62CA098129A9144A1BE174318A480A1BDB96711280E73
            DFDF676158963707B066CB6E876C95FC7F0E8D789804E40AD1F05A6F842D95F6
            FFBCA718D244286315064382184AC8854176509FF47CA4BD1F01225D7F1606E8
            8D02C4145E8F6DFBF1B2677F0F9A69079641769388B2DB50E51296EB186796CF
            BE277FBF30FC992C92718CC2D0930B0229A1197AE3EBB76DFDCAEB8A73F91934
            D7F666CF4F900A434F078536E254F5917E1FACB8FE5E2347160630DEF0153806
            FCC89B29A70A12C2F25C471E3DC3CFAB148B5263130625BFA45E1FA5380ED6AD
            13590E36D6C2F067CACE0045E853C39FD6F220ED395FBC971FBBD8327961908D
            E9587B9BA42125AA17D3F990AC378C501850240BED6DEF1194A5E1910883A56C
            EC18F65D3C482DE554E2B8E5D2D1B0306C61D65F714E383F3D52DEC26DC5E087
            F18C49182CD3C3E0359758BB12A25CBC070FB5B79D7B7A59D60CBA9D8353DC4A
            4461A8AB9E9FCD834BA71306BD118D2E73B1E19C704EFCB9F6364E73FE1A58EE
            9884C1343D74EA352DE5920B83A90E20F03E1465A230CC7CED8C230CF59BA36B
            2FFF6055A7B7815AE6C53E9713A712067DB8397A6190E785DB9DEA821B45231E
            8530587ACC605B65D93184412FB382C024B9963A587BC72C8A305C12DFBFFAE5
            67D679D19FDFFDDDEC52767EEC52A6E1C4A98441BF2824C3EED4187A8CE0DD89
            1109832EF69528F26A48994AD9318441AF5792CE29A4736061302BEB3D51810F
            3C8A1B0C86C631256188D2D064D9A4C26099F6CD2842D60D9DC3DA8BD02C0CCD
            3623DE48BAAFFC81CFC2CF5098AA3058E6EB24D308593EB53014A04DAB097765
            F4F533F4C9B9BBCE77272F0CB22C9BA7D90208FCCE5330616198417704788BD0
            BF845A18F4C67B22CABB4564ABBEE3B676D92C0CCBF2F40BA4B210C7C354198E
            574459AA919E68DF0BF9AA3BE44C4518F4C640ED49492D0CFA701FAF1D558CCB
            8770F19E5E7BAD8585E16299FA45D7C18BF66053CF455022015B3108612AC210
            75317903C2101316868072D709B8A96019DE5C45B0017F3B341250672AC2A08F
            FCC8762464F9D4C2600B968B414C61A8AB4BE286F8F98FF606F1F7EFFEFDEDAA
            07C0FCEDC69E35E1EC7F33B852EF646887B597DC40A29642BC7C04AB1BE70208
            05A2C7DF5D057F4B8DB003F9F9BEEF4C4518A26D55CAF259182C27B291946A43
            B1438E2070DE5AACF868F016678F28A0002CA089AEB34659CA3230D20E6D3ED2
            CA998A308C7DC4504273AD6370B66EAE10168635913730DA8337466EF9585072
            0C4BD00F8AC18147A4E55477253A5E84031706F46150C3BA07E179CBC2E0819C
            66D804C24B1C2CFBEF6BEF3B1BCA8B210CFA4D3C4461C073D6DDED4992E7C8F2
            A98501D7B3D43482DED79C121686007AFC1F6EBBE65CB4EC8878877F47128618
            6ED639B01F43B4A98F2F2C0C81586E44E7E12075CF114918C803CE220883295F
            26D9A3F2220843C7EF02084738BEB03010606830CE7BE7D4BD712461D07BB728
            21C704B112FA948732CBD2266225C85CB87DF1118613D120495C36FB18993098
            527239E53F302CEC0D5118F4DE2DD879289230904ECB56944D218E7A1464F264
            41BE0E4E8FC557AD439DEF7F7873FFC6D7CF2ADBDF4FDFD9BB79BE931DDAFE2E
            8CCA57D9303061C8A1BB70E82A0C7A2F17948E2D9230987A37E7F59455754720
            0CA6E9045528730C6130B9E3274D2FC89E8F0450644C3234E4D0212AB930C872
            F5DE2D34D3500E71323899B67E83444C961B431866D05DA74A3A6A6061208022
            74D6344C87A6D7F05A848A280C26DFFE90DD931CE20803968B62AD3FCE2F3433
            52AC9C8FA67A4D961784852110396CC51B3057DE76BE592CBDC6A0FC187AECAC
            C0B3C145CE126DDA4E461B9D1E0DA095194B18B01E742143829CE67C99BC3028
            CF0C708E7790DFC54547FD81245EABCA965E033D1FEF79D816451864D9A63931
            DA77E0E1BF9143DC07CE2CA08979D1C19EF8A147BD467B7625755E1029E21FF9
            4CF558182E4E034A904F0D86C6D1E444FB6CFB583AAC1F5B809577A28D9E5E03
            598803FDDC2B69DB99E1BB088A1406A891C74A68F5A08F925A4A79601DEA815E
            6A1E89F6A9CD33FD7C898501CB3E06FBD3A416D2DE177ABD2AD73B87652E8C7D
            88B883B022F4BFAF6EDBFA6DF376148A9DCE7E112C0CB4F1F01584CF610B08CC
            A06D814C18A49D39AC8E02F5825218147BFB12F18490E2D995AE382FBAB23008
            42CB90E0D0F43E85C7DA9A39215C2115066927DA677B749B2FD1B274AF8871F1
            25D6D3AED1461487FDC0A210E7A96D1461C8A02E7F04BB213FC9E05034C79B2E
            65EA10AF31E08E005E80DCF1EB280225343E07C1597D0DB615D236DFBAAAA099
            1AE1F124566A3A19EA3D07BF91576B6309CD348CBC1E0DF616B05EAE8D3E9B4B
            793C89E9BE5C2F1F58AB4F6156F1FF507D9F3A8DF824AAB8444AED860DB09DA3
            B5734B1535B7E2DBFC8A9BF06997E2D5CE7173699B9AEF11A96099C005FD27AA
            4DD8A6D9D9AE1DA8769AEAAFB5F379CA9800AD5E4DE9F3D47C9A953C92D9ACE4
            DAC861790F5C9676816263E9E2436382858161980E2C0C0CC37460616018A603
            0B03C3301D58181886E9C0C2C0304C07160686613A7484E1D5EE9E9E7B7090B0
            30304C3C3AC2F0A777EE143B3B9762F8EA93529F9F17D7BF7A96342F1EC36C2B
            C66095D7BBEF8BE944364B6D9C8D4DE59D6498A9628D623B7DF7CEC7E7595688
            8FE4A98D5C5257421516FFF8D77F1EAE7A3626C330FE9087B7320C337E581818
            86E9C0C2C0304C87FF01ED0632D12ECA85D70000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 434.645950000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = dataset_pront
        DataSetName = 'dateset_pront'
        RowCount = 0
        object memo_nome: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 64.252010000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Nome do M'#233'dico:')
          ParentFont = False
          VAlign = vaCenter
        end
        object memo_nasc: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 86.929190000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Nome do Paciente:')
          ParentFont = False
          VAlign = vaCenter
        end
        object db_nasc: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 131.063080000000000000
          Top = 89.929190000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataField = 'nome_pac'
          DataSet = dataset_pront
          DataSetName = 'dateset_pront'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dateset_pront."nome_pac"]')
          ParentFont = False
        end
        object db_nome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 123.724490000000000000
          Top = 65.252010000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'nome_med'
          DataSet = dataset_pront
          DataSetName = 'dateset_pront'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dateset_pront."nome_med"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object memo_cpf: TfrxMemoView
          AllowVectorExport = True
          Left = 336.968770000000000000
          Top = 86.929190000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
          VAlign = vaCenter
        end
        object db_cpf: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 369.543600000000000000
          Top = 89.708720000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'cpf_pac'
          DataSet = dataset_pront
          DataSetName = 'dateset_pront'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dateset_pront."cpf_pac"]')
          ParentFont = False
        end
        object memo_email: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 140.622140000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Hora da Consulta:')
          ParentFont = False
          VAlign = vaCenter
        end
        object db_email: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 131.842610000000000000
          Top = 140.401670000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataField = 'hora_cons'
          DataSet = dataset_pront
          DataSetName = 'dateset_pront'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dateset_pront."hora_cons"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 291.023810000000000000
          Height = 34.015770000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Malgun Gothic'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Informa'#231#245'es:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 7.559060000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = -1
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Data da Consulta:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 130.283550000000000000
          Top = 120.944960000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'data_cons'
          DataSet = dataset_pront
          DataSetName = 'dateset_pront'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dateset_pront."data_cons"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 336.968770000000000000
          Top = 64.252010000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'CRM:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 374.543600000000000000
          Top = 67.031540000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'crm_med'
          DataSet = dataset_pront
          DataSetName = 'dateset_pront'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dateset_pront."crm_med"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 196.535560000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Queixa Principal:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 222.992270000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Hist'#243'ria Atual:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 101.047310000000000000
          Top = 225.992270000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          DataField = 'hist_atual'
          DataSet = dataset_pront
          DataSetName = 'dateset_pront'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dateset_pront."hist_atual"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 119.944960000000000000
          Top = 196.535560000000000000
          Width = 589.606680000000000000
          Height = 18.897650000000000000
          DataField = 'queixa_principal'
          DataSet = dataset_pront
          DataSetName = 'dateset_pront'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dateset_pront."queixa_principal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 395.630180000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Data do Registro:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 395.630180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'data_registro'
          DataSet = dataset_pront
          DataSetName = 'dateset_pront'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dateset_pront."data_registro"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 245.669450000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Antecedentes:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 270.126160000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Hist'#243'ria Atual:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 101.047310000000000000
          Top = 273.126160000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          DataField = 'hist_atual'
          DataSet = dataset_pront
          DataSetName = 'dateset_pront'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dateset_pront."hist_atual"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 101.047310000000000000
          Top = 247.669450000000000000
          Width = 589.606680000000000000
          Height = 18.897650000000000000
          DataField = 'antecedentes'
          DataSet = dataset_pront
          DataSetName = 'dateset_pront'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dateset_pront."antecedentes"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 294.803340000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = dataset_pront
          DataSetName = 'dateset_pront'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Receita:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 63.252010000000000000
          Top = 297.803340000000000000
          Width = 646.299630000000000000
          Height = 18.897650000000000000
          DataField = 'receita'
          DataSet = dataset_pront
          DataSetName = 'dateset_pront'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dateset_pront."receita"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 317.480520000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataSet = dataset_pront
          DataSetName = 'dateset_pront'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 93.488250000000000000
          Top = 320.480520000000000000
          Width = 646.299630000000000000
          Height = 18.897650000000000000
          DataField = 'observacoes'
          DataSet = dataset_pront
          DataSetName = 'dateset_pront'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dateset_pront."observacoes"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 347.716760000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Nirmala UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Dura'#231#227'o:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 68.811070000000000000
          Top = 350.496290000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'duracao_cons'
          DataSet = dataset_pront
          DataSetName = 'dateset_pront'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[dateset_pront."duracao_cons"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 710.551640000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo5: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 665.197280000000000000
        Width = 718.110700000000000000
      end
    end
  end
end
