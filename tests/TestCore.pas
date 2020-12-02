
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
    Test('UNKNOWN_COMPILER_VERSION').Assert({$ifdef UNKNOWN_COMPILER_VERSION} FALSE {$else} TRUE {$endif});
  end;


  procedure TCoreFunctionality.DelphiVersionIsTheExpectedVersion;
  const
    versionAccordingToDelticsInc = {$ifdef DELPHI1} '1' {$endif}
                                   {$ifdef DELPHI2} '2' {$endif}
                                   {$ifdef DELPHI3} '3' {$endif}
                                   {$ifdef DELPHI4} '4' {$endif}
                                   {$ifdef DELPHI5} '5' {$endif}
                                   {$ifdef DELPHI6} '6' {$endif}
                                   {$ifdef DELPHI7} '7' {$endif}
                                   {$ifdef DELPHI8} '8' {$endif}

                                   {$ifdef DELPHI2005} '2005' {$endif}
                                   {$ifdef DELPHI2006} '2006' {$endif}
                                   {$ifdef DELPHI2007} '2007' {$endif}
                                   {$ifdef DELPHI2009} '2009' {$endif}
                                   {$ifdef DELPHI2010} '2010' {$endif}

                                   {$ifdef DELPHIXE}  'xe'  {$endif}
                                   {$ifdef DELPHIXE2} 'xe2' {$endif}
                                   {$ifdef DELPHIXE3} 'xe3' {$endif}
                                   {$ifdef DELPHIXE4} 'xe4' {$endif}
                                   {$ifdef DELPHIXE5} 'xe5' {$endif}
                                   {$ifdef DELPHIXE6} 'xe6' {$endif}
                                   {$ifdef DELPHIXE7} 'xe7' {$endif}
                                   {$ifdef DELPHIXE8} 'xe8' {$endif}

                                   {$ifdef DELPHI10' } '10'    {$endif}
                                   {$ifdef DELPHI10_1'} '10.1' {$endif}
                                   {$ifdef DELPHI10_2'} '10.2' {$endif}
                                   {$ifdef DELPHI10_3'} '10.3' {$endif}
                                   {$ifdef DELPHI10_4'} '10.4' {$endif};
  begin
    if Test('Detected compiler version').Assert(versionAccordingToDelticsInc).Equals(DELPHI_VERSION).Failed then
      AbortTestRun;
  end;



end.
