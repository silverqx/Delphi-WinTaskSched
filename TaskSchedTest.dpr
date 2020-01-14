program TaskSchedTest;

uses
  Vcl.Forms,
  TaskMain in 'TaskMain.pas' {MainForm},
  TaskSchedApi in 'units\TaskSchedApi.pas',
  WinTask in 'units\WinTask.pas',
  WinTaskConsts in 'units\WinTaskConsts.pas';

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
