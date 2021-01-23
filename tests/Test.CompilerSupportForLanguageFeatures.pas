
{$i deltics.inc}

  unit Test.CompilerSupportForLanguageFeatures;


interface


implementation


// The following exercise the use of conditional defines
//  with the compiler support for the relevant language feature.

{$ifdef AdvancedRecords}
type
  FooRecord = record
    procedure SomeProcedure;
  end;

  procedure FooRecord.SomeProcedure;
  begin
    // NO-OP
  end;
{$endif}


{$ifdef InlineMethods}
  procedure InlineProc; inline;
  begin
    // NO-OP
  end;
{$endif}


{$ifdef EnhancedOverloads}
  procedure Overloaded(aValue: Double); overload;
  begin
    // NO-OP
  end;

  procedure Overloaded(aValue: TDateTime); overload;
  begin
    // NO-OP
  end;

  procedure Overloaded(aValue: AnsiString); overload;
  begin
    // NO-OP
  end;

  procedure Overloaded(aValue: Utf8String); overload;
  begin
    // NO-OP
  end;

  procedure OverloadTest;
  var
    d: Double;
    dt: TDateTime;
    a: AnsiString;
    u8: Utf8String;
  begin
    d   := 0;
    dt  := 0;
    Overloaded(d);
    Overloaded(dt);
    Overloaded(a);
    Overloaded(u8);
  end;
{$endif}



end.
