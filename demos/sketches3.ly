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
  \time 6/8 s2.*8
  \bar "||"
  \time 9/8 s1*9/8
  \time 6/8 s2.*9
  \tempo 2 = 88  %% change this!
  \time 2/2 s1*3
  \tempo 4. = 88
  \time 6/8 s2.
  \tempo 2 = 88
  \time 2/2 s1*6
  \tempo 4. = 88
  \time 6/8 s2.*2
  \time 9/8 s1*9/8
  \time 6/8 s2.*31
  \bar "|."
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
        e4 e8 r4.
        r4. e''4 e8
        R2.
        bf,,4 bf8 d4 d8
        r4. bf'4 bf8
        R2.
        r8 d, d' r e, e' bf'8. af16-> ( g8 )
        r8 fs, fs' gs16 ( as b a f c )
        r8 d, d' r e, fs'32 ( es fs es
        fs8. ) gs,16-> ( fs'8 ) f8. g,16-> ( f'8 )
        r8 cs, d' e'8. e16-> e8
        R2.
        r4. e,8. e16-> e8
        R2.
        r8 r g g, r f'
        f, r r e''8. f,16-> ( e'8 )
        R1*3
        e,8. ( d16 ) f8 ~ ( f16 e ) g8. ( f16 )
        R1*2
        e,2 ( f
        g8-. ) r8 r4 e'2 ~ (
        e f
        g2 ) \tuplet 3/2 { r4 d8 ( e cs d }
        e4. ~ e8 ) e16 ( f d e
        f4. ~ f8 ) g16 ( a f g
        af8. ) bf,16-> ( af'8 ) g8. a,16-> ( g'8 ) r4.
        e,4 ( f g )
        r4. e'4. (
        f g )
        cs8 ( d e ) cs4 cs8
        cs4 cs8 r4.
        r4. cs,,8 ( d e )
        cs4. d
        r8 cs16 ( d e8 ) d16 ( e f8 ) d16 ( e )
        b'4.-> \tuplet 2/3 { r8 cs,8 }
        %d4. ~ d8 r r
        d4 cs''16 ( d e8 ) r r
        r4. cs,16 ( d e8 ) d16 ( e
        f8 ) r r r4.
        f4. \tuplet 2/3 4. { e8 ef
                             d c r g' ~ }
        \tuplet 5/6 { g8 gf f e ef }
        df8 r r e af4 ~
        af e8 af4 af8
        af4 af8 r4.
        g4 g8 f4 f8
        r4. e4 e8 
        e4 e8 e4 e8
        r4. r8 r e
        d4 d8 d4 d8 d4 d8 r4.
        r8 r8 e'8 e4 e8 r4. d,,4 d8
        r4. e'4. ef4 d8 c b bf
        a g4 fs16 ( gs a c d fs \tuplet 2/3 { gs8 ) d8 } e16 ( fs ) g8 fs16 ( e )
        d8 r r r4. %r2.
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
        bf4 bf8 r4.
        r4. d'4 d8
        %r8 r bf16 ( c cs a as b cs d
        r8 r bf16 ( c \tuplet 9/6 { cs16 e, f g a as b cs d }
        e4 ) e8 bf'4 bf8
        r4. d,,4 d8
        R2.
        R1*9/8
        R2.*4
        \tuplet 8/6 { bf'16 ( cs, d e f g gs as } \tuplet 4/3 { b8 ) cs-> cs-> d-> }
        R2.
        \tuplet 4/3 4. { b,8-> cs-> cs-> d-> d-> e-> e-> f-> }
        R2.
        \tuplet 4/3 { e,8-> d-> d-> cs-> } r4.
        e4 d8 ( e f4 ) e8 ( d
        e4 ) cs2 e4
        d8 ( e f4 ) g2
        r2.
        e4 d8 ( e f4 ) g ~
        g f d'4. ( c8 ) %c'8 ( bf a4 )
        bf8 ( a ) g4 ~ ( g8 a ) bf4 ~ (
        bf8 c cs4 ) d8 ( e f4 )
        d4 d'2 ( cs4 )
        d8 ( e cs d ) e2 (
        d8 ) e16 ( cs d e ) d4. (
        e8 ) f16 ( g e f ) g4.
        r4. r4. \pitchedTrill d,4. ~ \startTrillSpan e
        d2.
        r4.\stopTrillSpan e4. (
        f g )
        cs,,8 ( d e ) cs'4 cs8
        cs4 cs8 cs ( d e )
        cs4. ~ cs8 r cs (
        d e ) b' ~ b4. ~
        b8 r r r4.
        \tuplet 2/3 4. { r8 cs, d e }
        %b'4. ~ b8 r r
        b'4 cs,16 ( d e8 ) r r
        R2.
        r4. e'4. ~
        e4 ef d
        df8 cf bf gf'4 f8 ~
        \tuplet 2/3 4. { f8 e ef df }
        c8 r r d bf'4 ~
        bf4 d,8 bf'4 bf8
        bf4 bf8 r4.
        b!4 b8 cs4 cs8
        r4. d4 d8
        d4 d8 ds4 ds8
        r4. r8 r ds8
        e4 e8 e4 e8 e4 e8 r4.
        r8 r d, d4 d8 r4. e,4 e8
        r4. d''4. ~ \tuplet 2/3 { d8 cs8 ~ } cs4 a8
        gs8 d,16 ( e a b e4 ) cs8 d a16 ( b e fs b8 ) cs,16 ( d a' b
        e8 ) r r r4. %r2.
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
        d4 d8 r4.
        r4. bf,,4 bf8
        R2.
        d''4 d8 e,4 e8
        r4. e'4 e8
        R2.
        bf,,8-> bf' r d, d' r e, e' r
        bf,8-> bf' r fs'16 ( gs a f ef b )
        bf,8-> bf' r d, d' r
        bf,8-> bf' r d, d' r
        e, r bf-> d8. d16-> d8
        R2.
        r8 r bf-> d' e' r
        \tuplet 4/3 4. { r4 d8-> c-> b-> a-> gs-> fs-> }
        r8 bf,,8 bf' r d, d'
        \tuplet 4/3 { r8 d,-> d-> cs-> } r4.
        r4 bf' af g
        fs e g f
        af g bf a
        \clef tenor g''8 f e d cs4
        \clef bass r2 bf,4 a
        bf g a8 ( bf c4 )
        d f e2 ~
        e4 d bf' a
        bf8 ( a g4 ) \tuplet 3/2 2 { bf,,4 bf' r
                                     e, e' r bf bf' r }
        %R2.*2
        r4. \clef tenor \tuplet 2/3 4. { bf'8 af
                                         g gf f ef }
        \pitchedTrill d4.\startTrillSpan e \clef bass cs,,8\stopTrillSpan cs'' r r4.
        \tuplet 2/3 4. { bf8 a af gf }
        r8. bf,,16 ( c cs d f g a bf c
        d ) g, ( a bf c d e f g a bf c )
        cs8 ( d e ) cs,,4 cs8
        cs4 cs8 r4.
        \clef tenor cs''8 ( d e ) cs4. ~
        cs8 r r cs ( d e )
        b'4.-> ~ b8 r r
        r4. \tuplet 2/3 { cs,8 d }
        e4. r8 \clef bass cs,16 ( d e8 )
        d16 ( e f8 ) e16 ( f g8 ) r r
        r cs,16 ( d e8 ) d16 ( e f8 ) e16 ( f
        g8 ) cs,16 ( d e8 ) d16 ( e f8 ) g16 ( af
        bf8 ) f16 ( g af8 ) g16 ( af bf8 ) af16 ( bf
        b!8 ) f16 ( g af8 ) g16 ( af bf8 ) b16 ( cs
        d8 ) \clef tenor d8 d' ~ d4 d,8
        d'4. d4 d8
        d4 d8 r r cs ~
        cs4 cs8 c4 c8
        r4. bf4 bf8
        fs4 fs8 d4 d8
        \clef bass \tuplet 9/6 { d,,16 _( e f fs g a bf c cs } d4 ) d8
        cs,4 cs8 cs4 cs8 cs4 cs8 r4.
        r4 cs'8 cs4 cs8 r4. cs'4 cs8
        r4. cs4 c8 ~ c8 b4 ~ b8 d,16 ( e gs a
        \tuplet 2/3 { d8 ) cs } c8. a,16 ( bf c cs ds e8 ) f-> ~ f e, d
        %\tuplet 2/3 { d8 ) cs } \tuplet 4/3 { c8 bf a g } fs8 [ r f8-> ] ~ f e, d
        cs8 r r r4. %r2.

      }
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  \midi {}
}


%{
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
%}