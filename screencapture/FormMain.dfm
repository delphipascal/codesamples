object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Self Screen Capture - DelphiPascal.com'
  ClientHeight = 132
  ClientWidth = 359
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
    Top = 16
    Width = 330
    Height = 26
    Caption = 
      'Klik Capture Form untuk capture form ini dan Capture Desktop unt' +
      'uk capture layar Anda.'
    WordWrap = True
  end
  object btnCaptureForm: TButton
    Left = 16
    Top = 72
    Width = 113
    Height = 25
    Caption = 'Capture Form'
    TabOrder = 0
    OnClick = btnCaptureFormClick
  end
  object btnCaptureDesktop: TButton
    Left = 140
    Top = 72
    Width = 113
    Height = 25
    Caption = 'Capture Desktop'
    TabOrder = 1
    OnClick = btnCaptureDesktopClick
  end
  object lnklblDelphiPascal: TLinkLabel
    Left = 16
    Top = 107
    Width = 283
    Height = 17
    Caption = 
      'Lihat CodeSamples lainnya di <a href=" http://delphipascal.com">' +
      'DelphiPascal.com</a> dan <a href="https://github.com/delphipasca' +
      'l/">GitHub</a>'
    TabOrder = 2
    OnLinkClick = lnklblDelphiPascalLinkClick
  end
  object dlgSave: TSaveDialog
    DefaultExt = '*.png'
    Filter = 'PNG File|*.png|All file|*.*'
    Title = 'Save screen capture'
    Left = 308
    Top = 16
  end
end
