
{$define CONSOLE}

program Test;

{$i deltics.inc}

{$ifdef DELPHI7__}
  uses
    SysUtils,
    Deltics.Smoketest,
    TestConsts in 'TestConsts.pas',
    TestCore in 'TestCore.pas',
    TestVersionDefines in 'TestVersionDefines.pas',
    TestCompatibilityCheck in 'TestCompatibilityCheck.pas',
    Test.CompilerSupportForLanguageFeatures in 'Test.CompilerSupportForLanguageFeatures.pas';

begin
  TestRun.Environment := 'Delphi ' + Uppercase(DELPHI_VERSION);

  TestRun.Test(TCoreFunctionality);
  TestRun.Test(TCompatibilityCheck);
  TestRun.Test(TVersionDefines, UpperCase(DELPHI_VERSION));

{$else}

uses
  Test.CompilerSupportForLanguageFeatures in 'Test.CompilerSupportForLanguageFeatures.pas';

begin
  WriteLn('No automated tests are provided for Delphi versions 1 thru 6.  Use at your own risk.');

{$endif}

end.

