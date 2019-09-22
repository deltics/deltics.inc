
  unit TestCore;

{$i deltics.inc}

interface

  uses
    Deltics.Smoketest;

  type
    TCoreFunctionality = class(TTest)
      procedure DelphiVersionIsIdentified;
      procedure DelphiVersionIsTheExpectedVersion;
    end;



implementation

  uses
    SysUtils,
    TestConsts;


  procedure TCoreFunctionality.DelphiVersionIsIdentified;
  begin
    Assert('UNKNOWN_COMPILER_VERSION is not defined',
           {$ifdef UNKNOWN_COMPILER_VERSION} FALSE {$else} TRUE {$endif},
           'UNKNOWN_COMPILER_VERSION *is* defined!');
  end;


  procedure TCoreFunctionality.DelphiVersionIsTheExpectedVersion;
  var
    expectedVersion: String;
  begin
    TestRun.HasCmdLineOption('delphiVersion', expectedVersion);

    if NOT Assert('Expected version = Detected version',
                  SameText(expectedVersion, DELPHI_VERSION),
                  Format('Expected version ''%s'', Detected version %s.  (Was the correct value passed in the -delphiVersion command-line option ?)', [expectedVersion, DELPHI_VERSION])) then
      AbortTestRun;
  end;



end.
