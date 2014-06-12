\language "english"

bsnTheme = \relative c' {
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
  R2.
  d4.-> r4.
  r4. d4.-> ~
  d4 r8 r4.
  r4. d8-^ r8 r8
  r4. d4.-> ~
  d4 d2-> ~
  d8 r8 r4 r4
  R1*6 R1\fermataMarkup
  \cadenzaOn \cadenzaToMusic \clarCadenza R1 \cadenzaOff
  r4 r8 a8\pp^\markup { \italic "non vib." } ~ a2 ~
  a2 ~ a16 r8.
  r4 r4 a4 (
  \cadenzaOn
  bf1. ~ bf2 ) s8
  \cadenzaToMusic \clarCadenzaC r1\fermata
  \cadenzaOff
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

dashPlus = "staccatissimo"

bsnOB = \relative c' {
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
  %r r cs ~
}