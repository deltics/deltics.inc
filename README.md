# New in 1.03

* Support for Delphi 10.4


# Introduction 
This library is very small and very simple.  It is a simple include file which provides a set of `$define` symbols based on the Delphi version at compilation time to help with development of code that needs to support and adapt to multiple versions of Delphi.

Specific Delphi versions may be detected by testing for a `$define` corresponding to each version:

    Delphi 1 thru 7	          : DELPHI1, DELPHI2, DELPHI3 .. DELPHI7
    Delphi 8 is not supported
    Delphi 2005 thru 2010      : DELPHI2005, DELPHI2006, DELPHI2007, DELPHI2009, DELPHI2010
                                 (For Delphi 2006 and 2007, DELPHI2006_OR_2007 is also defined)
    Delphi XE thru XE8         : DELPHIXE, DELPHIXE2 .. DELPHIXE8
    Delphi 10 thru 10.n        : DELPHI10, DELPHI10_1 .. DELPHI10_n
                                 (city names are also defined: SEATTLE, BERLIN, TOKYO, RIO etc)

So, for code that should only be compiled when compiling with Delphi 2010, you can write:

    {$ifdef DELPHI2010}
      ..
    {$endif}

Knowing that you are compiling with a specific Delphi version is less useful than knowing that the compiler is some version _in a range of versions_.  In particular, changes in RTL functions are usually introduced at some point and then remain consistent from that point on, or are removed from some given version.  To assist with such cases, additional `$define` symbols are provided to allow you to test for versions up to and including or later than some version of interest.  These use pre and post-fix double-underscores (`__`) respectively.

e.g. for code that relies on compilation with any version of Delphi upto and including Delphi 2007:

    {$ifdef __DELPHI2007}
      ..
    {$endif}

Similarly, for code that relies on Delphi 2009 or later:

    {$ifdef DELPHI2009__}
      ..
    {$endif}

# City Names for Delphi Versions 10 and Later

As well as the DELPHI10 or DELPHI10_x `$define`s, the corresponding city name symbols are defined for these versions:

      DELPHI10    ==    SEATTLE
    __DELPHI10    ==  __SEATTLE 
      DELPHI10__  ==    SEATTLE__

etc

# Getting Started - Duget Package
To use this library simply add a `deltics.inc` reference in your project .duget file and run `duget update` to obtain the latest version available in any of your feeds (duget.org is recommended).

# Build and Test
The build pipeline for this package compiles a set of tests with every version of Delphi from version 2 onward.  These tests use [Smoketest 2.x](https://github.com/deltics/deltics.smoketest) to exercise the compiler defines introduced by the include file and compare them with the expected results based on the version of Delphi used to compile each set of tests.