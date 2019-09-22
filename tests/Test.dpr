
{$apptype CONSOLE}

{$i deltics.inc}

program Test;

{$ifdef DELPHI7__}
  uses
    SysUtils,
    Deltics.Smoketest,
    TestConsts in 'TestConsts.pas',
    TestCore in 'TestCore.pas',
    TestVersionDefines in 'TestVersionDefines.pas';

begin
  TestRun.Environment := 'Delphi ' + Uppercase(DELPHI_VERSION);
  try
    TestRun.Test(TCoreFunctionality);
    TestRun.Test(TVersionDefines, UpperCase(DELPHI_VERSION));

  except
    on e: Exception do
      WriteLn('ERROR: ' + e.Message);
  end;

{$else}
begin
  WriteLn('No automated tests are provided for Delphi versions 1 thru 6.  Use at your own risk.');
{$endif}

end.

