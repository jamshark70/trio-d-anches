\version "2.18.0"
\include "english.ly"

#(set-global-staff-size 16)

\paper {
  left-margin = 1.8\cm
  line-width = 18.2\cm
  right-margin = 1\cm
}

\header {
  title = "Theme and Variations"
  subtitle = "(work in progress)"
  composer = "H. James Harkins"
  copyright = "(c) 2014 H. James Harkins. Not licensed for performance yet."
  poet = "Score in C"
}

global = {
  \tempo Tranquillo 4. = 63
  \time 9/8
  s1*8*9/8  % 8 bars of 9/8
  \time 12/8
  s1.
  \time 6/8
  s2.
  \time 9/8
  s1*9*9/8
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Oboe"
      shortInstrumentName = "Ob."
    } <<
      \global
      \relative c' {
        e4--\p e8-- e4-- e8-- e4-- e8 ~
        e2. e4-- e8 ~
        e4. d4-- d8 ~ d4. ~
        d4. e4--\< e8-- e4-- e8 ~
        e2.\mp\> ~ e4. ~
        e2. r4.\!
        d4--\p d8-- d4-- d8-- d4-- d8 ~
        d4. ~ d4\< e8-- e4-- e8\> ~
        e2. ~ e4 r8\! r4.
        R2.
        e4--\p e8-- e4.-- e4\mp^\markup { \italic "espr." } ( g8 )
        e4.\> ~ e4\! cs8--\p\< cs4-- cs8 ~
        cs4.\mp\> cs4-- cs8--\p r4.
        <<
          \new Voice {
            e4-- e8-- e4-- e8 ~ ( e4. ~
            e4.^\markup { \italic "espr." } ~ \tuplet 4/3 { e4 f2 g4-- ) }
            r2.
          }
          \new Voice {
            s2. s4.\<
            s2. s4.\mf\>
            s2.\!
          }
        >>
        e4--\p b'8->\sfz\> ~
        b4. ~ b4 r8\! cs,4.\p ~
        cs2. r4.
        d2.\pp ~ d4.
      }
    >>
    \new Staff \with {
      instrumentName = "Clarinet"
      shortInstrumentName = "Cl."
    } <<
      \global
      \relative c' {
        cs4--\p cs8-- cs4-- cs8-- cs4-- cs8 ~
        cs2. cs4-- cs8 ~
        cs4. cs4-- cs8 ~ cs4. ~
        cs4. cs4--\< cs4-- \breathe cs4 (
        f,!2.\mf\> g4. ~
        g2. ) r4.\!
        cs4--\p cs8-- cs4-- cs8-- cs4-- cs8 ~
        cs4. ~ cs4 cs8-- cs4-- cs8 ~
        \tupletSpan 1*6/8
        \tuplet 4/3 { cs4 f,!^\markup { \italic "espr." } ( \< d' e cs' b'2\> g,4--\! ) }
        R2.
        cs,4--\p cs8-- cs4-- cs8-- ~ cs4. ~
        cs4. d4-- d8--\< d4-- d8 ~
        d4.\mp\> d4-- d8--\p r4.
        d4-- d8-- d4--\< d8 ~ d4. ~
        d2.\mf\> ~ d4.
        r2.\! cs4.\p ~
        cs4. ~ cs4 r8 d4.\p ~
        d2. r4.
        e2.\pp ~ e4.
      }
    >>
    \new Staff \with {
      instrumentName = "Bassoon"
      shortInstrumentName = "Bsn."
    } <<
      \global
      \relative c' {
        \clef tenor
        d4--\p d8-- d4-- d8-- d4-- d8 ~
        d2. d4-- d8 ~
        d4. e4-- e8 ~ e4. ~
        e4. d4--\< d8-- d4-- d8 ~
        d2.\mp\> ~ d4. ~
        d2. r4.\!
        e4--\p e8-- e4-- e8-- e4-- e8 ~
        e4. ~ e4\< d8-- d4-- d8\> ~
        d2. ~ d4 r8\! r4.
        R2.
        d4--\p d8-- d4-- d8-- ~ d4. ~
        d4. cs4-- e8-- e4.\<^\markup { \italic "espr." }
        g8\mf\> ( e4 ~ e4 ) e8--\p r4.
        cs4-- cs8-- cs4--\< cs4-- \breathe a4 (
        bf2.\mf\> ~ bf4. )
        r2.\! d4.\p ~
        d4. ~ d4 r8 e4-- b'8->\sfz\> ~
        b2. r4.\!
        \clef bass
        cs,,2.\pp ~ cs4.
      }
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
}


% \pageBreak

globalA = {
  \tempo "Poco più mosso" 4. = 72
  \time 12/8
  s1.*24
}

\markup {
  \column {
    \vspace #2
    \wordwrap { \bold { A variation } }
  }
}

sfmpMarkup = \markup { \dynamic sf \dynamic mp }
sfmp = #(make-dynamic-script sfmpMarkup)

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Oboe"
      shortInstrumentName = "Ob."
    } <<
      \globalA
      \relative c' {
        r2. cs4\mf\>^\markup { \italic "sempre legato" } cs8 cs4 cs8
        cs4 cs8\! r4. r2.
        e4\mf\> e8 e4 e8 e4 e8\! r4.
        r4. cs4\mf\> cs8 cs4 cs8 cs4 cs8
        cs4 cs8 cs4 cs8 e4 e8 e4 e8
        e4 e8\! r4. r2.
        r4. cs4\mf\> cs8 cs4 cs8 cs4 cs8\!
        r2. e4\mp\< e8 e4 e8
        e4 e8 e4 e8 d4\mf\> d8 d4 d8
        d4 d8 d4 cs8 cs4 cs8 cs4 cs8\!
        R1.*2
        r4. cs4\p\< cs8 e4 e8 e4 e8
        e4 e8\mf r4. d4->\sfmp\> d8 d4 d8
        d4\! r8 b''4->\sfmp\> b8 b4 b8 b4 b8
        b4 b8\! r4. r4. e,,4\f\> e8
        e4 e8 e4 e8 e4 e8\p e4->\mp g8 (
        e4. ~ e4 ) g8-> ( e4. ~ e8 ) r8 r8
        r2. g4.\mf\> ( e4. ~
        e2.\p\< ) d2.
        e2.\f\> ( f2. 
        g4. ~ g4\! ) r8 r4. d4\pp d8
        d4 d8 r4. r4. cs4 r8
        b''2.->\sfz
      }
    >>
    \new Staff \with {
      instrumentName = "Clarinet"
      shortInstrumentName = "Cl."
    } <<
      \globalA
      \relative c' {
        R1.
        cs4\mf\>^\markup { \italic "sempre legato" } cs8 cs4 cs8\! r4. cs4\mf\> cs8
        cs4 cs8 cs4 cs8\! r4. cs4\mf\> cs8
        cs4 cs8 cs4 cs8\! r4. d4\mf\> d8
        d4 d8 d4 d8 cs4 cs8 cs4 cs8\!
        r4. cs4\mf\> cs8 cs4 cs8 cs4 cs8\!
        R1.
        cs4\p\< cs8 cs4 cs8 d4 d8 f,4->\f\> f8
        f4 f8 f4 f8 e'4 e8 e4 e8
        e4 e8 e4 cs8 cs4 cs8 cs4 cs8\!
        r4. r8 r8 cs8\p cs4 cs8 cs4 cs8
        d4 d8 cs4 cs8 e4 e8 cs4 cs8
        r2. r4. r8 r8 f,8->\sfmp\>
        f4 f8 f4 f8 f4 f8\! r4.
        cs''4->\sfmp\> cs8 cs4 cs8 cs4 cs8\! r8 r8 g8->\mf\>
        g4 g8 g4 g8 g4 g8\p cs,4\f\> cs8
        cs4 cs8 cs4 cs8 cs4 cs8\p r4.
        r8 r8 d8\pp d4 r8 r4. g8->\mp\< ( e4 ~
        e4 ) r8 g8 ( e4 ~ e4\mf ) r8 r4.
        r2. a,2.\mp\<
        bf1.\f\> ~
        bf4. ~ bf4\! r8 r4. cs4\pp cs8
        cs4 cs8 r4. r4. e4 r8
        b'2.->\sfz
      }
    >>
    \new Staff \with {
      instrumentName = "Bassoon"
      shortInstrumentName = "Bsn."
    } <<
      \globalA
      \relative c' {
        \clef tenor
        cs4\mf\>^\markup { \italic "sempre legato" } cs8 cs4 cs8 cs4 cs8\! r4.
        r4. cs4\mf\> cs8 cs4 cs8 cs4 cs8\!
        r2. cs4\mf\> cs8 cs4 cs8
        cs4 cs8\! r4. e4\mf\> e8 e4 e8
        e4 e8 e4 e8 d4 d8 d4 d8
        d4 d8\! r4. r2.
        r2. cs4\mf\> cs8 cs4 cs8
        cs4 cs8\! r4. cs4\mp\< cs8 d4 d8
        d4 d8 d4 d8 g,4->\f\> g8 g4 g8
        g4 g8 g4 cs8 cs4 cs8 cs4 cs8\!
        r4. r8 r8 cs8\p cs4 cs8 cs4 cs8
        e4 e8 cs4 cs8 d4 d8 cs4 cs8
        r4. cs4\p\< cs8 d4 d8 d4 d8
        d4 d8 d4\mf d8 r4. e4->\sfmp\> e8
        e4 e8 e4 e8 e4\! r8 r4.
        cs4.\mf\> ( d e8\p ) r8 r8 d4\f\> d8
        d4 d8 d4 d8 d4 d8\p r4.
        r8 r8 cs8\pp cs4 r8 r2.
        g'8->\mp ( e4 ~ e4 ) r8 r2.
        cs4.\mp\< ( d e2. )
        d1.\f\> ~
        d4. ~ d4\! r8 r4. e4\pp e8
        e4 e8 b'4.->\fp\> ~ b4. d,4\pp r8
      }
    >>
  >>
}


\markup {
  \column {
    \vspace #2
    \wordwrap { \bold { Another variation (not quite finished) } }
  }
}

globalB = {
  \tempo 4. = 72
  \time 6/8 s2.*6
  \time 9/8 s1*9/8
  \time 6/8 s2.*4
  \time 9/8 s1*9/8
  \time 6/8 s2.*10
}

subffMarkup = \markup { \center-align { \italic { "sub." } \dynamic ff } }
% subff = #(make-dynamic-script subffMarkup)

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Oboe"
      shortInstrumentName = "Ob."
    } <<
      \globalB
      \relative c' {
        r8 r8 cs8-.\mp d ( cs ) b'-> ~
        b4 r8 cs, ( d ) cs-.
        b'4.\< ~ b8 a4->\f\> ~
        a4. r4.\!
        R2.
        r8 r8 cs,-.\mp d ( cs ) b'->\< ~
        b4. a8\mf\> ( gs ) fss ~ ( fss4 gs8\p )
        cs->_\subffMarkup ( cs' ) r8 e,,4\mf\> ( cs8\! )
        r8 r cs-.\mp e-- r8 r8
        cs\< ( gs' ) cs,-. e4. ~
        e4. cs8->\f ( cs' ) cs,-.\mp
        e4 ( cs8_\markup { \italic "cresc." } ) b'4.-> a8 ( d,4 )
        b'4.-> a8 ( cs,4 )
        \tuplet 3/2 { b'16-> ( d, b' } d,4 ) \tuplet 3/2 { cs'16-> ( fs, cs' } fs,4 )
        fs32->\< ( e fs e fs4 ) f!32-> ( c'! d gs ds'8 ) r8
        cs,8->\ff ( cs' ) r8 d,,8\p ( cs ) r8
        cs8->\mf ( cs' ) cs,-.\p d4 ( cs8 )
        e8\< ( cs ) d ( cs ) e ( cs )
        d4-> e8-> ~ e4 cs'8->\f ~
        cs4.\> b'4.-> ~
        b4. cs,4.->
        d8->\mf ( b'4 ) d,8->\< ( cs4 )
        c!8-> ( cs4 ) \tuplet 4/3 { gs'8-.\f\< b-. gs,-. b-. }
        \tuplet 3/2 { fs'16->\> ( c! fs } c4 ~ c8 fs\! ) r8
        r8 r8 e,16\mf ( fs ) as\< ( b c8. b16
        as8 ) fs'16 ( gs fs gs ) b ( gs c,! gs' b8 )
        f!16-. g!-. d'4->\ff bf,,8-> ( bf' ) f'-.\f
        af ( f ) c-> ~ c4 r8
        af'8-.\mf d4-> bf,,8->\sfz ( bf' ) r8
        r8 gs'4\p\< a8-.\f d4->
        \tuplet 3/2 { e,16->\ff ( [ f g } a8 ) ] r8 r8 e4->\sfz\> ~
        e4. ~ e8\! r8 r8
        e4.\mp ( f\<
        g4. ~ g4 ) \breathe d,8->\sfp ~
        d2. ~
        d4 r8 \tuplet 3/2 { b'16\f ( cs e } b'8 ) d,,8->\sfp ~
        d4. ~ \tuplet 4/3 { d8 [ r8 e-.\f\< cs-. ] }
        e16-. cs-. e-. bf'-. c32 ( e fs a\! d8 ) d,,4->\sfp ~
        d4 r8 d4.->\ff
      }
    >>
    \new Staff \with {
      instrumentName = "Clarinet"
      shortInstrumentName = "Cl."
    } <<
      \globalB
      \relative c' {
        r8 r8 cs-.\mp e ( cs ) gs'-> ~
        gs4 r8 cs, ( e ) cs-.
        gs'\< ( a gs ~ gs4. ~
        gs4.\f\> ) r4.\!
        R2.
        r8 r8 cs,-. e ( cs ) gs'8-.\<
        a ( gs ) b ~ b4.\mf\> r4.\!
        cs,8->_\subffMarkup ( cs' ) cs,-.\mf\> d4 ( cs8 )
        cs\mp ( cs' ) cs,-. d ( cs ) bs-.
        cs\< ( b' ) cs,-. d4 ( cs8
        d4. ) cs'8->\f ( cs' ) r8
        d,,4\mp ( cs8_\markup { \italic "cresc." } ) d8 ( e4 ) b'4.->
        a8 ( d,4 ) f,4.->
        \tuplet 3/2 { c'!16-> ( e c } e4 ) g,4.->
        e''32->\< ( a, e' a, e'4 ) g,,4.->
        cs8->\ff ( cs' ) cs,-.\p d ( cs ) r8
        cs'8->\mf ( cs' ) r8 e,,4\p ( cs8 )
        d4->\mp\< e-> f,->
        d'-> e8-> ~ e4 cs'8->\f ~
        cs2.\>
        cs4.-> b'->
        e,8->\mf ( cs4 ) e8->\< ( b'4 )
        gs8-> ( b4 ) \tuplet 4/3 { c,8-.\f\< cs-. f!-. g!-. }
        \tuplet 3/2 { gs16->\> ( b gs } b4 ~ b8 gs8\! ) r8
        r8 e,16\mf ( fs ) c'-. gs'-. b4\< fs32 ( gs fs gs
        b8 ) c,4 d e8
        c8-. f4->\ff bf,8-> ( bf' ) f-.\f
        gf ( f ) d'-> ~ d4 r8
        gf,-.\mf c,4-> bf8->\sfz ( bf' ) r8
        r8 fs4\p\< cs8-.\f c4->
        r8 r8 \tuplet 3/2 { e,,16\mp ( [ f g ] } a8 ) e4->\sfz\> ~
        e4. ~ e8\! r8 r8
        e4.\mp ( f\<
        g ~ g4 ) \breathe e'8->\sfp ~
        e2. ~
        e4 \tupletSpan 8 \tuplet 3/2 { e,16\f\< ( [ fs g ] b [ cs e ] } b'8\! ) e,8->\sfp ~
        \tupletSpan \default
        e4. ~ \tuplet 4/3 { e8 [ r8 b'-.\f\< e,-. ] }
        b'16-. e,-. b'-. c-. e32 ( fs a b\! ds8 ) e,,4->\sfp ~
        e4 r8 e4.->\ff
      }
    >>
    \new Staff \with {
      instrumentName = "Bassoon"
      shortInstrumentName = "Bsn."
    } <<
      \globalB
      \relative c {
        \clef bass
        cs8->\f\> ( cs'\! ) r8 r4.
        r8 cs,->\f\> ( cs'\! ) r4.
        r4. cs4\mf\< d8 ~ (
        d4\f cs8 ) d\> ( cs ) cs
        e ( d ) cs bs4 ( cs8\p )
        cs,8->\f ( cs' ) r8 r4.
        R1*9/8
        cs,,8->_\subffMarkup ( cs' ) r8 r4.
        cs8\mp ( cs' ) r8 r4.
        R2.
        f,,!8-> ( f'! ) r8 r4.
        cs,8->\mf ( cs' ) r8 f,!8->_\markup { \italic "cresc." } ( f'! ) r8 g,8 ( c'! ) r8
        f,,!8 ( a' ) r8 d ( e4 )
        g,4.-> \tuplet 3/2 { d'16-> ( a d } a4 )
        g4.->\< e'32-> ( d e d e8 ) r8
        cs,,8->\ff ( cs' ) r8 r4.
        cs8->\mf ( cs' ) r8 r4.
        R2.
        f!8\mp\< ( cs ) d ( cs b bf )
        a\f ( b! a ) d\> ( a ) a
        b4 ( a8\! ) r4.
        a,8\mf ( a' ) a ( b a ) d ~ (
        d\< a ) b ( a ) e' ( d )
        c\> ( b ) a ~ ( a4 gs8\! )
        r4. a4\mp\< ( gs8 )
        a4 ( b8 ) a4 ( gs8 )
        a-. bf4->\ff bf,,8-> ( bf' ) r8
        r8 r8 bf'-.\f bf,->\> ( bf' ) d-.
        ef4 ( d8\mp ) r8 r8 bf-.
        bf,,16\f\> ( c ) e-. a-. cs-.\< fs-. c'-. r r ef,-. f-. b?-.
        \clef tenor \tuplet 3/2 { e16->\ff ( [ f g } a8 ) ] r8 r8 r8 \clef bass bf,,,8->
        bf'\> ( d' ) r8 bf,16\mp ( bf' ) d ( bf d bf )
        \clef tenor d ( bf d bf a bf ) d\< ( bf a bf d e )
        a ( f e c bf a ) \clef bass f ( ef ) b-. g-. cs,8
        cs''4.\sfp ~ cs4 r8
        \tupletSpan 8
        \tuplet 3/2 { cs,,16\f\< ( d e g a bf } c?8\! ) r8 r8 cs'8->\sfp ~
        cs4. ~ cs8 r8 r8
        r4. r8 cs4->\sfp ~
        cs4 r8 cs4.->\ff
      }
    >>
  >>
  \layout {}
%  \midi {}
}
