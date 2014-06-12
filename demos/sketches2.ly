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
  \time 4/4 s1*8
  \time 5/4 s4*5
  \time 4/4 s1*6
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
        e8\f\> \grace d16 e8 ~ e2 ) e4--\p e-- ~
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
        r4 r4 r8 ds8\p ^\markup \italic "sempre tenuto, non espr." ~ ds ds4 ds8 ~
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
        r4 r4 r8 b8--\p ^\nonEspr ~ b2
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
%  \midi {}
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
  \mark \markup { \fontsize #-2 { \note #"4." #1 "=" \note #"4" #1 } }
  %\tempo 4 = 63
  \time 2/4 s2
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
          d2.\pp ~ d4. ~
          d8 r r4
          R1
          d2. ~ d8 r8
          r2 r4 e'4->\mf\> ~
          e2 a,2\p ~
          a2. cs,8\mp\< ( d ~
          d e4. ~ e4 ) d4 ~
          d1\f\> ~
          d8\p r8 r4
          r2 cs'16->\mf ( b'8. ~ b4 ~
          b4. ) r8 r4 r8 b,->\sfz\> ~
          \override TrillPitchAccidental.avoid-slur = #'inside
          b2 f'4 \mp \pitchedTrill af,4\startTrillSpan ~ bf \>
          af4. r8\stopTrillSpan \! r2
          R1 R2.
          r4
          <<
            {
              d,2. ~
              d1 ~
              d2 ~ d8
              r8 r4
              d1 ~
              d2 e2 ~
              e4. r8 r2
            }
            {
              s2.\p
              s2
              \set crescendoText = \markup \italic "poco cresc."
              \set crescendoSpanner = #'text
              s2\<
              s2 s8\!
              \unset crescendoText
              \unset crescendoSpanner
              s4.
              s2\mf s2\>
              s1
              s4. s8\pp s2
            }
          >>
        }
      >>
      \new Staff \with {
        instrumentName = "Clarinet"
        shortInstrumentName = "Cl."
      } <<
        \globalD
        \relative c' {
          e2.\pp ~ e4. ~
          e8 r8 r4
          R1
          e2. ~ e8 r8
          r2 r4 b''4->\mf\> ~
          b2 d,\p ~
          d4.\< cs8 ( d e4.\> )
          a,2.\p\< cs,4 ~
          cs2.\f\> ~ \tupletSpan 4 \tuplet 3/2 { cs4\mp f,!8\f\> d' ( e ) r8\! } \tupletSpan \default
          r4
          % r8. d16 ( \tuplet 7/4 { e16 d e d e d e } 
          \override TrillPitchAccidental.avoid-slur = #'inside
          r8 cs4.\p\< (
          \pitchedTrill d2\startTrillSpan ~ e
          d4. ) r8\stopTrillSpan \f r4 r8 ef,->\sfz\> ~
          ef2 \pitchedTrill d'4\startTrillSpan \mp e b''4\stopTrillSpan ~ \>
          b4. r8\! r2
          R1 R2.
          r2 r4 a,,4\p ~
          a2
          \set crescendoText = \markup \italic "poco cresc."
          \set crescendoSpanner = #'text
          bf2\< ~
          bf2 ~ bf8\! r8 r4
          \unset crescendoText
          \unset crescendoSpanner
          bf2\mf c2\>
          cs2. d4 ~ 
          d4. r8\pp r2
        }
      >>
      \new Staff \with {
        instrumentName = "Bassoon"
        shortInstrumentName = "Bn."
      } <<
        \globalD
        \relative c {
          \clef bass
          cs2.\pp ~ cs4. ~
          cs8 cs,8^\espres \< ( a' b )
          \shape #'((0 . -1) (0 . 1.5) (0 . 0.5) (0 . -1)) Slur
          gs' ( fs'4\> d,8 ) r2\!
          cs'2\pp ~ cs8 cs,, ( d fs )
          \tuplet 5/4 { gs8 ( \< c! ) ef ( f a ) } cs16\portato e\portato fs4.\mf\> ~ (
          fs4 f,!8\! ) r8 r4 r8 <<
            {
              f,\p ~
              f2. g4 ~
              g4.
            }
            { s8 s4 s2.\< s4.\! }
          >>
          cs8\mf\< ( d e ) a ( b )
          \clef tenor gs'16 ( a b gs ) \tuplet 3/2 { a16->\sfz\> ( gs d } e8 ~ e2 ~
          e8\p ) r8 r4
          \clef bass \tuplet 3/2 { f,,8->\mf\> d' ( e ) } \tuplet 5/4 { b'16 ( \< cs ) f,! d' e }
          \clef tenor cs'4->\f ~ \tuplet 3/2 { cs8 c ( d ) }
          \override TrillPitchAccidental.avoid-slur = #'inside
          cs16\> ( as gs g ) \tuplet 5/4 { a16\< ( fs e ds b ) } \pitchedTrill c!2->\sfz\>\startTrillSpan ~ d
          c2 \clef bass bf,4\mp\stopTrillSpan c,\> ~
          c4. \breathe cs8\p f g \tuplet 5/4 { bf16 ( c ) ef f a }
          \clef tenor g'32->\mp ( e8.. ) g32-> ( e8.. ~ e8\> ) d32 ( e16. ~ e4 ~
          e8 ) r8\! r16 \clef bass cs,,16\p\< f g \tuplet 7/4 { bf16 ( c ) ef ( f a b d ) }
          \clef tenor g32\mp ( e8.. ) d32 ( e8.. ~ e16 ) cs32 ( d e8 ~ \tuplet 3/2 { e4 ) g8\portato }
          \tuplet 3/2 { cs,8\portato \< g'\portato f,!\portato } r4\! \tuplet 3/2 { r8 r8 \clef bass e'->\mp }
          \set subdivideBeams = ##t
          \set baseMoment = #(ly:make-moment 1/8)
          \set beatStructure = #'(2 2 2 2)
          a,,16 ( bf \cresc ) \tuplet 3/2 { f'16 ( g c ) }
          \unset baseMoment
          \unset beatStructure
          \set subdivideBeams = ##f
          \clef tenor e32 ( a, e' a, ~ a8 ~ a8. ) a,16 ( \tuplet 5/4 { e'16 f a d e ) } f32\f ( e8. ) d32 (
          e8\> f4. ~ f8. )
          \shape #'((0 . -1) (-1 . 1) (0 . 0) (0 . 0)) Slur
          cs,16 ( g''4 ~
          g4 ) 
          \shape #'((0 . 2) (-2 . -1) (0 . -1.5) (0 . 0)) Slur
          f,16 ( b'8.\p ~ b2\> ~
          b4 cs,8\! ) r8 r2
        }
      >>
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
%  \midi {}
}


\markup \column {
  \vspace #1.5
  \bold "Connecting variation"
  \vspace #0.5
}

globalOB = {
  \numericTimeSignature
  %\bar "||"
  %\mark \markup { \fontsize #-2 { \note #"4." #1 "=" \note #"2" #1 } }
  %\tempo \markup { \fontsize #-2 { \note #"4." #1 "=" \note #"2" #1 } \fontsize #0 "(Doppio movimento)" }
  \tempo 2 = 96
  \time 2/2
  s1*6
  \time 3/2 s1.
  \time 2/2 s1*20
  \time 1/2 s2
  \time 2/2 s1*24
  \tempo "Frantic" 2 = 116
  s1*6
  \time 1/2 s2
  \time 2/2 s1*2
  \time 1/2 s2
  \time 3/4 s2.*2
  \time 2/2 s1
  \time 3/4 s2.
}

dashPlus = "staccatissimo"

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Oboe"
      shortInstrumentName = "Ob."
    } <<
      \globalOB
      \relative c' {
        d4-> b''-> d,,-> b''-> ~
        b4. d,8-. b'-. d,-. b'4-> ~
        b4. a8-+ af-+ gf-+ f-+ d-+
        b-+ af-+ gf-+ f-+ d ( e ) d\mp\< ( e )
        d ( e ) d ( e ) d\ff ( e ) r4
        R1\fermataMarkup
        d4->\ff r4 b''1->
        \tuplet 3/2 { d,,2-> b''-> e,,-> }
        cs'2-> ~ cs8 r e,4-.
        b''1->\sfz\> ~ b ~ b4 r4\p r2\fermata
        d,,8\p ( cs ) d8 ( cs ) ds ( cs ) ds ( cs )
        d8 ( cs ) d8 ( cs ) ds ( cs ) ds ( cs )
        e16\f\< ( cs' d e\! b'8-> ) r8 d,,8\p ( cs ) d8 ( cs )
        ds\< ( cs ) ds ( cs ) d8 ( cs d8 ) e->\sfp (
        d e ) d\< ( e ) d ( e ) d ( e ) 
        d ( e ) d ( e ) d\f ( e ) r4
        
        d8\p ( cs ) d8 ( cs ) ds ( cs ) ds ( cs )
        d8 ( cs ) d8 ( cs ) ds ( cs ) ds ( cs )
        d8-. b''4.->\sfz ~ b8 r d,,\mp ( cs )
        d ( cs d ) ds->\sf ( cs\p ds cs ds )
        cs\< ( ds cs ds ) cs ( ds e fs
        g->\f ) r cs,\mp ( ds ) cs ( ds cs ) d-.
        d-+\< d-+ d-+ d-+\f r4 r8 d-^
        cs\mp ( d ) cs ( d ) cs ( ds cs ) e->\sf (
        d e d\< e ) d-. d-+ d-+ d-+\f
        R2
        d8-^\sf d-. d-. d-. e-^\sf e-. e-. d-^\sf
        \tuplet 5/4 { d4-. d-. d-. d-. e-^\sf }
        \tuplet 9/8 { e8-. [ e-. d-^\sf ] d-. r r r4. }
        \tuplet 3/2 { e4-^\sf e-. e-. } r2
        r8 f-+\f f-+ f-+ r2
        R1
        cs'8\fff ( ds ) cs8 ( ds ) cs ( d ) cs ( d )
        cs8 ( ds ) cs8 ( ds ) cs ( ds ) cs ( d )
        cs ( d ) cs ( d ) r2
        R1
        bf,1->\sff (
        bf'8 ) r8 e,-^ r8 r2
        r2 cs'2->\sff\< ~ (
        cs4. ds8 ) cs\fff ( ds cs ) d-> (
        cs d cs d cs d ) r8 e,->\sfp ~
        e1
        r2 r4 e4\mp ~
        e4. r8 e''2->\ff\> ~
        e2. r4\p
        f,,8^"upper notes to the fore" ( e ) f ( e ) fs\cresc ( e ) fs ( e )
        f ( e ) g ( f ) g ( f ) g ( fs )
        g ( fs ) g-. g-. g-. g-+\f\< g-+ g-+
        g-+ g-+ g-+\ff r8 r2
        R1\fermataMarkup
        cs,8\f ( ds ) cs8 ( ds ) cs8 ( d ) cs8 ( d )
        cs8 ( ds ) cs8 ( ds ) cs8 ( d ) cs8 ( d )
        \tupletSpan 2 \tuplet 3/2 { ds4->\ff cs-> ds-> r ds'-> cs-> } \tupletSpan \default
        ds4-> r8 cs,8-.\f d ( cs ) d ( cs )
        ds\< ( cs ) ds ( cs ) d ( cs ) ds-. cs-.
        ds->\ff r r d ( ds-> ) r d ( ds-> )
        r ds-> r4
        r4 cs8\f ( ds ) cs ( ds ) cs ( ds )
        \tuplet 5/4 { cs4->\ff d!-> cs-> d-> cs }
        r4 r8 d (
        ds4-> ) r d (
        ds-> ) r r
        d! ( ds-> ) r ds->
        r r d!
      }
    >>
    \new Staff \with {
      instrumentName = "Clarinet"
      shortInstrumentName = "Cl."
    } <<
      \globalOB
      \relative c' {
        e4-> b'-> e,-> b'-> ~
        b4. e,8-. b'-. e,-. b'4 ~
        b4. f'8-+ gf-+ bf,-+ cf-+ df-+
        d,!-+  e!-+  cs-+ d-+ e ( ds ) e\mp\< ( ds )
        e ( ds ) e ( ds ) e\ff ( ds ) r4
        R1\fermataMarkup
        e4->\ff r4 b'1->
        \tuplet 3/2 { e,2-> b'-> d,-> }
        b''2-> ~ b8 r8 d,,4-.
        cs''1->\sfz\> ~ cs ~ cs4 r4\p r2\fermata
        R1*15
        f,,,16\mp ( d' e cs' b'8 ) r8
        R1*2
        r2\pitchedTrill d,,2:32->\fff\startTrillSpan ^\markup { \italic "flzg." "(optional)" } e
        r2\stopTrillSpan r8 \pitchedTrill e4.:32->\startTrillSpan f
        r2\stopTrillSpan r4 \tuplet 3/2 { e8\mp ( cs' e, }
        cs'8 ) r8 \tuplet 3/2 { d8 ( b' d, } b'8 ) r8 r4
        cs8\fff ( ds ) cs ( ds ) cs ( d ) cs ( d )
        cs8 ( ds ) cs ( ds ) c ( d ) bf ( cf )
        af\> ( g ) e ( df c a fs e
        ef\< ) f, ( g b \tuplet 6/4 { cs8 e fs a b ef }
        bf'8\ff ) r8 r4 r2
        bf4->\sff ( bf,,8 ) r8 r4 r8 e\pp\< (
        \pitchedTrill d2\startTrillSpan ( e e8\stopTrillSpan\ff ) r8 r4
        r4 cs''8\fff ( ds ) cs ( ds cs ) d-> (
        cs d cs d cs d ) r8 d,,->\sfp ~
        d1
        d,8-.\pp d-. r d-. r4 d'4\mp ~
        d4. r8 d''2->\ff\> ~
        d4 e,,8\p ( f e f e f )
        e ( fs ) e ( fs ) e\cresc ( f ) e ( f )
        e ( f ) d ( e ) d ( e ) d ( e )
        \tupletSpan 2 \tuplet 6/4 { d8 ( e d bf d e a b! af' e! d bf }
        \tupletSpan \default \tuplet 3/2 { d,8 [ e d ] } bf8\ff ) r8 r2
        R1\fermataMarkup
        R1*2
        \tupletSpan 2 \tuplet 3/2 { ds'4->\ff cs-> ds-> r ds'-> cs-> } \tupletSpan \default
        ds4-> r4 r2
        R1
        r4 r8 e,,8 ~ e-> r e ~ e->
        r8 e-> r4
        R1*2
        r4 r8 e ~
        e4-> r e ~
        e-> r r
        e ~ e-> r e->
        r r e ~
      }
    >>
    \new Staff \with {
      instrumentName = "Bassoon"
      shortInstrumentName = "Bsn."
    } <<
      \globalOB
      \relative c' {
        \clef bass
        cs4-> r cs-> r
        R1
        cs,16 ( e gs as ds8 ) b-+ g-+ f-+ ef-+ b-+
        a-+ g-+ f-+ ef-+ cs''4 cs\mp\<
        cs cs cs\ff r4
        R1\fermataMarkup
        cs4->\ff r4 r1
        \tuplet 3/2 { cs2-> r cs-> }
        r2 r4 cs-.
        e,,1->\sfz\> ~ e ~ e4 r4\p r2\fermata
        \clef tenor cs''8\p ( ds ) cs ( ds ) cs ( d ) cs ( d )
        cs ( ds ) cs ( ds ) cs ( d ) cs ( d )
        cs16\f\< ( d e a\! b8-> ) r8 cs,\p ( ds ) cs ( ds )
        cs\< ( d ) cs ( d ) cs ( ds cs ) f,!->\sfp ~ (
        f cs' f,\< cs' ) f,4-- f->
        f-> f-> f->\f r4
        cs'8\p ( ds ) cs ( ds ) cs ( d ) cs ( d )
        cs ( ds ) cs ( ds ) cs ( d ) cs ( d )
        cs b'4.->\sfz ~ b8 r cs,8\mp ( ds )
        cs ( ds cs ) cs->\sf ( d\p cs d cs )
        d\< ( cs c a ) \clef bass g ( e cs16 c a gf
        f8\f ) r \clef tenor d''8\mp ( cs ) d ( cs d ) f,-.
        \shape #'((0 . -0.3) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
        cs'\< ( e cs f,\mf ) r4 r8 cs'-^\f
        ds\mp ( cs ) ds\< ( cs c bf af gf
        g ) f-. f-. f-. f-. e'-+ e-+ e-+\f
        R2
        \clef bass cs8-^\sf cs-. cs-. cs-. f,-^\sf f-. f-. cs'-^\sf
        \tuplet 5/4 { cs4-. e-^\sf e-. f,,-. f-^\sf }
        \tuplet 9/8 { f'8-. [ f-. cs'-^\sf ] cs-. r8 r8 r4. }
        \tuplet 3/2 { f,,4-^\sf g-. d'-> } r2
        r8 e'-+\f e-+ e-+ r2
        R1
        %{\clef bass%} cs,,8\fff ( ds ) cs ( ds ) cs8 ( d ) cs ( d )
        cs8 ( ds ) cs ( ds ) cs8 ( ds ) cs ( d )
        cs8\> ( d ) cs ( d ) cs ( d\! ) r4
        R1
        bf8-^\ff r8 r4 r2
        bf''8-^ r8 d2.->\sff ~ (
        d2 f,,8 ) r8 r4
        r4 d!8\fff ( cs ) d ( cs d ) cs-> (
        ds cs ds cs ds cs ) r bf''8->\sfp ~
        bf1
        cs,,8-.\pp cs-. r cs-. r4 bf''4\mp ~
        bf4. r8 bf,,2->\ff\> ~
        bf2. r4\p
        bf''2\< ( a ~
        a4 af2. )
        gf8-^\sfz r8 r4 r2
        r4 \clef tenor d'16->\sfz\> ( e8. ~ e2 ~
        e2.\fermata ) r4\p
        d8\f ( cs ) d ( cs ) ds ( cs ) ds ( cs )
        d8 ( cs ) d ( cs ) ds ( cs ) ds ( cs )
        \tupletSpan 2 \tuplet 3/2 { cs4->\ff d-> cs-> r cs-> d-> } \tupletSpan \default
        cs4-> r8 ds-.\f cs ( ds ) cs ( ds )
        cs\< ( d ) cs ( d ) cs r8 cs,-. d-.
        cs->\ff r r cs' ~ cs-> r cs ~ cs->
        r cs-> r4
        r4 d8\f ( cs ) d ( cs ) d ( cs )
        \tuplet 5/4 { ds4->\ff cs-> ds-> cs-> ds-> }
        r4 r8 cs8 ~
        cs4-> r cs ~
        cs-> r r
        cs ~ cs-> r cs->
        r r cs ~
      }
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  % \midi {}
}