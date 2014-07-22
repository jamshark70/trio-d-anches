\version "2.18.2"
\include "english.ly"

% \include "articulate.ly"
\include "/home/dlm/Documents/ly/include/slash.ily"

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

globalA = {
  \numericTimeSignature
  \tempo "Più mosso" 4. = 88
  \time 6/8 s2.*4
  \time 9/8 s1*9/8
  \time 6/8 s2.*9
  \time 9/8 s1*9/8  % 2*9/8
  \time 6/8 s2.*22
  \time 9/8 s1*9/8
  \time 6/8
}

dashPlus = "staccatissimo"

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Oboe"
      shortInstrumentName = "Ob."
    } <<
      \globalA
      \relative c' {
        cs8 ( d e ) cs4. ~
        cs4. cs8 ( d e )
        cs4 cs8 ( d8 ) e16 ( cs d e )
        d2.
        cs8 ( d e ) cs2.
        cs8 ( d e ~ e ) f4 ~ (
        f4 e8 ) g4. ~
        g8 af4 ~ af4. ~
        af8 r r f ( e d )
        cs8 r r r4.
        r8 r cs ( d ) e16 ( cs d e )
        d2.
        d4 e8 d4 e8
        d16 ( e cs d ) e8 ~ e4. ~
        e4 e8 d4 e8 d4 e8
        cs8 r8 r cs4 cs8
        cs4 cs8 r4.
        R2.
        g'4 g8 r4.
        cs,4 cs8 e4 e8
        R2.
        r8 cs16 ( d g a d8 ) d,16 ( e a b
        e4 ) e8 r r cs-+
        e-+ b-+ d,-+ cs4 cs8
        cs16 ( d e8 ) d16 ( e f8 ) e16 ( f g8 )
        e4 e8 r4.
        r4. c'!4 ( b8 )
        R2.
        r4. r8 cs,16 ( f g b
        cs4. ~ \tuplet 2/3 4. { cs8 ) f,->
                                d'-> e-> } cs'4.->
        e,16 ( cs d e ) d8 ~ ( d4 e8 )
        d16 ( e cs d ) e8 ~ ( e4 cs8 )
        d8-+ e-+ cs-+ d-+ e-+ e,-+
        d'-+ e'-+ d,-. cs-> ( d e )
        cs ( d e ) cs,-> ( d e )
        e'4 e8 r d4
        %b'8-+ e-+ d,-+ b'-+ d,-+ d,-+ r d'4->
        %a8-+ cs-+ d-+ b'-+ d,-+ d,-+ r d'4->
        f8 ( e-. ) d-+ f ( g-. ) f-+ r g4->  % b-+ b'-+ b,-+ r d4->
        e'4-> e,-> cs->
        e,4 e8 e4 e8
      }
    >>
    \new Staff \with {
      instrumentName = "Clarinet"
      shortInstrumentName = "Cl."
    } <<
      \globalA
      \relative c' {
        cs2.
        cs8 ( d e ) cs4. ~
        cs4 r8 r4.
        r8 cs16 ( d e8 ) d16 ( e f8 ) e16 ( d
        cs8 ) r r r4. cs8 ( d e )
        cs8 r cs d4 e8 ~
        e8 d4 ~ d8 cs16 ( d e8 )
        d16 ( e f8 ) e16 ( f ) g8 ( f e )
        f ( e d ) f4. (
        cs8 ) r r cs ( d e )
        cs4. ~ cs8 r r
        r d16 ( e cs d ) e4.
        e4 d8 e4 d8
        e8-. d4 e16 ( cs d e ) d8 ~
        d4 g,8 e'4 d8 e4 g,8
        cs8 r r cs4 cs8
        cs4 cs8 r4.
        \tuplet 2/3 4. { cs8-> d-> e-> f-> }
        d4 d8 f,4 f8
        r4. g'4 g8
        r4. \tuplet 2/3 { r8 f,-> ~ }
        f2. ~
        %f4 f8 r8 r bf'-+
        %f-+ ef-+ c!-+ e,4 e8
        f4 f8 r8 r d'-+
        fs-+ e-+ bf-+ e,4 e8
        R2.
        cs''4 cs8 r4.
        r8 d,,16 ( e a b d4.
        e8 ) r r r d,16 ( e a b
        d2. ~
        d8 ) \shape #'((0 . 0) (0 . 0.5) (-1.5 . 0.5) (0 . -0.5)) Slur b'16 ( d e a b4. ~
        b8 ) r r f,,8 d' e
        cs' g16 ( cs ) b'8-> ~ b4.
        b,4. d,16 ( e cs d e8 ~
        e ) d'-+ d,-+ e'-+ cs-+ d-+
        e-- d-. e ~ e e'-+ d-+
        e4 d8 cs-> ( d e )
        d,4 d8 r cs'4
        e8-+ d,-+ cs,-> ~ cs cs'-+ e,-+ a,4.->
        d'4-> d,-> d'->
        bf,4 bf8 bf4 bf8
      }
    >>
    \new Staff \with {
      instrumentName = "Bassoon"
      shortInstrumentName = "Bsn."
    } <<
      \globalA
      \relative c' {
        \clef tenor
        cs4. cs8 ( d e )
        cs4. ~ cs8 r cs (
        d e ) cs8 ~ cs4. ~
        cs4 r8 r4.
        r4. cs8 ( d e ) cs4. ~
        cs4. ~ cs4 cs8 (
        d e ) cs ~ cs4 cs,8
        cs'2. ~
        cs4 r8 r4.
        cs8 ( d e ) cs4.
        cs8 ( d e ) cs4. ~
        cs4. ~ cs16 r \clef bass f,,16 ( g c d
        f8 ) e,16 ( a b d g8 ) f,16 ( g c d
        f8 ) g,16 ( b c f g4) g8
        \clef tenor g4 d'8 g,4 f8 g4 d'8
        cs8 ( d e ) cs4. ~
        cs8 r r cs8 ( d e ~
        e4. ) d4.
        \acciaccatura { e16 d } e4 e8 r4.
        cs4 cs8 d4 d8
        \tuplet 2/3 4. { cs8-> d-> e-> f-> ~ }
        f4. \tuplet 2/3 { e8 d }
        cs4 cs8 r r \clef bass b-+
        g-+ d-+ af-+ f4 f8
        cs'16 ( d e8 ) d16 ( e f8 ) e16 ( f g8 )
        f,4 f8 r8 e16 _( a b d
        f2. ~
        f8 ) f,?16 ( g c d f4. ~
        f8 ) e16 ( g a d e4. )
        \tuplet 2/3 4. { f,,8-> d'-> e-> cs'-> }
        e8 cs16 ( d e cs d4. )
        r4. e16 ( cs d e d8 ~
        d4. ) b,4.
        r4. a'4. ~
        a8 r r a,4.
        a' cs,,8-> ( d e )
        r4. \clef tenor a''4.->
        \clef bass a,-> a,-> r8 r a (
        bf2. )
        d'4 d8 d4 d8
      }
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  \midi {}
}

\markup \column {
  \vspace #2
  \bold "Final rush"
  \vspace #0.5
}

globalX = { \time 12/8 s1.*5 \bar "|." }

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Oboe"
      shortInstrumentName = "Ob."
    } <<
      \globalX
      \relative c''' {
        e4 e8 e4 e8 e4 e8 r4.
        r8 r8 d,8 d4 d8 r4. e'4 e8
        r4. e,4. ef4 d8 c b bf
        a g4 fs16 ( gs a c d fs \tuplet 2/3 { gs8 ) d8 } e16 ( fs ) g8 fs16 ( e )
        d8 r r r4. r2.
      }
    >>
    \new Staff \with {
      instrumentName = "Clarinet"
      shortInstrumentName = "Cl."
    } <<
      \globalX
      \relative c'' {
        d4 d8 d4 d8 d4 d8 r4.
        r8 r e' e4 e8 r4. d,4 d8
        r4. d'4. ~ \tuplet 2/3 { d8 cs8 ~ } cs4 a8
        gs8 d,16 ( e a b e4 ) cs8 d a16 ( b e fs b8 ) cs,16 ( d a' b
        e8 ) r r r4. r2.
      }
    >>
    \new Staff \with {
      instrumentName = "Bassoon"
      shortInstrumentName = "Bsn."
    } <<
      \globalX \clef bass
      \relative c, {
        cs4 cs8 cs4 cs8 cs4 cs8 r4.
        r4 cs'8 cs4 cs8 r4. cs,4 cs8
        r4. cs''4 c8 ~ c8 b4 ~ b8 d,16 ( e gs a
        \tuplet 2/3 { d8 ) cs } c8. a,16 ( bf c cs ds e8 ) f-> ~ f e, d
        %\tuplet 2/3 { d8 ) cs } \tuplet 4/3 { c8 bf a g } fs8 [ r f8-> ] ~ f e, d
        cs8 r r r4. r2.
      }
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  %\midi {}
}

