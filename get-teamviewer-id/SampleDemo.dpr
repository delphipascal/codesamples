program SampleDemo;

uses
  Vcl.Forms,
  FormMain in 'FormMain.pas' {FrmMain},
  TeamViewer in 'TeamViewer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
