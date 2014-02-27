\version "2.18.0"
\include "english.ly"

\markup { Score in C }

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
        e4. e4-- e8 ~ e4. ~
        e4. e4--\< e8-- e4-- e8 ~
        e2.\mp\> ~ e4. ~
        e2. r4.\!
        e4--\p e8-- e4-- e8-- e4-- e8 ~
        e4. ~ e4\< e8-- e4-- e8\> ~
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
        cs4. cs4--\< cs4-- \breathe cs4-- (
        f,!2.\mf\> g4. ~
        g2. ) r4.\!
        cs4--\p cs8-- cs4-- cs8-- cs4-- cs8 ~
        cs4. ~ cs4 cs8-- cs4-- cs8 ~
        \tupletSpan 1*6/8
        \tuplet 4/3 { cs4 f,! ( \< d' e cs' b'2\> g,4--\! ) }
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
        d4. d4-- d8 ~ d4. ~
        d4. d4--\< d8-- d4-- d8 ~
        d2.\mp\> ~ d4. ~
        d2. r4.\>
        d4--\p d8-- d4-- d8-- d4-- d8 ~
        d4. ~ d4\< d8-- d4-- d8\> ~
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

%{
convert-ly (GNU LilyPond) 2.18.0  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29, 2.17.97
%}
