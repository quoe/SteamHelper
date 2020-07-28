program SteamHelper;



uses
  Forms,
  Unit1 in 'Unit1.pas' {MainSteamHelperForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Steam Helper';
  Application.CreateForm(TMainSteamHelperForm, MainSteamHelperForm);

  if MainSteamHelperForm.MainMenuToTray.Checked then Application.ShowMainForm := FALSE
  else
    Application.ShowMainForm := TRUE;

  Application.Run;
end.
