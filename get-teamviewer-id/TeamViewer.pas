unit TeamViewer;

interface

uses
  System.SysUtils,      // FreeAndNil
  System.Win.Registry,  // TRegistry
  Winapi.Windows;       // HKEY_LOCAL_MACHINE

const
  REG_KEY_TEAMVIEWER8 =  '\SOFTWARE\Wow6432Node\TeamViewer\Version8';
  REG_VAL_CLIENTID    =  'ClientID';

function getTeamViewerID: string;

implementation

function getTeamViewerID: string;
var
  Reg: TRegistry;
  TeamViewerID: String;
begin
  TeamViewerID:='';
  Reg:=TRegistry.Create;
  try
    Reg.RootKey:=HKEY_LOCAL_MACHINE;
    if Reg.OpenKey(REG_KEY_TEAMVIEWER8, False) then
    begin
      TeamViewerID:=Format('%d',[Reg.ReadInteger(REG_VAL_CLIENTID)]);
    end;
    Reg.CloseKey;
  finally
    Result:=TeamViewerID;
    FreeAndNil(Reg);
  end;
end;

end.
