object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Get TeamViewerID - DelphiPascal.com'
  ClientHeight = 150
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 17
    Width = 370
    Height = 13
    Caption = 
      'Jalankan program sebagai Administrator, dan klik button '#39'Get Tem' +
      'Viewer ID'#39
  end
  object btnGet: TButton
    Left = 140
    Top = 57
    Width = 133
    Height = 25
    Caption = 'Get TeamViewer ID'
    TabOrder = 0
    OnClick = btnGetClick
  end
  object lnkDelphiPascal: TLinkLabel
    Left = 16
    Top = 117
    Width = 370
    Height = 17
    Caption = 
      'Lihat CodeSamples lainnya di <a href=" http://delphipascal.com">' +
      'DelphiPascal.com</a> dan <a href="https://github.com/delphipasca' +
      'l/">GitHub</a>'
    TabOrder = 1
    OnLinkClick = lnkDelphiPascalLinkClick
  end
end
