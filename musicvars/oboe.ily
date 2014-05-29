\language "english"

oboeTheme = \relative c' {
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
  R2.
  cs4.-> r4.
  r4. cs4.-> ~
  cs4 r8 r4.
  r4. cs8-^ r8 r8
  r4. cs4.-> ~
  cs4 cs2-> ~
  cs8 r8 r4 r4
  R1*6 R1\fermataMarkup
  \cadenzaOn \cadenzaToMusic \clarCadenza R1 \cadenzaOff
  r4 r8 e8\pp^\markup { \italic "non vib." } ~ e2 ~
  e2 ~ e16 r8.
  r4 r4 d4 ~
  \cadenzaOn
  d1. ~ d2 s8
  \cadenzaToMusic \clarCadenzaC r1\fermata
  \cadenzaOff
}

oboeOb = \relative c' {
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

oboeBsn = \relative c' {
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
