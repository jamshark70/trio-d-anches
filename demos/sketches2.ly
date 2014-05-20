\version "2.18.2"
\include "english.ly"

\include "articulate.ly"

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

globalC = {
  \time 4/4 \numericTimeSignature
  \tempo 4 = 92
  \partial 8 s8 |
  \key cs \minor
  s1*7
  \time 2/4 s2
  \time 3/4 s2.
  \time 4/4 s1*10
  \time 2/4 s2
  \time 4/4 s1*15
}

sempreTenuto = \markup \italic "sempre tenuto"
nonEspr = \markup \italic "non espr."
espres = \markup \italic "espr."

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Oboe"
      shortInstrumentName = "Ob."
    } <<
      \globalC
      \relative c' {
        \override Hairpin #'to-barline = ##f
        d8\mf\< (
        ds?2\f\> ~ ds4. ) ds8-- ~
        ds4 ds-- ds--\p r
        <<
          {
            r2 e4.^\sempreTenuto e8 ~
            e4 e e2
          }
          {
            s2 s2\mp\>
            s2.. s8\p
          }
        >>
        R1
        r4 gs'2.^\espres \mp\< ~ (
        gs4 as2.\mf\> ~
        as4. ) r8\!
        R2.
        r4 gs\mp\< ( b cs
        ds2\> cs4 b )
        as32\! ( b as4.. ~ as8 ) \< gs8 ~ ( gs8. fss32 gs
        as2\mf\> ~ as4. ) r8\p
        r8 cs,,\mf\< ( ds e ds\> cs e ds\! )
        r2 r8 gs'\mp ^\espres ( b cs
        as4 \grace gs16 as2. )
        r2 r8 gs\mp\< ( b cs 
        ds4\mf cs8 b )
        \tuplet 5/4 { gs16\< [ ( a fs e ) cs ] ( }
        \tuplet 6/4 { ds16 [ fs ) b, ( cs e ) %{ \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur %} gs, ] ( }
        | \tuplet 3/2 { b16 [ cs as16\f\> \startTrillSpan ~ ] } as4. ~ as2 ~
        as4 ) r4 \p \stopTrillSpan
        R1
        r2 gs4\mp ( as ~
        as ~ \< \tuplet 3/2 { as8 ) gs ( b ) } fs'16 ( b, gs b fs'4\mf ~
        fs ) <<
          { gs,16 ( as8. ~ as2 ) }
          { s4\> s4. s8\! }
        >>
        r4 r8 a?\mf ^"urgently" ( \tuplet 5/4 { cs8\< ds ) e ( gs fs ) }
        \tuplet 3/2 { ds'16->\f\> ( b gs } a4.\mf ) \grace cs,16 ^( gs'8_\espressivo fs\! ) r8 a,\mf\< (
        cs ds ) \tuplet 3/2 { gs16->\> ( e a, e' gs8 ~ \! } gs4 ) \grace b16 ^( g8 f8 )
        \tuplet 5/4 { c8\< ( d e ) a, ( b } \tuplet 7/4 { ds8 ) f,-- g-- b-. fs'? ( e'  ) d,, _( }
        e8\f\> \grace d16 e4. ) e4--\p e-- ~
        e8 e4-- b8 ~ ^\sempreTenuto b4 ds ~
        ds8 ds4 ds ds gs8 ~
        gs gs4 gs a a8 ~
        a a'4 a a e'8\> ~
        e e4. ~ e8 e4. ~
        e2. r4\ppp
      }
    >>
    \new Staff \with {
      instrumentName = "Clarinet"
      shortInstrumentName = "Cl."
    } <<
      \globalC
      \new Voice \with {
        \remove "Note_heads_engraver"
        \consists "Completion_heads_engraver"
        \remove "Rest_engraver"
        \consists "Completion_rest_engraver"
      } \relative c' {
        \override Hairpin #'to-barline = ##f
        e8\mf\< ~
        e4.\f\> e8-- ~ e8 e4.-- ~
        e8 e4.-- ~ e4\p r4
        r4 r8 ds\mp\> ^\sempreTenuto ~ ds4 ds
        ds4. ds8 ~ ds4 ds\p
        r2 cs4\p ^\nonEspr ds
        ds e ds e
        e e e ds
        ds e e r4 r4
        r4 r8 ds8 ~ ds8 cs4 cs %completion heads start here
        cs cs ds cs
        ds ds ds\< cs
        ds ds ds ds8 ~
        ds8\! r8 fs,2\mf\< gs4\> ~
        gs2 e'4\p ^\nonEspr cs4
        ds cs8 ( e ds cs e\< ds
        cs e ds cs e ) cs ( ds e
        fs\mf gs e ds ) fs8\> ( e4 ) fs8 (
        e8 ) fs4 ( e8\< ~ e2 % ds4 ~ % fs4 e8 ~
        ds2 ) 
        e4\f\> e ds cs
        ds\p ^\nonEspr cs e ds
        ds ds ds cs
        ds ds cs\< ( ds8 e )
        cs ( ds fs e ) ds ( cs4 ) ds8 (
        cs4 ) bs\mf\> ~ ( bs8 cs ) ds4 ~ (
        ds cs2 ~ cs8\p ) r8
        R1
        r4 r8 ds8\p ^\markup \italic "sempre tenuto, non espr." ~ ds ds4 ds8 ~
        ds4 ds ~ ds8 e4.
        e4 cs' cs cs
        cs e e gs
        gs gs fs fs\>
        fs fs2. ~
        fs2. r4\ppp
      }
    >>
    \new Staff \with {
      instrumentName = "Bassoon"
      shortInstrumentName = "Bsn."
    } <<
      \globalC
      \new Voice \with {
        \remove "Note_heads_engraver"
        \consists "Completion_heads_engraver"
        \remove "Rest_engraver"
        \consists "Completion_rest_engraver"
      } \relative c' {
        \override Hairpin #'to-barline = ##f
        \clef tenor
        cs8\mf\< ~
        cs4\f\> cs-- cs-- cs--
        cs4.-- cs8-- ~ cs cs--\p r4
        r2 r8 cs4.^\sempreTenuto \mp\> ~
        cs8 cs4. ~ cs8 cs4 cs8\p
        r4 r8 e8\p ^\nonEspr ~ e8 e4 e4 %completion heads
        cs4 cs cs ds
        ds cs cs cs
        cs ds ds8 r4 r4
        r2 e4 ds
        e ds e e
        e e cs e\<
        e cs cs e
        e8-- cs\mf\< ( ds e ds\> cs e ds
        e cs ds cs\p ~ cs ) ds4^\nonEspr e
        e4 r8 \clef bass gs,,2\mp\<
        a1\mf\> ~
        a2.\! \clef tenor a'4\< ~
        a2 b4 bs4 ~
        bs4. cs8\f\> ~
        cs8 ds4 cs e e8\p ~
        e8 ^\nonEspr e4 ds cs cs  %completion heads
        e cs e e
        cs e \clef bass gs,4.\< ~
        gs2 a ~ (
        a8 b a2 ) a,8\mf\> ( a' ~
        a ) b4. ( a4 ~ a8\p ) r8
        R1
        r4 r8 b8--\p ^\nonEspr ~ b2
        b2-- e8-- ( ds4 ) b8-- \< ~
        b2. b,4 \mp\> ~
        b1
        r2\! <<
          { b,2 ~
            b1 ~
            b8 r8 r4 r2
          }
          { s2\pp\<
            s2 s2\>
            s8\!
          }
        >>
      }
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  \midi {}
}


\markup \column {
  \vspace #1.5
  \bold "Bassoon variation"
  \vspace #0.5
}

globalD = {
  \numericTimeSignature
  \tempo 4. = 63
  \time 9/8 s8*9
  %\mark \markup { \fontsize #-2 { \note #"4." #1 "=" \note #"4" #1 } }
  \tempo 4 = 63
  \time 3/4 s2.
  \time 4/4 s1
  % I really want this as a \mark but, fml, lilypond says no, you can't
  \override TextSpanner.bound-details.left.text = \markup \italic "accel."
  s1\startTextSpan s2.. s8\stopTextSpan
  \tempo 4 = 80
  s1*4
  \time 2/4 s2
  \time 4/4 s1*5
  \time 3/4 s2.
  \time 4/4 s1*5
}

\score {
%  \unfoldRepeats \articulate
  <<
    \new StaffGroup <<
      \new Staff \with {
        instrumentName = "Oboe"
        shortInstrumentName = "Ob."
      } <<
        \globalD
        \relative c' {
          d2. ~ d4. ~
          d8 r r4 r
          R1
          d2. ~ d8 r8
          r2 r4 e'4 ~
          e2 a,2 ~
          a2. cs,8 ( d ~
          d e4. ~ e4 ) d4 ~
          d1 ~
          d8 r8 r4
          r2 cs'16 ( b'8. ~ b4 ~
          b4. ) r8 r4 r8 b, ~
          \override TrillPitchAccidental.avoid-slur = #'inside
          b2 f'4 \pitchedTrill af,4\startTrillSpan ~ bf
          af4. r8\stopTrillSpan r2
          R1 R2.
          r4 d,2. ~
          d1 ~
          d2 ~ d8 r8 r4
          d1 ~
          d2 e2 ~
          e4. r8 r2
        }
      >>
      \new Staff \with {
        instrumentName = "Clarinet"
        shortInstrumentName = "Cl."
      } <<
        \globalD
        \relative c' {
          e2. ~ e4. ~
          e8 r8 r4 r4
          R1
          e2. ~ e8 r8
          r2 r4 b''4 ~
          b2 d, ~
          d4. cs8 ( d e4. )
          a,2. cs,4 ~
          cs2. ~ \tupletSpan 4 \tuplet 3/2 { cs4 f,!8 d' ( e ) r8 } \tupletSpan \default
          r4
          % r8. d16 ( \tuplet 7/4 { e16 d e d e d e } 
          \override TrillPitchAccidental.avoid-slur = #'inside
          r8 cs4. (
          \pitchedTrill d2\startTrillSpan ~ e
          d4. ) r8\stopTrillSpan r4 r8 ef, ~
          ef2 \pitchedTrill d'4\startTrillSpan e b''4\stopTrillSpan ~
          b4. r8 r2
          R1 R2.
          r2 r4 a,,4 ~
          a2 bf2 ~
          bf2 ~ bf8 r8 r4
          bf2 c2
          cs2. d4 ~ 
          d4. r8 r2
        }
      >>
      \new Staff \with {
        instrumentName = "Bassoon"
        shortInstrumentName = "Bn."
      } <<
        \globalD
        \relative c {
          \clef bass
          cs2. ~ cs4. ~
          cs4. cs,8 ( a' b )
          gs' ( fs'4 d,8 ) r2
          cs'2 ~ cs8 cs,, ( d fs )
          \tuplet 5/4 { gs8 c! ef f a } cs16 e fs4. ~ (
          fs8 f,! ) r4 r4 r8 f, ~
          f2. g4 ~
          g4. cs8 ( d e ) a ( b )
          \clef tenor gs'16 ( a b gs ) \tuplet 3/2 { a16-> ( gs d } e8 ~ e2 ~
          e8 ) r8 r4
          \clef bass \tuplet 3/2 { f,,8 d' ( e ) } \tuplet 5/4 { b'16 cs f,! d' e }
          \clef tenor cs'4 ~ \tuplet 3/2 { cs8 c d }
          \override TrillPitchAccidental.avoid-slur = #'inside
          cs16 ( as gs g ) \tuplet 5/4 { a16 ( fs e ds b } \pitchedTrill c!2\startTrillSpan ~ d
          c2 ) \clef bass bf,4\stopTrillSpan c, ~
          c4. \breathe cs8 f g \tuplet 5/4 { bf16 c ef f a }
          \clef tenor g'32 ( e8.. ) g32 ( e8.. ~ e8 ) d32 ( e16. ~ e4 ~
          e8 ) r8 r16 \clef bass cs,,16 f g \tuplet 7/4 { bf16 c ef f a b d }
          \clef tenor g32 ( e8.. ) d32 ( e8.. ~ e16 ) cs32 ( d e8 ~ \tuplet 3/2 { e4 ) g8 }
          \tuplet 3/2 { cs,8 g' f,! } r4 \tuplet 3/2 { r8 r8 e' } \clef bass a,,16 bf \tuplet 3/2 { f'16 g c }
          \clef tenor e32 a, e' a, ~ a8 ~ a8. a,16 \tuplet 5/4 { e'16 f a d e } f32 ( e8. ) d32 (
          e8 f4. ~ f8. )
          \shape #'((0 . -1) (-1 . 1) (0 . 0) (0 . 0)) Slur
          cs,16 ( g''4 ~
          g4 ) 
          \shape #'((0 . 2) (-2 . -1) (0 . -1.5) (0 . 0)) Slur
          f,16 ( b'8. ~ b2 ~
          b4 cs,8 ) r8 r2
        }
      >>
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
%  \midi {}
}
