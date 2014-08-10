\language "english"

oboeTheme = \relative c' {
  \override Hairpin #'to-barline = ##f
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
  %d2.\pp ~ d4.
}

oboeTwelveEight = \relative c' {
  \override Hairpin #'to-barline = ##f
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

oboeSixEight = \relative c' {
  \override Hairpin #'to-barline = ##f
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
  e4 ( cs8 \cresc ) b'4.-> a8 ( d,4 )
  b'4.-> a8 ( cs,4 )
  \tuplet 3/2 { \shape #'((0 . 0) (0 . -0.5) (0 . -0.1) (0 . 0)) Slur b'16-> ( d, b' } d,4 )
  \tuplet 3/2 { \shape #'((0 . 0) (0 . -0.8) (0 . -0.25) (0 . 0)) Slur cs'16-> ( fs, cs' } fs,4 )
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
  e16-. cs-. e-. bf'-. c!32 ( e fs a\! d8 ) d,,4->\sfp ~
  d4 r8 d4.->\ff
  R2.
  cs4.-> r4.
  r4. cs4.-> ~
  cs4 r8 r4.
  r4. cs8-^ r8 r8
  r4. cs4.-> ~
  cs4 cs2-> ~
  cs8 r8 r4 r4
  R1*6 R1\fermataMarkup
  \tag #'c-score { \cadenzaOn R1 \cadenzaOff }
  % this was a failed effort: It puts the markups on the barline
  \tag #'part { \cadenzaOn R1\fermataMarkup ^"Clarinet cadenza" \cadenzaOff }
  r4 r8 e8\pp^\markup { \italic "non vib." } ~ e2 ~
  e2 ~ e16 r8.
  r4 r4 d4\ppp ~
  \cadenzaOn
  d1. ~ d2 s8
  r1\fermata
  \cadenzaOff
  R2
}

oboeOb = \relative c' {
  \override Hairpin #'to-barline = ##f
  %d8\mf\< (
  r4 r d!\< (
  ds?2\fff\> ~ ds4. ) ds8-- ~
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
  r4 \shape #'((0 . 0) (0 . 0.6) (0 . 0.6) (0 . 0)) Slur gs\mp\< ( b cs
  ds2\> cs4 b )
  as32\! ( b as4.. ~ as8 ) \< gs8 ~ ( gs8. fss32 gs
  as2\mf\> ~ as4. ) r8\p
  r8 cs,,\mf\< ( ds e ds\> cs e ds\! )
  r2 r8 gs'\mp ^\espres ( b cs
  as4 \grace gs16 as2. )
  r2 r8 \shape #'((0 . 0) (0 . 0.6) (0 . 0.6) (0 . 0)) Slur gs\mp\< ( b cs 
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
  r4 r8
  \shape #'((-1.8 . 1) (-1 . 1.2) (-0.6 . 0.7) (0 . 0)) Slur
  a?\mf ^"with urgency" ( \tuplet 5/4 { cs8\< ds ) e ( gs fs ) }
  \tuplet 3/2 { ds'16->\> ( b gs } a4.\! ) \grace cs,16 ^( gs'8_\espressivo fs\! ) r8 a,\mf\< (
  cs ds ) \tuplet 3/2 { gs16->\> ( e a, e' gs8 ~ \! } gs4 ) \grace b16 ^( g8 f8 )
  \tuplet 5/4 { c8\< ( d e ) a, ( b } \tuplet 7/4 { ds8 ) f,-- g-- b-. fs'? ( e'  ) d,, _( }
  e8\f\> \grace d16 e8 ~ e2 ) e4--\p e-- ~
  e8 e4-- b8 ~ ^\sempreTenuto b4 ds ~
  ds8 ds4 ds ds gs8 ~
  gs gs4 gs a a8 ~
  a a'4 a a e'8\> ~
  e e4. ~ e8 e4. ~
  e2. r4\ppp
  R1
  r2 gs,2\p ~ (
  gs8 as4. ~ as2 )
  \grace { gs16 ^( b } as8. gs16 as2.\> ~
  as4. ) r8\ppp r2
  R2 \fermataMarkup
}

oboeBsn = \relative c' {
  \override Hairpin #'to-barline = ##f
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
  b4. ) r8 r4 r8 b,->\sfz ~
  \override TrillPitchAccidental.avoid-slur = #'inside
  b2 f'4 \pitchedTrill af,4\startTrillSpan ~ \> bf
  af4. r8\stopTrillSpan \p r2
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

dashPlus = "staccatissimo"

oboeOB = \relative c' {
  \override Hairpin #'to-barline = ##f
  d4->\f b''-> d,,-> b''-> ~
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
  f! ( e ) g ( f ) g ( f ) g ( fs )
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
  \tuplet 5/4 { cs4->\ff d!-> cs-> d-> cs-> }
  r4 r8 d (
  ds4-> ) r d (
  ds-> ) r r
  d! ( ds-> ) r ds->
  %r r d!
}

oboeFinal = \relative c' {
  \override Hairpin #'to-barline = ##f
  cs8\mp ( d e ) cs4. ~
  cs4. cs8 ( d e )
  cs4 cs8 ( d8 ) \shapeECsDE e16 ( cs d e )
  d2.
  cs8 ( d e ) cs2.
  cs8 ( d e ~ e ) f4\< ~ (
  f4 e8 ) g4. ~
  g8 af4\> ~ af4. ~
  af8\! r r f\mf\> ( e d )
  cs8\mp r r r4.
  r8 r cs ( d ) \shapeECsDE e16 ( cs d e )
  d2.
  d4\cresc ( e8 ) d4 ( e8 )
  d16 ( e cs d ) e8 ~ e4. ~
  e4 e8 d4 ( e8 ) d4 ( e8 )
  cs8 \f r8 r cs4\> cs8
  cs4 cs8\p r4.
  R2.
  g'4\mf g8 r4.
  cs,4\sf-> cs8\p e4\mf e8
  R2.
  r8 cs16\mf\< ( d g a d8 ) d,16 _( e a b
  e4\f ) e8 r r cs-+ \>
  e-+ b-+ d,-+ cs4\p cs8-.
  cs16\mf\< ( d e8 ) d16 ( e f8 ) e16 ( f g8 )
  e4\f\> e8\! r4.
  r4. c'!4\mf\> ( b8\! )
  R2.
  r4. r8 ^"breath accent" cs,16\mf\< _( f g b
  cs4.-> ~ \tuplet 2/3 4. { cs8 ) f,-> \f
                            d'-> e-> } cs'4.->
  e,16\mf\< ( cs d e ) d8 ~ ( d4 e8 )
  d16 ( e cs d ) e8 ~ ( e4 cs8 )
  d8-+ \f e-+ cs-+ d-+ e-+ e,-+
  d' ( e'-. ) d,-. cs-> ( d e )
  cs ( d e ) cs,-> ( d e )
  e'4-> e8-. r d4-> \<
  %b'8-+ e-+ d,-+ b'-+ d,-+ d,-+ r d'4->
  %a8-+ cs-+ d-+ b'-+ d,-+ d,-+ r d'4->
  f8-> ( e-. ) d-+ f-> ( g-. ) f-+ r g4->  % b-+ b'-+ b,-+ r d4->
  e'4-> \ff e,-> cs->
  e,4-> e8 e4-> e8
  e4-> e8 r4.
  r4. e''4-> e8
  R2.
  bf,,4-> bf8 d4-> d8
  r4. bf'4-> bf8
  R2.
  r8 d,-.\mf d'-. r e,-. e'-. bf'8. af16-> ( g8 )
  r8 fs,-. fs'-. gs16 ( as b a f c )
  r8 d,-. d'-. r e, fs'32 ( es fs es
  fs8. ) gs,16-> ( fs'8 ) f8. g,16-> ( f'8 )
  r8 cs,-> d'-. e'8. e16-> e8
  R2.
  r4. e,8. e16-> e8
  R2.
  r8 r g-> g,-. r f'->
  f,-. r r e''8.\p f,16-> ( e'8 )
  \once \override MultiMeasureRest.minimum-length = #15
  R1*3
  e,8.\mp\< ( d16 ) f8 ~ ( f16 e ) g8. ( f16\! )
  R1*2
  e,2\mf ( f
  g8-. ) r8 r4 e'2 ~ ( \<
  e f
  g2 ) \tuplet 3/2 { r4\! d8 ( e cs d }
  e4. \cresc ~ e8 ) e16 ( f d e
  f4. ~ f8 ) g16 ( a f g
  af8.\f ) bf,16-> ( af'8 ) g8. a,16-> ( g'8 ) r4.
  e,4\< ( f g ) \!
  r4. e'4.\< (
  f g )
  cs8\ff ( d e ) cs4 cs8
  cs4 cs8 r4.
  r4. cs,,8 ( \f d e )
  cs4. d
  r8 cs16\< ( d e8 ) d16 ( e f8 ) d16 ( e )
  b'4.-> \tuplet 2/3 { r8 cs,8-> }
  %d4. ~ d8 r r
  d4-> cs''16 ( d e8\ff ) r r
  r4. cs,16\f\> ( d e8 ) d16 ( e
  f8\p ) r r r4.
  f4.->\mp \cresc \tuplet 2/3 4. { e8 ef
                                   d c r g'-> ~ }
  \tuplet 5/6 { g8 gf f e ef }
  df8\f r r e!-> af4 ~
  af e8 af4-> af8
  af4-> af8 r4.
  g4 ^\markup \italic "sim." \cresc g8 f4 f8
  r4. e4 e8 
  e4 e8 e4 e8
  r4. r8 r e
  d4\ff d8 d4 d8 d4 d8 r4.
  r8 r8 e'8 e4 e8 r4. d,,4\p d8
  r4. e'4.->\f ef4 d8 c ( b ) bf-.
  a-. g4-> fs16-> ( \< gs a c d fs \tuplet 2/3 { gs8 ) d8 } e16 ( fs ) g8 fs16 ( e )
  d8-^ \ff r r r4. %r2.
}