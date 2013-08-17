program DemoScreenCapture;

uses
  Vcl.Forms,
  FormMain in 'FormMain.pas' {Form1},
  ScreenCapture in 'ScreenCapture.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
