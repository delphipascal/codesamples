unit FormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ScreenCapture, Winapi.ShellAPI,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    btnCaptureForm: TButton;
    dlgSave: TSaveDialog;
    btnCaptureDesktop: TButton;
    Label1: TLabel;
    lnklblDelphiPascal: TLinkLabel;
    procedure btnCaptureFormClick(Sender: TObject);
    procedure btnCaptureDesktopClick(Sender: TObject);
    procedure lnklblDelphiPascalLinkClick(Sender: TObject; const Link: string;
      LinkType: TSysLinkType);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Capture(TargetHandle: HWND; FileName: TFileName);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCaptureFormClick(Sender: TObject);
begin
  if dlgSave.Execute(Handle) then
  begin
    Application.Restore;
    Application.BringToFront;
    Sleep(1000);
    Capture(Self.Handle, dlgSave.FileName);
  end;
end;

procedure TForm1.Capture(TargetHandle: HWND; FileName: TFileName);
begin
  ScreenCapture.CaptureWindowToFile(TargetHandle, dlgSave.FileName);
  Application.Restore;
  Application.BringToFront;
  if MessageBox(Handle, 'Capture Window Berhasil. Anda mau lihat hasilnya?', 'Capture Window', MB_YESNO or MB_ICONQUESTION)=IDYES then
  begin
    ShellExecute(Handle, 'open', PWideChar(dlgSave.FileName), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TForm1.lnklblDelphiPascalLinkClick(Sender: TObject;
  const Link: string; LinkType: TSysLinkType);
begin
  ShellExecute(Application.Handle, 'open', PWideChar(Link), nil, nil,
    SW_SHOWNORMAL);
end;

procedure TForm1.btnCaptureDesktopClick(Sender: TObject);
begin
  if dlgSave.Execute(Handle) then
  begin
    Application.Minimize;
    Sleep(1000);
    Capture(GetDesktopWindow, dlgSave.FileName);
  end;
end;

end.
