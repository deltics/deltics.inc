
{$define DelticsCompatibilityCheck}

{$i deltics.inc}

unit TestCompatibilityCheck;

interface

  uses
    Deltics.Smoketest;


  type
    TCompatibilityCheck = class(TTest)
    {$ifdef DELPHI2006__}
      procedure InlineMethodsAreDisabled;
      procedure ClassHelpersAreDisabled;
    {$endif}

    {$ifdef DELPHI2009__}
      procedure EnhancedOverloadsAreDisabled;
    {$endif}

    {$ifdef DELPHIXE3__}
      procedure TypeHelpersAreDisabled;
    {$endif}
    end;


implementation

{$ifdef DELPHI2006__}
  procedure TCompatibilityCheck.InlineMethodsAreDisabled;
  begin
    Test('InlineMethods is not DEFINEd').Assert({$ifdef InlineMethods} FALSE {$else} TRUE {$endif});
  end;


  procedure TCompatibilityCheck.ClassHelpersAreDisabled;
  begin
    Test('ClassHelpers is not DEFINEd').Assert({$ifdef ClassHelpers} FALSE {$else} TRUE {$endif});
  end;
{$endif}


{$ifdef DELPHI2009__}
  procedure TCompatibilityCheck.EnhancedOverloadsAreDisabled;
  begin
    Test('EnhancedOverloads is not DEFINEd').Assert({$ifdef EnhancedOverloads} FALSE {$else} TRUE {$endif});
  end;
{$endif}


{$ifdef DELPHIXE3__}
  procedure TCompatibilityCheck.TypeHelpersAreDisabled;
  begin
    Test('TypeHelpers is not DEFINEd').Assert({$ifdef TypeHelpers} FALSE {$else} TRUE {$endif});
  end;
{$endif}



end.
