\language "english"

bsnTheme = \relative c' {
  \override Hairpin #'to-barline = ##f
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
  %\clef bass
  %cs,,2.\pp ~ cs4.
}

bsnTwelveEight = \relative c' {
  \override Hairpin #'to-barline = ##f
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
  R2.
}

bsnSixEight = \relative c {
  \override Hairpin #'to-barline = ##f
  \clef bass
  cs8->\mf\> ( cs'\! ) r8 r4.
  r8 cs,->\mf\> ( cs'\! ) r4.
  r4. cs4\mf\< d8 ~ (
  d4\f cs8 ) d\> ( cs ) cs
  e ( d ) cs bs4 ( cs8\p )
  cs,8->\f ( cs' ) r8 r4.
  R1*9/8
  cs,,8->_\subffMarkup ( cs' ) r8 r4.
  cs8\mp ( cs' ) r8 r4.
  R2.
  f,,!8-> ( f'! ) r8 r4.
  cs,8->\mf ( cs' ) r8 f,!8-> \cresc ( f'! ) r8 g,8 ( c'! ) r8
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
  bf,,16\f ( c ) e-. a-. cs-.\< fs-. c'-. r r ef,-. f-. b?-.
  \clef tenor \tuplet 3/2 { e16->\ff ( [ f g } a8 ) ] r8 r8 r8 \clef bass bf,,,8->
  bf'\> ( d' ) r8 
  \shape #'((0 . -0.5) (0 . 1) (0 . 1) (0 . 0.4)) Slur
  %\once \override Accidental #'X-offset = #0.2
  %\once \override Accidental.avoid-slur = #'inside  % THIS DOES NOTHING, WHY???
  bf,16\mp ( \once \override Accidental #'extra-offset = #'(0.25 . 0) bf' ) d ( bf d bf )
  \clef tenor d ( bf d bf a bf ) d\< ( bf a bf d e )
  a ( f e c bf a ) \clef bass f ( ef ) b-. g-. cs,8
  cs''4.\sfp ~ cs4 r8
  \tupletSpan 8
  \tuplet 3/2 { cs,,16\f\< ( d e g a bf } c?8\! ) r8 r8 cs'8->\sfp ~
  cs4. ~ cs8 r8 r8
  r4. r8 cs4->\sfp ~
  cs4 r8 cs4.->\ff
  R2.
  d4.-> r4.
  r4. d4.-> ~
  d4 r8 r4.
  r4. d8-^ r8 r8
  r4. d4.-> ~
  d4 d2-> ~
  d8 r8 r4 r4
  R1*6 R1\fermataMarkup
  \cadenzaOn R1 \cadenzaOff
  r4 r8 a8\pp^\markup { \italic "non vib." } ~ a2 ~
  a2 ~ a16 r8.
  r4 r4 a4 ( \ppp
  \cadenzaOn
  bf1. ~ bf2 ) s8
  r1\fermata
  \cadenzaOff
  R2
}

bsnOb = \new Voice \with {
  \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
  \remove "Rest_engraver"
  \consists "Completion_rest_engraver"
}
\relative c' {
  \override Hairpin #'to-barline = ##f
  \clef tenor
  %cs8\mf\< ~
  r4 r cs\< ~
  cs4\fff\> cs-- cs-- cs--
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
  R1
  \resetRelativeOctave c'
  \clef tenor e4\p ^\nonEspr ds ds e
  e ds e r4
  r4 r8 ds ~ ds cs4 r8
  r2 cs4-- \pp r4 
  R2 \fermataMarkup
}

bsnBsn = \relative c {
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
  \clef tenor
  \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
  gs'16 ( a b gs ) \tuplet 3/2 { a16->\sfz\> ( gs d } e8 ~ e2 ~
  e8\p ) r8 r4
  \clef bass \tuplet 3/2 { f,,8->\mf\> d' ( e ) } \tuplet 5/4 { b'16 ( \< cs ) f,! d' e }
  \clef tenor cs'4->\f ~ \tuplet 3/2 { cs8 c ( d ) }
  \override TrillPitchAccidental.avoid-slur = #'inside
  cs16\> ( as gs g ) \tuplet 5/4 { a16\< ( fs e ds b ) } \pitchedTrill c!2->\sfz\startTrillSpan ~ d
  c2 \clef bass bf,4\stopTrillSpan c,\> ~
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
  \clef tenor e32 ( a, e' a, ~ a8 ~ a8. ) a,16 ( \tuplet 5/4 { e'16 f a d e ) } f32\mf ( e8. ) d32 (
  e8\> f4. ~ f8. )
  \shape #'((0 . -1) (-1 . 1) (0 . 0) (0 . 0)) Slur
  cs,16 ( g''4 ~
  g4 )
  \shape #'((0 . 2) (-2 . -1) (0 . -1.5) (0 . 0)) Slur
  f,16 ( b'8.\p ~ b2\> ~
  \noBreak
  b4 cs,8\! ) r8 r2
}

dashPlus = "staccatissimo"

bsnOB = \relative c' {
  \override Hairpin #'to-barline = ##f
  \clef bass
  cs4->\f r cs-> r
  R1
  cs,16 ( e gs as ds8 ) b-+ g-+ f-+ ef-+ b-+
  a-+ g-+ f-+ ef-+ cs''4 cs\mp\<
  cs cs cs\ff r4
  R1\fermataMarkup
  cs4->\ff r4 r1
  \tuplet 3/2 { cs2-> r cs-> }
  r2 r4 cs-.
  e,,1->\sfz\> ~ e ~ e4 r4\p r2\fermata
  %{\clef tenor%} cs''8\p ( ds ) cs ( ds ) cs ( d ) cs ( d )
  cs ( ds ) cs ( ds ) cs ( d ) cs ( d )
  \clef tenor cs16\f\< ( d e a\! b8-> ) r8 \clef bass cs,\p ( ds ) cs ( ds )
  cs\< ( d! ) cs ( d ) cs ( ds cs ) f,!->\sfp ~ (
  f cs' f,\< cs' ) f,4-- f->
  f,-> f-> f'->\f r4
  \clef tenor
  cs'8\p ( ds ) cs ( ds ) cs ( d ) cs ( d )
  cs ( ds ) cs ( ds ) cs ( d ) cs ( d )
  cs b'4.->\sfz ~ b8 r cs,8\mp ( ds )
  cs ( ds cs ) cs->\sf ( d\p cs d cs )
  d\< ( cs c a ) \clef bass g ( e cs16 c a gf
  f8\f ) r \clef tenor d''8\mp ( cs ) d ( cs d ) f,-.
  \shape #'((0 . -0.3) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
  cs'\< ( e cs f,\f ) r4 r8 cs'-^
  ds\mp ( cs ) ds\< ( cs c bf af gf
  g ) f-. f-. f-. f-. e'-+ e-+ e-+\f
  R2
  \clef bass cs8-^\sf cs-. cs-. cs-. f,-^\sf f-. f-. cs'-^\sf
  \tuplet 5/4 { cs4-. e-^\sf e-. f,,-. f-^\sf }
  \tuplet 9/8 { f'8-. [ f-. cs'-^\sf ] cs-. r8 r8 r4. }
  \tuplet 3/2 { f,,4-^\sf g-. d'-> } r2
  r8 e'-+\f e-+ e-+ r2
  R1
  %{\clef bass%} cs,,4.->\fff ds'8-^ cs8 ( d ) cs ( d )
  cs8 ( ds ) cs ( ds ) cs8 ( ds ) cs ( d )
  cs8\> ( d ) cs ( d ) cs ( d\! ) r4
  R1
  bf,8-^\ff r8 r4 r2
  bf''8-^ r8 
  \shape #'((0 . 0) (0 . 0) (0 . 0) (-0.5 . -1)) Slur
  d2.->\sff ~ (
  d2 f,,8 ) r8 r4
  r4 d'!8\fff ( cs ) d ( cs d ) cs-> (
  ds cs ds cs ds cs ) r bf'8->\sfp ~
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
  d!8 ( cs ) d ( cs ) ds ( cs ) ds ( cs )
  \tupletSpan 2 \tuplet 3/2 { cs4->\ff d!-> cs-> r cs-> d-> } \tupletSpan \default
  cs4-> r8 ds-.\f cs ( ds ) cs ( ds )
  cs\< ( d! ) cs ( d ) cs r8 cs,-. d-.
  cs->\ff r r cs' ~ cs-> r cs ~ cs->
  r cs-> r4
  r4 d8\f ( cs ) d ( cs ) d ( cs )
  \tuplet 5/4 { ds4->\ff cs-> ds-> cs-> ds-> }
  r4 r8 cs8 ~
  cs4-> r cs ~
  cs-> r r
  cs ~ cs-> r cs->
  %r r cs ~
}

bsnFinal = \relative c' {
  \override Hairpin #'to-barline = ##f
  \clef tenor
  cs4.\mp cs8 ( d e )
  cs4. ~ cs8 r cs (
  d e ) cs8 ~ cs4. ~
  cs4 r8 r4.
  r4. cs8 ( d e ) cs4. ~
  cs4. ~ cs4 cs8\< (
  d e ) cs ~ cs4 cs,8
  cs'2. ~
  cs4\mf r8 r4.
  cs8\mp ( d e ) cs4.
  cs8 ( d e ) cs4. ~
  cs4. ~ cs16 r \clef bass f,,16\cresc ( g c d
  f8 ) e,16 ( a b d g8 ) f,16 ( g c d
  f8 ) g,16 _( b c f g4 ) g8
  \clef tenor g4 ( d'8 ) g,4 ( f8 ) g4 ( d'8 )
  cs8\f\> ( d e ) cs4. ~
  cs8\! r r cs8\p ( d e ~
  e4. ) \< d4.
  \acciaccatura { e16 d } e4\mf e8 r4.
  cs4->\sf cs8\p d4\mf d8
  \tuplet 2/3 4. { cs8->\mf d-> e-> f-> ~ \sfp\< }
  f4. \tuplet 2/3 { e8 d }
  cs4\f cs8 r r \clef bass b-+\>
  g-+ d-+ af-+ f4\p f8-.
  cs'16\mf\< ( d e8 ) d16 ( e f8 ) e16 ( f g8 )
  f,4\f\> f8\p r8 e16\mp _( a b d
  f2.-> ^"breath accents" ~
  f8 ) f,?16 \cresc _( g c d f4.-> ~
  f8 ) e16 ( g a d e4.-> )
  \tuplet 2/3 4. { f,,8-> \f d'-> e-> cs'-> }
  e8 cs16\mf ( d e cs d4. )
  r4. e16\mf\< ( cs d e d8 ~
  d4. ) b,4.->
  r4.\! a'4. \f ~
  a8 r r a,4.
  a' cs,,8-> ( d e )
  r4. \clef tenor a''4.-> \<
  \clef bass a,-> a,-> r8 r a (
  bf2.\ff )
  d'4-> d8 d4-> d8
  d4-> d8 r4.
  r4. bf,,4-> bf8
  R2.
  d''4-> d8 e,4-> e8
  r4. e'4-> e8
  R2.
  bf,,8->\mf bf' r d, d' r e, e' r
  bf,8-> bf' r fs'16 ( gs a f ef b )
  bf,8-> bf' r d, d' r
  bf,8-> bf' r d, d' r
  e, r bf-> d8. d16-> d8
  R2.
  r8 r bf-> d' e' r
  \tuplet 4/3 4. { r4 d8->\f\< c-> b-> a-> gs-> fs->\ff }
  % in theory this should be unnecessary, but...
  % somehow the tupletSpannerDuration got set to something small and it broke later tuplets
  \unset tupletSpannerDuration
  r8 bf,,8->\mf bf' r d, d'
  \tuplet 4/3 { r8 d,->\ff d-> cs-> } r4.
  r4 bf' ^\markup \italic "ponderously" \f af g
  fs e g f
  af g bf a
  \clef tenor g''8\mp\< ^\markup \italic "nimbly" ( f ) e-. d-. cs4->\!
  \clef bass r2 ^\markup \italic "ponderously" bf,4\f a
  bf\> g a8 ( bf c4 )
  d\mf f e2 ~ (
  e4 d ) bf' a
  bf8 ( a g4 ) \tuplet 3/2 2 { bf,,4-> bf' r
                               e, e' r bf bf' r }
  %R2.*2
  r4. \clef tenor \tuplet 2/3 4. { bf'8->\< af->
                                   g-> gf-> f-> ef-> }
  \override Beam.auto-knee-gap = #8
  \pitchedTrill d4.\f \startTrillSpan e \clef bass cs,,8->\stopTrillSpan cs'' r r4.
  \revert Beam.auto-knee-gap
  \tuplet 2/3 4. { bf8-> a-> af-> gf-> }
  r8. bf,,16\< ( c cs d f g a bf c
  d ) g, ( a bf c d e f g a bf c )
  cs8\ff ( d e ) cs,,4 cs8
  cs4 cs8 r4.
  \clef tenor cs''8 ( \f d e ) cs4. ~
  cs8 r r cs ( d e )
  b'4.-> ~ b8 r r
  r4. \tuplet 2/3 { cs,8->\< d-> }
  e4.->\ff r8 \clef bass cs,16\p ( d e8 )
  d16 ( e f8 ) e16 ( f g8 ) r r
  r cs,16\mp \cresc ( d e8 ) d16 ( e f8 ) e16 ( f
  g8 ) cs,16 ( d e8 ) d16 ( e f8 ) g16 ( af
  bf8 ) f16 ( g af8 ) g16 ( af bf8 ) af16 ( bf
  b!8 ) f16 ( g af8 ) g16 ( af bf8 ) b16 ( cs
  d8 ) \f \clef tenor d8 d'-> ~ d4 d,8
  d'4.-> d4-> d8
  d4-> d8 r r cs-> ~
  cs4\cresc cs8 c4-> c8
  r4. bf4 ^\markup \italic "sim." bf8
  fs4 fs8 d4 d8
  \clef bass \tuplet 9/6 { d,,16 _( e f fs g a bf c cs } d4 ) d8
  cs,4\ff cs8 cs4 cs8 cs4 cs8 r4.
  r4 cs'8 cs4 cs8 r4. cs'4\p cs8
  r4. cs4->\f c8 ~ c8 b4 ~ b8 d,16-> ( e gs a
  %\tuplet 2/3 { d8\> ) cs } c8.\< a,16 ( bf c cs ds e8 ) f-> ~ f e, d
  \tuplet 2/3 { d8 ) cs } c4\< a8 fs8-. [ r f8-> ] ~ f e, d
  cs8-^ \ff r r r4. %r2.
}