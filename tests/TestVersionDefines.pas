
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
      Assert('DELPHI1 defined', COMPILER_VERSION = DELPHI_1);
    {$else}
      Assert('DELPHI1 not defined', COMPILER_VERSION <> DELPHI_1, 'DELPHI1 not defined');
    {$endif};

    {$ifdef DELPHI2}
      Assert('DELPHI2 defined', COMPILER_VERSION = DELPHI_2);
    {$else}
      Assert('DELPHI2 not defined', COMPILER_VERSION <> DELPHI_2, 'DELPHI2 not defined');
    {$endif};

    {$ifdef DELPHI3}
      Assert('DELPHI3 defined', COMPILER_VERSION = DELPHI_3);
    {$else}
      Assert('DELPHI3 not defined', COMPILER_VERSION <> DELPHI_3, 'DELPHI3 not defined');
    {$endif};

    {$ifdef DELPHI4}
      Assert('DELPHI4 defined', COMPILER_VERSION = DELPHI_4);
    {$else}
      Assert('DELPHI4 not defined', COMPILER_VERSION <> DELPHI_4, 'DELPHI4 not defined');
    {$endif};

    {$ifdef DELPHI5}
      Assert('DELPHI5 defined', COMPILER_VERSION = DELPHI_5);
    {$else}
      Assert('DELPHI5 not defined', COMPILER_VERSION <> DELPHI_5, 'DELPHI5 not defined');
    {$endif};

    {$ifdef DELPHI6}
      Assert('DELPHI6 defined', COMPILER_VERSION = DELPHI_6);
    {$else}
      Assert('DELPHI6 not defined', COMPILER_VERSION <> DELPHI_6, 'DELPHI6 not defined');
    {$endif};

    {$ifdef DELPHI7}
      Assert('DELPHI7 defined', COMPILER_VERSION = DELPHI_7);
    {$else}
      Assert('DELPHI7 not defined', COMPILER_VERSION <> DELPHI_7, 'DELPHI7 not defined');
    {$endif};

    {$ifdef DELPHI8} // Not supported, a test would be meaningless
    {$endif}

    // Anniversary versions (2xxx)

    {$ifdef DELPHI2005}
      Assert('DELPHI2005 defined', COMPILER_VERSION = DELPHI_2005);
    {$else}
      Assert('DELPHI2005 not defined', COMPILER_VERSION <> DELPHI_2005, 'DELPHI2005 not defined');
    {$endif};

    {$ifdef DELPHI2006}
      Assert('DELPHI2006 defined', COMPILER_VERSION = DELPHI_2006);
    {$else}
      Assert('DELPHI2006 not defined', COMPILER_VERSION <> DELPHI_2006, 'DELPHI2006 not defined');
    {$endif};

    {$ifdef DELPHI2007}
      Assert('DELPHI2007 defined', COMPILER_VERSION = DELPHI_2007);
    {$else}
      Assert('DELPHI2007 not defined', COMPILER_VERSION <> DELPHI_2007, 'DELPHI2007 not defined');
    {$endif};

    {$ifdef DELPHI2009}
      Assert('DELPHI2009 defined', COMPILER_VERSION = DELPHI_2009);
    {$else}
      Assert('DELPHI2009 not defined', COMPILER_VERSION <> DELPHI_2009, 'DELPHI2009 not defined');
    {$endif};

    {$ifdef DELPHI2010}
      Assert('DELPHI2010 defined', COMPILER_VERSION = DELPHI_2010);
    {$else}
      Assert('DELPHI2010 not defined', COMPILER_VERSION <> DELPHI_2010, 'DELPHI2010 not defined');
    {$endif};

    // XE and later

    {$ifdef DELPHIXE}
      Assert('DELPHIXE defined', COMPILER_VERSION = DELPHI_XE);
    {$else}
      Assert('DELPHIXE not defined', COMPILER_VERSION <> DELPHI_XE, 'DELPHIXE not defined');
    {$endif};

    {$ifdef DELPHIXE2}
      Assert('DELPHIXE2 defined', COMPILER_VERSION = DELPHI_XE2);
    {$else}
      Assert('DELPHIXE2 not defined', COMPILER_VERSION <> DELPHI_XE2, 'DELPHIXE2 not defined');
    {$endif};

    {$ifdef DELPHIXE3}
      Assert('DELPHIXE3 defined', COMPILER_VERSION = DELPHI_XE3);
    {$else}
      Assert('DELPHIXE3 not defined', COMPILER_VERSION <> DELPHI_XE3, 'DELPHIXE3 not defined');
    {$endif};

    {$ifdef DELPHIXE4}
      Assert('DELPHIXE4 defined', COMPILER_VERSION = DELPHI_XE4);
    {$else}
      Assert('DELPHIXE4 not defined', COMPILER_VERSION <> DELPHI_XE4, 'DELPHIXE4 not defined');
    {$endif};

    {$ifdef DELPHIXE5}
      Assert('DELPHIXE5 defined', COMPILER_VERSION = DELPHI_XE5);
    {$else}
      Assert('DELPHIXE5 not defined', COMPILER_VERSION <> DELPHI_XE5, 'DELPHIXE5 not defined');
    {$endif};

    {$ifdef DELPHIXE6}
      Assert('DELPHIXE6 defined', COMPILER_VERSION = DELPHI_XE6);
    {$else}
      Assert('DELPHIXE6 not defined', COMPILER_VERSION <> DELPHI_XE6, 'DELPHIXE6 not defined');
    {$endif};

    {$ifdef DELPHIXE7}
      Assert('DELPHIXE7 defined', COMPILER_VERSION = DELPHI_XE7);
    {$else}
      Assert('DELPHIXE7 not defined', COMPILER_VERSION <> DELPHI_XE7, 'DELPHIXE7 not defined');
    {$endif};

    {$ifdef DELPHIXE8}
      Assert('DELPHIXE8 defined', COMPILER_VERSION = DELPHI_XE8);
    {$else}
      Assert('DELPHIXE8 not defined', COMPILER_VERSION <> DELPHI_XE8, 'DELPHIXE8 not defined');
    {$endif};

    // 10.x versions

    {$ifdef DELPHI10}
      Assert('DELPHI10 defined', COMPILER_VERSION = DELPHI_10);
    {$else}
      Assert('DELPHI10 not defined', COMPILER_VERSION <> DELPHI_10, 'DELPHI10 not defined');
    {$endif};

    {$ifdef DELPHI10_1}
      Assert('DELPHI10_1 defined', COMPILER_VERSION = DELPHI_10_1);
    {$else}
      Assert('DELPHI10_1 not defined', COMPILER_VERSION <> DELPHI_10_1, 'DELPHI10_1 not defined');
    {$endif};

    {$ifdef DELPHI10_2}
      Assert('DELPHI10_2 defined', COMPILER_VERSION = DELPHI_10_2);
    {$else}
      Assert('DELPHI10_2 not defined', COMPILER_VERSION <> DELPHI_10_2, 'DELPHI10_2 not defined');
    {$endif};

    {$ifdef DELPHI10_3}
      Assert('DELPHI10_3 defined', COMPILER_VERSION = DELPHI_10_3);
    {$else}
      Assert('DELPHI10_3 not defined', COMPILER_VERSION <> DELPHI_10_3, 'DELPHI10_3 not defined');
    {$endif};

    // 10.x city name defines

    {$ifdef SEATTLE}
      Assert('SEATTLE defined', COMPILER_VERSION = DELPHI_10);
    {$else}
      Assert('SEATTLE not defined', COMPILER_VERSION <> DELPHI_10, 'SEATTLE not defined');
    {$endif};

    {$ifdef BERLIN}
      Assert('BERLIN defined', COMPILER_VERSION = DELPHI_10_1);
    {$else}
      Assert('BERLIN not defined', COMPILER_VERSION <> DELPHI_10_1, 'BERLIN not defined');
    {$endif};

    {$ifdef TOKYO}
      Assert('TOKYO defined', COMPILER_VERSION = DELPHI_10_2);
    {$else}
      Assert('TOKYO not defined', COMPILER_VERSION <> DELPHI_10_2, 'TOKYO not defined');
    {$endif};

    {$ifdef RIO}
      Assert('RIO defined', COMPILER_VERSION = DELPHI_10_3);
    {$else}
      Assert('RIO not defined', COMPILER_VERSION <> DELPHI_10_3, 'RIO not defined');
    {$endif};
  end;


  procedure TVersionDefines.DelphiVersionAndEarlierCorrectlyIdentified;
  begin
    {$ifdef __DELPHI1}
      Assert('__DELPHI1 defined', COMPILER_VERSION <= DELPHI_1);
    {$else}
      Assert('__DELPHI1 not defined', COMPILER_VERSION >= DELPHI_1);
    {$endif}

    {$ifdef __DELPHI2}
      Assert('__DELPHI2 defined', COMPILER_VERSION <= DELPHI_2);
    {$else}
      Assert('__DELPHI2 not defined', COMPILER_VERSION >= DELPHI_2);
    {$endif}

    {$ifdef __DELPHI3}
      Assert('__DELPHI3 defined', COMPILER_VERSION <= DELPHI_3);
    {$else}
      Assert('__DELPHI3 not defined', COMPILER_VERSION >= DELPHI_3);
    {$endif}

    {$ifdef __DELPHI4}
      Assert('__DELPHI4 defined', COMPILER_VERSION <= DELPHI_4);
    {$else}
      Assert('__DELPHI4 not defined', COMPILER_VERSION >= DELPHI_4);
    {$endif}

    {$ifdef __DELPHI5}
      Assert('__DELPHI5 defined', COMPILER_VERSION <= DELPHI_5);
    {$else}
      Assert('__DELPHI5 not defined', COMPILER_VERSION >= DELPHI_5);
    {$endif}

    {$ifdef __DELPHI6}
      Assert('__DELPHI6 defined', COMPILER_VERSION <= DELPHI_6);
    {$else}
      Assert('__DELPHI6 not defined', COMPILER_VERSION >= DELPHI_6);
    {$endif}

    {$ifdef __DELPHI7}
      Assert('__DELPHI7 defined', COMPILER_VERSION <= DELPHI_7);
    {$else}
      Assert('__DELPHI7 not defined', COMPILER_VERSION >= DELPHI_7);
    {$endif}

    {$ifdef __DELPHI8} // Not supported, a test would be meaningless
    {$endif}

    // Anniversary versions (2xxx)

    {$ifdef __DELPHI2005}
      Assert('__DELPHI2005 defined', COMPILER_VERSION <= DELPHI_2005);
    {$else}
      Assert('__DELPHI2005 not defined', COMPILER_VERSION >= DELPHI_2005);
    {$endif}

    {$ifdef __DELPHI2006}
      Assert('__DELPH2006 defined', COMPILER_VERSION <= DELPHI_2006);
    {$else}
      Assert('__DELPH2006 not defined', COMPILER_VERSION >= DELPHI_2006);
    {$endif}

    {$ifdef __DELPHI2007}
      Assert('__DELPHI2007 defined', COMPILER_VERSION <= DELPHI_2007);
    {$else}
      Assert('__DELPHI2007 not defined', COMPILER_VERSION >= DELPHI_2007);
    {$endif}

    {$ifdef __DELPHI2009}
      Assert('__DELPHI2009 defined', COMPILER_VERSION <= DELPHI_2009);
    {$else}
      Assert('__DELPHI2009 not defined', COMPILER_VERSION >= DELPHI_2009);
    {$endif}

    {$ifdef __DELPHI2010}
      Assert('__DELPHI2010 defined', COMPILER_VERSION <= DELPHI_2010);
    {$else}
      Assert('__DELPHI2010 not defined', COMPILER_VERSION >= DELPHI_2010);
    {$endif}

    // XE versions

    {$ifdef __DELPHIXE}
      Assert('__DELPHIXE defined', COMPILER_VERSION <= DELPHI_XE);
    {$else}
      Assert('__DELPHIXE not defined', COMPILER_VERSION >= DELPHI_XE);
    {$endif}

    {$ifdef __DELPHIXE2}
      Assert('__DELPHIXE2 defined', COMPILER_VERSION <= DELPHI_XE2);
    {$else}
      Assert('__DELPHIXE2 not defined', COMPILER_VERSION >= DELPHI_XE2);
    {$endif}

    {$ifdef __DELPHIXE3}
      Assert('__DELPHIXE3 defined', COMPILER_VERSION <= DELPHI_XE3);
    {$else}
      Assert('__DELPHIXE3 not defined', COMPILER_VERSION >= DELPHI_XE3);
    {$endif}

    {$ifdef __DELPHIXE4}
      Assert('__DELPHIXE4 defined', COMPILER_VERSION <= DELPHI_XE4);
    {$else}
      Assert('__DELPHIXE4 not defined', COMPILER_VERSION >= DELPHI_XE4);
    {$endif}

    {$ifdef __DELPHIXE5}
      Assert('__DELPHIXE5 defined', COMPILER_VERSION <= DELPHI_XE5);
    {$else}
      Assert('__DELPHIXE5 not defined', COMPILER_VERSION >= DELPHI_XE5);
    {$endif}

    {$ifdef __DELPHIXE6}
      Assert('__DELPHIXE6 defined', COMPILER_VERSION <= DELPHI_XE6);
    {$else}
      Assert('__DELPHIXE6 not defined', COMPILER_VERSION >= DELPHI_XE6);
    {$endif}

    {$ifdef __DELPHIXE7}
      Assert('__DELPHIXE7 defined', COMPILER_VERSION <= DELPHI_XE7);
    {$else}
      Assert('__DELPHIXE7 not defined', COMPILER_VERSION >= DELPHI_XE7);
    {$endif}

    {$ifdef __DELPHIXE8}
      Assert('__DELPHIXE8 defined', COMPILER_VERSION <= DELPHI_XE8);
    {$else}
      Assert('__DELPHIXE8 not defined', COMPILER_VERSION >= DELPHI_XE8);
    {$endif}

    // 10.x versions

    {$ifdef __DELPHI10}
      Assert('__DELPHI10 defined', COMPILER_VERSION <= DELPHI_10);
    {$else}
      Assert('__DELPHI10 not defined', COMPILER_VERSION >= DELPHI_10);
    {$endif}

    {$ifdef __DELPHI10_1}
      Assert('__DELPHI10_1 defined', COMPILER_VERSION <= DELPHI_10_1);
    {$else}
      Assert('__DELPHI10_1 not defined', COMPILER_VERSION >= DELPHI_10_1);
    {$endif}

    {$ifdef __DELPHI10_2}
      Assert('__DELPHI10_2 defined', COMPILER_VERSION <= DELPHI_10_2);
    {$else}
      Assert('__DELPHI10_2 not defined', COMPILER_VERSION >= DELPHI_10_2);
    {$endif}

    {$ifdef __DELPHI10_3}
      Assert('__DELPHI10_3 defined', COMPILER_VERSION <= DELPHI_10_3);
    {$else}
      Assert('__DELPHI10_3 not defined', COMPILER_VERSION >= DELPHI_10_3);
    {$endif}

    // 10.x city name defines

    {$ifdef __SEATTLE}
      Assert('__SEATTLE defined', COMPILER_VERSION <= DELPHI_10);
    {$else}
      Assert('__SEATTLE not defined', COMPILER_VERSION >= DELPHI_10);
    {$endif}

    {$ifdef __BERLIN}
      Assert('__BERLIN defined', COMPILER_VERSION <= DELPHI_10_1);
    {$else}
      Assert('__BERLIN not defined', COMPILER_VERSION >= DELPHI_10_1);
    {$endif}

    {$ifdef __SEATTLE}
      Assert('__TOKYO defined', COMPILER_VERSION <= DELPHI_10_2);
    {$else}
      Assert('__TOKYO not defined', COMPILER_VERSION >= DELPHI_10_2);
    {$endif}

    {$ifdef __RIO}
      Assert('__RIO defined', COMPILER_VERSION <= DELPHI_10_3);
    {$else}
      Assert('__RIO not defined', COMPILER_VERSION >= DELPHI_10_3);
    {$endif}
  end;


  procedure TVersionDefines.DelphiVersionAndLaterCorrectlyIdentified;
  begin
    {$ifdef DELPHI1__}
      Assert('DELPHI1__ defined', COMPILER_VERSION >= DELPHI_1);
    {$else}
      Assert('DELPHI1__ not defined', COMPILER_VERSION < DELPHI_1);
    {$endif}

    {$ifdef DELPHI2__}
      Assert('DELPHI2__ defined', COMPILER_VERSION >= DELPHI_2);
    {$else}
      Assert('DELPHI2__ not defined', COMPILER_VERSION < DELPHI_2);
    {$endif}

    {$ifdef DELPHI3__}
      Assert('DELPHI3__ defined', COMPILER_VERSION >= DELPHI_3);
    {$else}
      Assert('DELPHI3__ not defined', COMPILER_VERSION < DELPHI_3);
    {$endif}

    {$ifdef DELPHI4__}
      Assert('DELPHI4__ defined', COMPILER_VERSION >= DELPHI_4);
    {$else}
      Assert('DELPHI4__ not defined', COMPILER_VERSION < DELPHI_4);
    {$endif}

    {$ifdef DELPHI5__}
      Assert('DELPHI5__ defined', COMPILER_VERSION >= DELPHI_5);
    {$else}
      Assert('DELPHI5__ not defined', COMPILER_VERSION < DELPHI_5);
    {$endif}

    {$ifdef DELPHI6__}
      Assert('DELPHI6__ defined', COMPILER_VERSION >= DELPHI_6);
    {$else}
      Assert('DELPHI6__ not defined', COMPILER_VERSION < DELPHI_6);
    {$endif}

    {$ifdef DELPHI7__}
      Assert('DELPHI7__ defined', COMPILER_VERSION >= DELPHI_7);
    {$else}
      Assert('DELPHI7__ not defined', COMPILER_VERSION < DELPHI_7);
    {$endif}

    {$ifdef DELPHI8__} // Not supported, a test would be meaningless
    {$endif}

    // Anniversary versions (2xxx)

    {$ifdef DELPHI2005__}
      Assert('DELPHI2005__ defined', COMPILER_VERSION >= DELPHI_2005);
    {$else}
      Assert('DELPHI2005__ not defined', COMPILER_VERSION < DELPHI_2005);
    {$endif}

    {$ifdef DELPHI2006__}
      Assert('DELPHI2006__ defined', COMPILER_VERSION >= DELPHI_2006);
    {$else}
      Assert('DELPHI2006__ not defined', COMPILER_VERSION < DELPHI_2006);
    {$endif}

    {$ifdef DELPHI2007__}
      Assert('DELPHI2007__ defined', COMPILER_VERSION >= DELPHI_2007);
    {$else}
      Assert('DELPHI2007__ not defined', COMPILER_VERSION < DELPHI_2007);
    {$endif}

    {$ifdef DELPHI2009__}
      Assert('DELPHI2009__ defined', COMPILER_VERSION >= DELPHI_2009);
    {$else}
      Assert('DELPHI2009__ not defined', COMPILER_VERSION < DELPHI_2009);
    {$endif}

    {$ifdef DELPHI2010__}
      Assert('DELPHI2010__ defined', COMPILER_VERSION >= DELPHI_2010);
    {$else}
      Assert('DELPHI2010__ not defined', COMPILER_VERSION < DELPHI_2010);
    {$endif}

    // XE versions

    {$ifdef DELPHIXE__}
      Assert('DELPHIXE__ defined', COMPILER_VERSION >= DELPHI_XE);
    {$else}
      Assert('DELPHIXE__ not defined', COMPILER_VERSION < DELPHI_XE);
    {$endif}

    {$ifdef DELPHIXE2__}
      Assert('DELPHIXE2__ defined', COMPILER_VERSION >= DELPHI_XE2);
    {$else}
      Assert('DELPHIXE2__ not defined', COMPILER_VERSION < DELPHI_XE2);
    {$endif}

    {$ifdef DELPHIXE3__}
      Assert('DELPHIXE3__ defined', COMPILER_VERSION >= DELPHI_XE3);
    {$else}
      Assert('DELPHIXE3__ not defined', COMPILER_VERSION < DELPHI_XE3);
    {$endif}

    {$ifdef DELPHIXE4__}
      Assert('DELPHIXE4__ defined', COMPILER_VERSION >= DELPHI_XE4);
    {$else}
      Assert('DELPHIXE4__ not defined', COMPILER_VERSION < DELPHI_XE4);
    {$endif}

    {$ifdef DELPHIXE5__}
      Assert('DELPHIXE5__ defined', COMPILER_VERSION >= DELPHI_XE5);
    {$else}
      Assert('DELPHIXE5__ not defined', COMPILER_VERSION < DELPHI_XE5);
    {$endif}

    {$ifdef DELPHIXE6__}
      Assert('DELPHIXE6__ defined', COMPILER_VERSION >= DELPHI_XE6);
    {$else}
      Assert('DELPHIXE6__ not defined', COMPILER_VERSION < DELPHI_XE6);
    {$endif}

    {$ifdef DELPHIXE7__}
      Assert('DELPHIXE7__ defined', COMPILER_VERSION >= DELPHI_XE7);
    {$else}
      Assert('DELPHIXE7__ not defined', COMPILER_VERSION < DELPHI_XE7);
    {$endif}

    {$ifdef DELPHIXE8__}
      Assert('DELPHIXE8__ defined', COMPILER_VERSION >= DELPHI_XE8);
    {$else}
      Assert('DELPHIXE8__ not defined', COMPILER_VERSION < DELPHI_XE8);
    {$endif}

    // 10.x versions

    {$ifdef DELPHI10__}
      Assert('DELPHI10__ defined', COMPILER_VERSION >= DELPHI_10);
    {$else}
      Assert('DELPHI10__ not defined', COMPILER_VERSION < DELPHI_10);
    {$endif}

    {$ifdef DELPHI10_1__}
      Assert('DELPHI10_1__ defined', COMPILER_VERSION >= DELPHI_10_1);
    {$else}
      Assert('DELPHI10_1__ not defined', COMPILER_VERSION < DELPHI_10_1);
    {$endif}

    {$ifdef DELPHI10_2__}
      Assert('DELPHI10_2__ defined', COMPILER_VERSION >= DELPHI_10_2);
    {$else}
      Assert('DELPHI10_2__ not defined', COMPILER_VERSION < DELPHI_10_2);
    {$endif}

    {$ifdef DELPHI10_3__}
      Assert('DELPHI10_3__ defined', COMPILER_VERSION >= DELPHI_10_3);
    {$else}
      Assert('DELPHI10_3__ not defined', COMPILER_VERSION < DELPHI_10_3);
    {$endif}

    // 10.x city name defines

    {$ifdef SEATTLE__}
      Assert('SEATTLE__ defined', COMPILER_VERSION >= DELPHI_10);
    {$else}
      Assert('SEATTLE__ not defined', COMPILER_VERSION < DELPHI_10);
    {$endif}

    {$ifdef BERLIN__}
      Assert('BERLIN__ defined', COMPILER_VERSION >= DELPHI_10_1);
    {$else}
      Assert('BERLIN__ not defined', COMPILER_VERSION < DELPHI_10_1);
    {$endif}

    {$ifdef TOKYO__}
      Assert('TOKYO__ defined', COMPILER_VERSION >= DELPHI_10_2);
    {$else}
      Assert('TOKYO__ not defined', COMPILER_VERSION < DELPHI_10_2);
    {$endif}

    {$ifdef RIO__}
      Assert('RIO__ defined', COMPILER_VERSION >= DELPHI_10_3);
    {$else}
      Assert('RIO__ not defined', COMPILER_VERSION < DELPHI_10_3);
    {$endif}
  end;
  {$warnings on}


end.
