
  unit TestVersionDefines;

{$i deltics.inc}

interface

  uses
    Deltics.Smoketest;

  type
    TVersionDefines = class(TTest)
      procedure DelphiVersionAndEarlierCorrectlyIdentified;
      procedure DelphiVersionAndLaterCorrectlyIdentified;
      procedure DelphiVersionCorrectlyIdentified;
    end;


implementation

  uses
    TestConsts;

  {$warnings off}
  {
    Whatever version of Delphi we are compiling with, some of the comparisons in
     these tests will generate "comparison is always true' warnings, which we
     don't care about and can (and should) ignore.
  }
  procedure TVersionDefines.DelphiVersionCorrectlyIdentified;
  begin
    {$ifdef DELPHI1}
      Test('DELPHI1 defined').Assert(COMPILER_VERSION = DELPHI_1);
    {$else}
      Test('DELPHI1 not defined').Assert(COMPILER_VERSION <> DELPHI_1);
    {$endif};

    {$ifdef DELPHI2}
      Test('DELPHI2 defined').Assert(COMPILER_VERSION = DELPHI_2);
    {$else}
      Test('DELPHI2 not defined').Assert(COMPILER_VERSION <> DELPHI_2);
    {$endif};

    {$ifdef DELPHI3}
      Test('DELPHI3 defined').Assert(COMPILER_VERSION = DELPHI_3);
    {$else}
      Test('DELPHI3 not defined').Assert(COMPILER_VERSION <> DELPHI_3);
    {$endif};

    {$ifdef DELPHI4}
      Test('DELPHI4 defined').Assert(COMPILER_VERSION = DELPHI_4);
    {$else}
      Test('DELPHI4 not defined').Assert(COMPILER_VERSION <> DELPHI_4);
    {$endif};

    {$ifdef DELPHI5}
      Test('DELPHI5 defined').Assert(COMPILER_VERSION = DELPHI_5);
    {$else}
      Test('DELPHI5 not defined').Assert(COMPILER_VERSION <> DELPHI_5);
    {$endif};

    {$ifdef DELPHI6}
      Test('DELPHI6 defined').Assert(COMPILER_VERSION = DELPHI_6);
    {$else}
      Test('DELPHI6 not defined').Assert(COMPILER_VERSION <> DELPHI_6);
    {$endif};

    {$ifdef DELPHI7}
      Test('DELPHI7 defined').Assert(COMPILER_VERSION = DELPHI_7);
    {$else}
      Test('DELPHI7 not defined').Assert(COMPILER_VERSION <> DELPHI_7);
    {$endif};

    {$ifdef DELPHI8} // Not supported, a test would be meaningless
    {$endif}

    // Anniversary versions (2xxx)

    {$ifdef DELPHI2005}
      Test('DELPHI2005 defined').Assert(COMPILER_VERSION = DELPHI_2005);
    {$else}
      Test('DELPHI2005 not defined').Assert(COMPILER_VERSION <> DELPHI_2005);
    {$endif};

    {$ifdef DELPHI2006}
      Test('DELPHI2006 defined').Assert(COMPILER_VERSION = DELPHI_2006);
    {$else}
      Test('DELPHI2006 not defined').Assert(COMPILER_VERSION <> DELPHI_2006);
    {$endif};

    {$ifdef DELPHI2007}
      Test('DELPHI2007 defined').Assert(COMPILER_VERSION = DELPHI_2007);
    {$else}
      Test('DELPHI2007 not defined').Assert(COMPILER_VERSION <> DELPHI_2007);
    {$endif};

    {$ifdef DELPHI2009}
      Test('DELPHI2009 defined').Assert(COMPILER_VERSION = DELPHI_2009);
    {$else}
      Test('DELPHI2009 not defined').Assert(COMPILER_VERSION <> DELPHI_2009);
    {$endif};

    {$ifdef DELPHI2010}
      Test('DELPHI2010 defined').Assert(COMPILER_VERSION = DELPHI_2010);
    {$else}
      Test('DELPHI2010 not defined').Assert(COMPILER_VERSION <> DELPHI_2010);
    {$endif};

    // XE and later

    {$ifdef DELPHIXE}
      Test('DELPHIXE defined').Assert(COMPILER_VERSION = DELPHI_XE);
    {$else}
      Test('DELPHIXE not defined').Assert(COMPILER_VERSION <> DELPHI_XE);
    {$endif};

    {$ifdef DELPHIXE2}
      Test('DELPHIXE2 defined').Assert(COMPILER_VERSION = DELPHI_XE2);
    {$else}
      Test('DELPHIXE2 not defined').Assert(COMPILER_VERSION <> DELPHI_XE2);
    {$endif};

    {$ifdef DELPHIXE3}
      Test('DELPHIXE3 defined').Assert(COMPILER_VERSION = DELPHI_XE3);
    {$else}
      Test('DELPHIXE3 not defined').Assert(COMPILER_VERSION <> DELPHI_XE3);
    {$endif};

    {$ifdef DELPHIXE4}
      Test('DELPHIXE4 defined').Assert(COMPILER_VERSION = DELPHI_XE4);
    {$else}
      Test('DELPHIXE4 not defined').Assert(COMPILER_VERSION <> DELPHI_XE4);
    {$endif};

    {$ifdef DELPHIXE5}
      Test('DELPHIXE5 defined').Assert(COMPILER_VERSION = DELPHI_XE5);
    {$else}
      Test('DELPHIXE5 not defined').Assert(COMPILER_VERSION <> DELPHI_XE5);
    {$endif};

    {$ifdef DELPHIXE6}
      Test('DELPHIXE6 defined').Assert(COMPILER_VERSION = DELPHI_XE6);
    {$else}
      Test('DELPHIXE6 not defined').Assert(COMPILER_VERSION <> DELPHI_XE6);
    {$endif};

    {$ifdef DELPHIXE7}
      Test('DELPHIXE7 defined').Assert(COMPILER_VERSION = DELPHI_XE7);
    {$else}
      Test('DELPHIXE7 not defined').Assert(COMPILER_VERSION <> DELPHI_XE7);
    {$endif};

    {$ifdef DELPHIXE8}
      Test('DELPHIXE8 defined').Assert(COMPILER_VERSION = DELPHI_XE8);
    {$else}
      Test('DELPHIXE8 not defined').Assert(COMPILER_VERSION <> DELPHI_XE8);
    {$endif};

    // 10.x versions

    {$ifdef DELPHI10}
      Test('DELPHI10 defined').Assert(COMPILER_VERSION = DELPHI_10);
    {$else}
      Test('DELPHI10 not defined').Assert(COMPILER_VERSION <> DELPHI_10);
    {$endif};

    {$ifdef DELPHI10_1}
      Test('DELPHI10_1 defined').Assert(COMPILER_VERSION = DELPHI_10_1);
    {$else}
      Test('DELPHI10_1 not defined').Assert(COMPILER_VERSION <> DELPHI_10_1);
    {$endif};

    {$ifdef DELPHI10_2}
      Test('DELPHI10_2 defined').Assert(COMPILER_VERSION = DELPHI_10_2);
    {$else}
      Test('DELPHI10_2 not defined').Assert(COMPILER_VERSION <> DELPHI_10_2);
    {$endif};

    {$ifdef DELPHI10_3}
      Test('DELPHI10_3 defined').Assert(COMPILER_VERSION = DELPHI_10_3);
    {$else}
      Test('DELPHI10_3 not defined').Assert(COMPILER_VERSION <> DELPHI_10_3);
    {$endif};

    // 10.x city name defines

    {$ifdef SEATTLE}
      Test('SEATTLE defined').Assert(COMPILER_VERSION = DELPHI_10);
    {$else}
      Test('SEATTLE not defined').Assert(COMPILER_VERSION <> DELPHI_10);
    {$endif};

    {$ifdef BERLIN}
      Test('BERLIN defined').Assert(COMPILER_VERSION = DELPHI_10_1);
    {$else}
      Test('BERLIN not defined').Assert(COMPILER_VERSION <> DELPHI_10_1);
    {$endif};

    {$ifdef TOKYO}
      Test('TOKYO defined').Assert(COMPILER_VERSION = DELPHI_10_2);
    {$else}
      Test('TOKYO not defined').Assert(COMPILER_VERSION <> DELPHI_10_2);
    {$endif};

    {$ifdef RIO}
      Test('RIO defined').Assert(COMPILER_VERSION = DELPHI_10_3);
    {$else}
      Test('RIO not defined').Assert(COMPILER_VERSION <> DELPHI_10_3);
    {$endif};
  end;


  procedure TVersionDefines.DelphiVersionAndEarlierCorrectlyIdentified;
  begin
    {$ifdef __DELPHI1}
      Test('__DELPHI1 defined').Assert(COMPILER_VERSION <= DELPHI_1);
    {$else}
      Test('__DELPHI1 not defined').Assert(COMPILER_VERSION >= DELPHI_1);
    {$endif}

    {$ifdef __DELPHI2}
      Test('__DELPHI2 defined').Assert(COMPILER_VERSION <= DELPHI_2);
    {$else}
      Test('__DELPHI2 not defined').Assert(COMPILER_VERSION >= DELPHI_2);
    {$endif}

    {$ifdef __DELPHI3}
      Test('__DELPHI3 defined').Assert(COMPILER_VERSION <= DELPHI_3);
    {$else}
      Test('__DELPHI3 not defined').Assert(COMPILER_VERSION >= DELPHI_3);
    {$endif}

    {$ifdef __DELPHI4}
      Test('__DELPHI4 defined').Assert(COMPILER_VERSION <= DELPHI_4);
    {$else}
      Test('__DELPHI4 not defined').Assert(COMPILER_VERSION >= DELPHI_4);
    {$endif}

    {$ifdef __DELPHI5}
      Test('__DELPHI5 defined').Assert(COMPILER_VERSION <= DELPHI_5);
    {$else}
      Test('__DELPHI5 not defined').Assert(COMPILER_VERSION >= DELPHI_5);
    {$endif}

    {$ifdef __DELPHI6}
      Test('__DELPHI6 defined').Assert(COMPILER_VERSION <= DELPHI_6);
    {$else}
      Test('__DELPHI6 not defined').Assert(COMPILER_VERSION >= DELPHI_6);
    {$endif}

    {$ifdef __DELPHI7}
      Test('__DELPHI7 defined').Assert(COMPILER_VERSION <= DELPHI_7);
    {$else}
      Test('__DELPHI7 not defined').Assert(COMPILER_VERSION >= DELPHI_7);
    {$endif}

    {$ifdef __DELPHI8} // Not supported, a test would be meaningless
    {$endif}

    // Anniversary versions (2xxx)

    {$ifdef __DELPHI2005}
      Test('__DELPHI2005 defined').Assert(COMPILER_VERSION <= DELPHI_2005);
    {$else}
      Test('__DELPHI2005 not defined').Assert(COMPILER_VERSION >= DELPHI_2005);
    {$endif}

    {$ifdef __DELPHI2006}
      Test('__DELPH2006 defined').Assert(COMPILER_VERSION <= DELPHI_2006);
    {$else}
      Test('__DELPH2006 not defined').Assert(COMPILER_VERSION >= DELPHI_2006);
    {$endif}

    {$ifdef __DELPHI2007}
      Test('__DELPHI2007 defined').Assert(COMPILER_VERSION <= DELPHI_2007);
    {$else}
      Test('__DELPHI2007 not defined').Assert(COMPILER_VERSION >= DELPHI_2007);
    {$endif}

    {$ifdef __DELPHI2009}
      Test('__DELPHI2009 defined').Assert(COMPILER_VERSION <= DELPHI_2009);
    {$else}
      Test('__DELPHI2009 not defined').Assert(COMPILER_VERSION >= DELPHI_2009);
    {$endif}

    {$ifdef __DELPHI2010}
      Test('__DELPHI2010 defined').Assert(COMPILER_VERSION <= DELPHI_2010);
    {$else}
      Test('__DELPHI2010 not defined').Assert(COMPILER_VERSION >= DELPHI_2010);
    {$endif}

    // XE versions

    {$ifdef __DELPHIXE}
      Test('__DELPHIXE defined').Assert(COMPILER_VERSION <= DELPHI_XE);
    {$else}
      Test('__DELPHIXE not defined').Assert(COMPILER_VERSION >= DELPHI_XE);
    {$endif}

    {$ifdef __DELPHIXE2}
      Test('__DELPHIXE2 defined').Assert(COMPILER_VERSION <= DELPHI_XE2);
    {$else}
      Test('__DELPHIXE2 not defined').Assert(COMPILER_VERSION >= DELPHI_XE2);
    {$endif}

    {$ifdef __DELPHIXE3}
      Test('__DELPHIXE3 defined').Assert(COMPILER_VERSION <= DELPHI_XE3);
    {$else}
      Test('__DELPHIXE3 not defined').Assert(COMPILER_VERSION >= DELPHI_XE3);
    {$endif}

    {$ifdef __DELPHIXE4}
      Test('__DELPHIXE4 defined').Assert(COMPILER_VERSION <= DELPHI_XE4);
    {$else}
      Test('__DELPHIXE4 not defined').Assert(COMPILER_VERSION >= DELPHI_XE4);
    {$endif}

    {$ifdef __DELPHIXE5}
      Test('__DELPHIXE5 defined').Assert(COMPILER_VERSION <= DELPHI_XE5);
    {$else}
      Test('__DELPHIXE5 not defined').Assert(COMPILER_VERSION >= DELPHI_XE5);
    {$endif}

    {$ifdef __DELPHIXE6}
      Test('__DELPHIXE6 defined').Assert(COMPILER_VERSION <= DELPHI_XE6);
    {$else}
      Test('__DELPHIXE6 not defined').Assert(COMPILER_VERSION >= DELPHI_XE6);
    {$endif}

    {$ifdef __DELPHIXE7}
      Test('__DELPHIXE7 defined').Assert(COMPILER_VERSION <= DELPHI_XE7);
    {$else}
      Test('__DELPHIXE7 not defined').Assert(COMPILER_VERSION >= DELPHI_XE7);
    {$endif}

    {$ifdef __DELPHIXE8}
      Test('__DELPHIXE8 defined').Assert(COMPILER_VERSION <= DELPHI_XE8);
    {$else}
      Test('__DELPHIXE8 not defined').Assert(COMPILER_VERSION >= DELPHI_XE8);
    {$endif}

    // 10.x versions

    {$ifdef __DELPHI10}
      Test('__DELPHI10 defined').Assert(COMPILER_VERSION <= DELPHI_10);
    {$else}
      Test('__DELPHI10 not defined').Assert(COMPILER_VERSION >= DELPHI_10);
    {$endif}

    {$ifdef __DELPHI10_1}
      Test('__DELPHI10_1 defined').Assert(COMPILER_VERSION <= DELPHI_10_1);
    {$else}
      Test('__DELPHI10_1 not defined').Assert(COMPILER_VERSION >= DELPHI_10_1);
    {$endif}

    {$ifdef __DELPHI10_2}
      Test('__DELPHI10_2 defined').Assert(COMPILER_VERSION <= DELPHI_10_2);
    {$else}
      Test('__DELPHI10_2 not defined').Assert(COMPILER_VERSION >= DELPHI_10_2);
    {$endif}

    {$ifdef __DELPHI10_3}
      Test('__DELPHI10_3 defined').Assert(COMPILER_VERSION <= DELPHI_10_3);
    {$else}
      Test('__DELPHI10_3 not defined').Assert(COMPILER_VERSION >= DELPHI_10_3);
    {$endif}

    // 10.x city name defines

    {$ifdef __SEATTLE}
      Test('__SEATTLE defined').Assert(COMPILER_VERSION <= DELPHI_10);
    {$else}
      Test('__SEATTLE not defined').Assert(COMPILER_VERSION >= DELPHI_10);
    {$endif}

    {$ifdef __BERLIN}
      Test('__BERLIN defined').Assert(COMPILER_VERSION <= DELPHI_10_1);
    {$else}
      Test('__BERLIN not defined').Assert(COMPILER_VERSION >= DELPHI_10_1);
    {$endif}

    {$ifdef __SEATTLE}
      Test('__TOKYO defined').Assert(COMPILER_VERSION <= DELPHI_10_2);
    {$else}
      Test('__TOKYO not defined').Assert(COMPILER_VERSION >= DELPHI_10_2);
    {$endif}

    {$ifdef __RIO}
      Test('__RIO defined').Assert(COMPILER_VERSION <= DELPHI_10_3);
    {$else}
      Test('__RIO not defined').Assert(COMPILER_VERSION >= DELPHI_10_3);
    {$endif}
  end;


  procedure TVersionDefines.DelphiVersionAndLaterCorrectlyIdentified;
  begin
    {$ifdef DELPHI1__}
      Test('DELPHI1__ defined').Assert(COMPILER_VERSION >= DELPHI_1);
    {$else}
      Test('DELPHI1__ not defined').Assert(COMPILER_VERSION < DELPHI_1);
    {$endif}

    {$ifdef DELPHI2__}
      Test('DELPHI2__ defined').Assert(COMPILER_VERSION >= DELPHI_2);
    {$else}
      Test('DELPHI2__ not defined').Assert(COMPILER_VERSION < DELPHI_2);
    {$endif}

    {$ifdef DELPHI3__}
      Test('DELPHI3__ defined').Assert(COMPILER_VERSION >= DELPHI_3);
    {$else}
      Test('DELPHI3__ not defined').Assert(COMPILER_VERSION < DELPHI_3);
    {$endif}

    {$ifdef DELPHI4__}
      Test('DELPHI4__ defined').Assert(COMPILER_VERSION >= DELPHI_4);
    {$else}
      Test('DELPHI4__ not defined').Assert(COMPILER_VERSION < DELPHI_4);
    {$endif}

    {$ifdef DELPHI5__}
      Test('DELPHI5__ defined').Assert(COMPILER_VERSION >= DELPHI_5);
    {$else}
      Test('DELPHI5__ not defined').Assert(COMPILER_VERSION < DELPHI_5);
    {$endif}

    {$ifdef DELPHI6__}
      Test('DELPHI6__ defined').Assert(COMPILER_VERSION >= DELPHI_6);
    {$else}
      Test('DELPHI6__ not defined').Assert(COMPILER_VERSION < DELPHI_6);
    {$endif}

    {$ifdef DELPHI7__}
      Test('DELPHI7__ defined').Assert(COMPILER_VERSION >= DELPHI_7);
    {$else}
      Test('DELPHI7__ not defined').Assert(COMPILER_VERSION < DELPHI_7);
    {$endif}

    {$ifdef DELPHI8__} // Not supported, a test would be meaningless
    {$endif}

    // Anniversary versions (2xxx)

    {$ifdef DELPHI2005__}
      Test('DELPHI2005__ defined').Assert(COMPILER_VERSION >= DELPHI_2005);
    {$else}
      Test('DELPHI2005__ not defined').Assert(COMPILER_VERSION < DELPHI_2005);
    {$endif}

    {$ifdef DELPHI2006__}
      Test('DELPHI2006__ defined').Assert(COMPILER_VERSION >= DELPHI_2006);
    {$else}
      Test('DELPHI2006__ not defined').Assert(COMPILER_VERSION < DELPHI_2006);
    {$endif}

    {$ifdef DELPHI2007__}
      Test('DELPHI2007__ defined').Assert(COMPILER_VERSION >= DELPHI_2007);
    {$else}
      Test('DELPHI2007__ not defined').Assert(COMPILER_VERSION < DELPHI_2007);
    {$endif}

    {$ifdef DELPHI2009__}
      Test('DELPHI2009__ defined').Assert(COMPILER_VERSION >= DELPHI_2009);
    {$else}
      Test('DELPHI2009__ not defined').Assert(COMPILER_VERSION < DELPHI_2009);
    {$endif}

    {$ifdef DELPHI2010__}
      Test('DELPHI2010__ defined').Assert(COMPILER_VERSION >= DELPHI_2010);
    {$else}
      Test('DELPHI2010__ not defined').Assert(COMPILER_VERSION < DELPHI_2010);
    {$endif}

    // XE versions

    {$ifdef DELPHIXE__}
      Test('DELPHIXE__ defined').Assert(COMPILER_VERSION >= DELPHI_XE);
    {$else}
      Test('DELPHIXE__ not defined').Assert(COMPILER_VERSION < DELPHI_XE);
    {$endif}

    {$ifdef DELPHIXE2__}
      Test('DELPHIXE2__ defined').Assert(COMPILER_VERSION >= DELPHI_XE2);
    {$else}
      Test('DELPHIXE2__ not defined').Assert(COMPILER_VERSION < DELPHI_XE2);
    {$endif}

    {$ifdef DELPHIXE3__}
      Test('DELPHIXE3__ defined').Assert(COMPILER_VERSION >= DELPHI_XE3);
    {$else}
      Test('DELPHIXE3__ not defined').Assert(COMPILER_VERSION < DELPHI_XE3);
    {$endif}

    {$ifdef DELPHIXE4__}
      Test('DELPHIXE4__ defined').Assert(COMPILER_VERSION >= DELPHI_XE4);
    {$else}
      Test('DELPHIXE4__ not defined').Assert(COMPILER_VERSION < DELPHI_XE4);
    {$endif}

    {$ifdef DELPHIXE5__}
      Test('DELPHIXE5__ defined').Assert(COMPILER_VERSION >= DELPHI_XE5);
    {$else}
      Test('DELPHIXE5__ not defined').Assert(COMPILER_VERSION < DELPHI_XE5);
    {$endif}

    {$ifdef DELPHIXE6__}
      Test('DELPHIXE6__ defined').Assert(COMPILER_VERSION >= DELPHI_XE6);
    {$else}
      Test('DELPHIXE6__ not defined').Assert(COMPILER_VERSION < DELPHI_XE6);
    {$endif}

    {$ifdef DELPHIXE7__}
      Test('DELPHIXE7__ defined').Assert(COMPILER_VERSION >= DELPHI_XE7);
    {$else}
      Test('DELPHIXE7__ not defined').Assert(COMPILER_VERSION < DELPHI_XE7);
    {$endif}

    {$ifdef DELPHIXE8__}
      Test('DELPHIXE8__ defined').Assert(COMPILER_VERSION >= DELPHI_XE8);
    {$else}
      Test('DELPHIXE8__ not defined').Assert(COMPILER_VERSION < DELPHI_XE8);
    {$endif}

    // 10.x versions

    {$ifdef DELPHI10__}
      Test('DELPHI10__ defined').Assert(COMPILER_VERSION >= DELPHI_10);
    {$else}
      Test('DELPHI10__ not defined').Assert(COMPILER_VERSION < DELPHI_10);
    {$endif}

    {$ifdef DELPHI10_1__}
      Test('DELPHI10_1__ defined').Assert(COMPILER_VERSION >= DELPHI_10_1);
    {$else}
      Test('DELPHI10_1__ not defined').Assert(COMPILER_VERSION < DELPHI_10_1);
    {$endif}

    {$ifdef DELPHI10_2__}
      Test('DELPHI10_2__ defined').Assert(COMPILER_VERSION >= DELPHI_10_2);
    {$else}
      Test('DELPHI10_2__ not defined').Assert(COMPILER_VERSION < DELPHI_10_2);
    {$endif}

    {$ifdef DELPHI10_3__}
      Test('DELPHI10_3__ defined').Assert(COMPILER_VERSION >= DELPHI_10_3);
    {$else}
      Test('DELPHI10_3__ not defined').Assert(COMPILER_VERSION < DELPHI_10_3);
    {$endif}

    // 10.x city name defines

    {$ifdef SEATTLE__}
      Test('SEATTLE__ defined').Assert(COMPILER_VERSION >= DELPHI_10);
    {$else}
      Test('SEATTLE__ not defined').Assert(COMPILER_VERSION < DELPHI_10);
    {$endif}

    {$ifdef BERLIN__}
      Test('BERLIN__ defined').Assert(COMPILER_VERSION >= DELPHI_10_1);
    {$else}
      Test('BERLIN__ not defined').Assert(COMPILER_VERSION < DELPHI_10_1);
    {$endif}

    {$ifdef TOKYO__}
      Test('TOKYO__ defined').Assert(COMPILER_VERSION >= DELPHI_10_2);
    {$else}
      Test('TOKYO__ not defined').Assert(COMPILER_VERSION < DELPHI_10_2);
    {$endif}

    {$ifdef RIO__}
      Test('RIO__ defined').Assert(COMPILER_VERSION >= DELPHI_10_3);
    {$else}
      Test('RIO__ not defined').Assert(COMPILER_VERSION < DELPHI_10_3);
    {$endif}
  end;
  {$warnings on}


end.
