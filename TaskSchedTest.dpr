program TaskSchedTest;

uses
  Vcl.Forms,
  TaskMain in 'TaskMain.pas' {MainForm};

{$R *.res}

begin
{$IFDEF DEBUG}
{$WARN SYMBOL_PLATFORM OFF}
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;
{$WARN SYMBOL_PLATFORM ON}
{$ENDIF}

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
