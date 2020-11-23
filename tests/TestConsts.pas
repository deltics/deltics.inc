
  unit TestConsts;

interface

  const
    DELPHI_1    = 80;
    DELPHI_2    = 90;
    DELPHI_3    = 100;
    DELPHI_4    = 120;
    DELPHI_5    = 130;
    DELPHI_6    = 140;
    DELPHI_7    = 150;
    DELPHI_8    = 160;

    DELPHI_2005 = 170;
    DELPHI_2006 = 180;
    DELPHI_2007 = 185;
    DELPHI_2009 = 200;
    DELPHI_2010 = 210;

    DELPHI_XE   = 220;
    DELPHI_XE2  = 230;
    DELPHI_XE3  = 240;
    DELPHI_XE4  = 250;
    DELPHI_XE5  = 260;
    DELPHI_XE6  = 270;
    DELPHI_XE7  = 280;
    DELPHI_XE8  = 290;

    DELPHI_10   = 300;
    DELPHI_10_1 = 310;
    DELPHI_10_2 = 320;
    DELPHI_10_3 = 330;
    DELPHI_10_4 = 340;

    COMPILER_VERSION = {$ifdef VER80}  DELPHI_1 {$endif}
                       {$ifdef VER90}  DELPHI_2 {$endif}
                       {$ifdef VER100} DELPHI_3 {$endif}
                       {$ifdef VER120} DELPHI_4 {$endif}
                       {$ifdef VER130} DELPHI_5 {$endif}
                       {$ifdef VER140} DELPHI_6 {$endif}
                       {$ifdef VER150} DELPHI_7 {$endif}
                       {$ifdef VER160} DELPHI_8 {$endif}    // Will never happen: not supported by deltics.inc

                       {$ifdef VER170} DELPHI_2005 {$endif}
                       {$ifdef VER180}                      // Both 180 and 185 are defined for 2007 but
                        {$ifdef VER185}                     //  only 180 is defined for 2006!
                           DELPHI_2007
                         {$else}
                           DELPHI_2006
                         {$endif}
                       {$endif}
                       {$ifdef VER200} DELPHI_2009 {$endif}
                       {$ifdef VER210} DELPHI_2010 {$endif}

                       {$ifdef VER220} DELPHI_XE  {$endif}
                       {$ifdef VER230} DELPHI_XE2 {$endif}
                       {$ifdef VER240} DELPHI_XE3 {$endif}
                       {$ifdef VER250} DELPHI_XE4 {$endif}
                       {$ifdef VER260} DELPHI_XE5 {$endif}
                       {$ifdef VER270} DELPHI_XE6 {$endif}
                       {$ifdef VER280} DELPHI_XE7 {$endif}
                       {$ifdef VER290} DELPHI_XE8 {$endif}

                       {$ifdef VER300} DELPHI_10   {$endif}
                       {$ifdef VER310} DELPHI_10_1 {$endif}
                       {$ifdef VER320} DELPHI_10_2 {$endif}
                       {$ifdef VER330} DELPHI_10_3 {$endif}
                       {$ifdef VER340} DELPHI_10_4 {$endif}
                       ;

implementation

end.
