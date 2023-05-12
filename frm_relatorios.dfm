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
    object btn_api: TButton
      Left = 16
      Top = 66
      Width = 75
      Height = 25
      Caption = 'Desafio'
      TabOrder = 1
      OnClick = btn_apiClick
    end
  end
  object response: TRESTResponse
    Left = 25
    Top = 9
  end
  object request: TRESTRequest
    Client = client
    Params = <>
    Response = response
    Left = 105
    Top = 9
  end
  object client: TRESTClient
    Params = <>
    Left = 185
    Top = 9
  end
end
