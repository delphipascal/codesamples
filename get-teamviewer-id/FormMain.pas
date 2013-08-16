unit FormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Winapi.ShellAPI, TeamViewer;

type
  TFrmMain = class(TForm)
    btnGet: TButton;
    Label1: TLabel;
    lnkDelphiPascal: TLinkLabel;
    procedure lnkDelphiPascalLinkClick(Sender: TObject; const Link: string;
      LinkType: TSysLinkType);
    procedure btnGetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.btnGetClick(Sender: TObject);
var
  TeamViewerID: string;
begin
  TeamViewerID:=TeamViewer.getTeamViewerID;
  MessageBox(Handle,
    PWideChar(Format('TeamViewerID komputer ini adalah: '#13#13'%s',[TeamViewerID])),
    'TeamViewerID',
    MB_OK or MB_ICONINFORMATION);
end;

procedure TFrmMain.lnkDelphiPascalLinkClick(Sender: TObject; const Link: string;
  LinkType: TSysLinkType);
begin
  ShellExecute(Application.Handle, 'open', PWideChar(Link), nil, nil,
    SW_SHOWNORMAL);
end;

end.
