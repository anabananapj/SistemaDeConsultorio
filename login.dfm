object frm_login: Tfrm_login
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = '+Sa'#250'de - Login'
  ClientHeight = 729
  ClientWidth = 1350
  Color = 3416861
  Constraints.MaxHeight = 768
  Constraints.MaxWidth = 1366
  Constraints.MinHeight = 768
  Constraints.MinWidth = 1366
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object pn_login: TPanel
    Left = 168
    Top = 48
    Width = 481
    Height = 593
    BevelOuter = bvNone
    Color = 1708559
    ParentBackground = False
    TabOrder = 0
    object lb_saúde: TLabel
      Left = 167
      Top = 144
      Width = 194
      Height = 78
      Alignment = taCenter
      Caption = 'sa'#250'de'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -64
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
    end
    object Image1: TImage
      Left = 104
      Top = 157
      Width = 57
      Height = 65
      Constraints.MaxHeight = 1366
      Constraints.MaxWidth = 768
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000330000
        00420806000000FADFEE4E000000097048597300000B1300000B1301009A9C18
        000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000001
        D54944415478DAED9A414EC2401486DF9B76E192231491C4186AF006B0C3BAE1
        06C209D0130837E006C2097405ECE0088DE20A08BD81AC0C0B9CE734C48D3060
        28D2A9BC6FD334AF9DFE5FDAB493D741504C2FBD074978074029481E814068A5
        5F3A0D9C281120A8C79D2832044AC6BD794FE81DF9C94CC97814778A7DC132A6
        C232A6C232A68263F7BA8F8085B8834416211AE0345F72E427F6D5AE1377A0DD
        A1405854C4EF5D7587CA3281330124086C7BEEA7FDC10CA30F670E2C632A2B32
        63D7AB10811377B0ADC1510667AFBDD6169964BCAAC357F1E9B05B6419D36019
        5361195361195361195339B00C051BA23889919192EEB36FDDA6AE1E4E66D585
        1F932143B2981DF606BAFA28572A08147D96611996611996D9930C0592A86A2F
        20D01E72329F854DB94D61A6E725475B142225ADB0CBAA6F4AEE4566DD207FC1
        2E395886655886657E3F0810F99961F7EA7FC82C8D9ED5A9DAEF88B06423EDF7
        025D7D7AE1E5A505356D502087B664E01900CBB00CCBB0CCF1CAA8EFC46001D4
        D6D52D123575503E11328780654C85654C85654CE5F86426AEF7A436E5B8C3EE
        4566EC962A0822D25FAD434020AB5B97682D850C7FD408FCCCB0B3D287D0AE04
        1CE5BCBA40BA356B556DD8E7C6B66D7F34D7F5B2BF00A19869453FFD68EF0000
        000049454E44AE426082}
    end
    object edt_senha: TEdit
      Left = 120
      Top = 296
      Width = 241
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '963'
      TextHint = 'senha'
    end
    object edt_login: TEdit
      Left = 120
      Top = 261
      Width = 241
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '963'
      TextHint = 'CPF ou CRM'
    end
    object btn_entrar: TPanel
      Left = 167
      Top = 383
      Width = 138
      Height = 41
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Entrar'
      Color = 6044927
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnClick = btn_entrarClick
    end
  end
  object query_login: TFDQuery
    Connection = DTConnection.FDConnection1
    SQL.Strings = (
      'select * from usuarios')
    Left = 48
    Top = 32
  end
end
