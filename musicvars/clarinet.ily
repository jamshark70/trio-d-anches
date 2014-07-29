\language "english"

clarTheme = \relative c' {
  cs4--\p cs8-- cs4-- cs8-- cs4-- cs8 ~
  cs2. cs4-- cs8 ~
  cs4. cs4-- cs8 ~ cs4. ~
  cs4. cs4--\< cs4-- \breathe cs4 (
  f,!2.\mf\> g4. ~
  g2. ) r4.\!
  cs4--\p cs8-- cs4-- cs8-- cs4-- cs8 ~
  cs4. ~ cs4 cs8-- cs4-- cs8 ~
  \tupletSpan 1*6/8
  \tuplet 4/3 { cs4 
                \shape #'((0 . 0) (0 . 0) (0 . 1.2) (0 . -0.5)) Slur
                f,!^\markup { \italic "espr." } 
                ( \< d' e cs' b'2\> g,4--\! ) }
  R2.
  cs,4--\p cs8-- cs4-- cs8-- ~ cs4. ~
  cs4. d4-- d8--\< d4-- d8 ~
  d4.\mp\> d4-- d8--\p r4.
  d4-- d8-- d4--\< d8 ~ d4. ~
  d2.\mf\> ~ d4.
  r2.\! cs4.\p ~
  cs4. ~ cs4 r8 d4.\p ~
  d2. r4.
  % e2.\pp ~ e4.
}

clarTwelveEight = \relative c' {
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

clarSixEight = \relative c' {
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
  r4. e4.-> ~
  e4. \breathe e4.->
  R2.
  e4.-> ~ e4 cs8->
  \once \override Hairpin #'minimum-length = #6
  e4.->\fp\< e8-^\ff r8 r8
  r4. r8 e4-> ~
  e2 e4-> ~
  e4 e8-> cs-> e4->
  \tuplet 3/2 { cs16-> ( e cs } e8 ~ e4 ) \tuplet 3/2 { cs8-> e-> d->\> ~ } d4 ~
  d4.\< d8-^\ff r2
  r4 e8-> cs-> e4-> cs8-> e->
  \tuplet 5/4 { e''16->_\markup { \italic "rubato" } e,-> e,,-> e'-> cs-> }
  \tuplet 3/2 { cs''8-> cs,-> d,,16-> d' }
  \tuplet 7/4 { e'8-> d16 e' d, cs, cs' }
  \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) Slur
  e'32 ( d gs, e d cs gs d
  \tupletSpan 2 \tuplet 3/2 { e,2 ) d4-> gs-> e'-> cs-> }
  \tupletSpan \default
  <<
    \new Voice \relative c''' {
      \tuplet 3/2 { \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) Slur e16-> ( cs, d, } cs4. ~ cs2 ~
      cs4. )
    }
    \new Voice {
      s2 s2\> s4 s8\p
    }
  >>
  r8 r2\fermata %R1\fermataMarkup
  % CADENZA
  \clarCadenza
  d16.\> ( e32 ) 
  \tag #'a-part { d16. ( cs32 ) }
  \tag #'c-score { d16. ( cs!32 ) }
  d16. ( a32\mp ) r8
  r8 d16.\p ( e32 ) d16. ( cs32\< ) e16. ( cs32 )
  d16. ( a32 ) e'16. ( f32 ) d16.\> ( cs32\! ) r8 r8 d16.\pp ( e32 )
  R2.
  \clarCadenzaB \clarCadenzaC
  r8 r r r
}

clarOb = \new Voice \with {
  \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
  \remove "Rest_engraver"
  \consists "Completion_rest_engraver"
} \relative c' {
  \override Hairpin #'to-barline = ##f
  %e8\mf\< ~
  r4 r e ~ \<
  e4.\fff\> e8-- ~ e8 e4.-- ~
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
  r2 r4 r8 ds,8\p ^\nonEspr ~
  ds cs4 e cs ds8 ~
  ds cs4 cs ds8 r4
  r2 e4 ds8 r8
  r2 cs8 ( \pp ds ) r4
  R2 \fermataMarkup
}

clarBsn = \relative c' {
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

dashPlus = "staccatissimo"

clarOB = \relative c' {
  e4->\f b'-> e,-> b'-> ~
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
  \shape #'((0 . 0) (0 . 0) (0 . -0.5) (0 . 0)) Slur
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
  \pitchedTrill d2\startTrillSpan e e8\stopTrillSpan\ff ) r8 r4
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
  %r r e ~
}

clarFinal = \relative c' {
  R2. %cs2.
  cs8\mp ( d e ) cs4. ~
  cs4 r8 r4.
  r8 cs16\< ( d e8 ) d16 ( e f8\> ) e16 ( d
  cs8\! ) r r r4. cs8\mp ( d e )
  cs8 r cs ( d4 ) e8 ~ (
  e8 d4 ~ d8 ) cs16\< ( d e8 )
  d16 ( e f8 ) e16 ( f ) g8 ( f e )
  f ( e d ) f4.\mf\> (
  cs8\mp ) r r cs ( d e )
  cs4. ~ cs8 r r
  r d16 ( e cs d ) e4.
  e4\cresc ( d8 ) e4 ( d8 )
  e8-. d4 \shapeECsDE e16 ( cs d e ) d8 ~ (
  d4 g,8 ) e'4 ( d8 ) e4 ( g,8 )
  cs8\f r r cs4\> cs8
  cs4 cs8\p r4.
  \tuplet 2/3 4. { cs8->\mf d-> e-> f-> }
  d4 d8 f,4\p f8
  r4. g'4\mf g8
  r4. \tuplet 2/3 { r8 f,->\sfp\< ~ }
  f2. ~
  %f4 f8 r8 r bf'-+
  %f-+ ef-+ c!-+ e,4 e8
  f4\f f8 r8 r d'-+\>
  fs-+ e-+ bf-+ e,4\p e8-.
  R2.
  cs''4 cs8 r4.
  r8 d,,16\mp ( e a b d4.->
  e8 ) r r r d,16 \cresc _( e a b
  d2.-> ~
  d8 ) \shape #'((0 . 0) (0 . 0.5) (-1.5 . 0.5) (0 . -0.5)) Slur b'16 ( d e a b4.-> ~
  b8 ) r r f,,8->\f d'-> e->
  cs'-> g16 ( cs ) b'8-> ~ b4.
  b,4.-> d,16\mf\< ( e cs d e8 ~
  e ) \f d'-+ d,-+ e'-+ cs-+ d-+
  e-- d-. e ~ e e'-+ d-+
  e4 ( d8 ) cs-> ( d e )
  d,4-> d8-. r cs'4-> \<
  e8-+ d,-+ cs,-> ~ cs cs'-+ e,-+ a,4.->
  d'4->\ff d,-> d'->
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
  \tuplet 8/6 { bf'16\sfp\< ( cs, d e f g gs as } \tuplet 4/3 { b8\f ) cs-> cs-> d-> }
  R2.
  \tuplet 4/3 4. { b,8->\f\< cs-> cs-> d-> d-> e-> e-> f->\ff }
  R2.
  \tuplet 4/3 { e,8->\ff d-> d-> cs-> } r4.
  e4\mf ^\markup \italic "ponderously" d8 ( e f4 ) e8 ( d
  e4 ) cs2 e4
  d8 ( e f4 ) g2
  r2.
  e4\mf d8 ( e f4 ) g ~
  g f d'4. ( c8 ) %c'8 ( bf a4 )
  bf8 ( a ) g4 ~ ( g8 a ) bf4 ~ (
  bf8 c cs4 ) d8 ( e f4 )
  d4 d'2 ( cs4 )
  <<
    { d8 ( e cs d ) e2 (
      d8 ) e16 ( cs d e ) d4. (
      e8 ) f16 ( g e f ) g4.
    }
    { s1 s2. \cresc s4. s8 s s16 s\f }
  >>
  r4. r4. \pitchedTrill d,4. ~ \sf \startTrillSpan e
  d2.
  r4.\stopTrillSpan e4. ( \<
  f g )
  cs,,8\ff ( d e ) cs'4 cs8
  cs4 cs8 cs ( \f d e )
  cs4. ~ cs8 r cs (
  d e ) b'-> ~ b4. ~
  b8 r r r4.
  \tuplet 2/3 4. { r8 cs,->\< d-> e-> }
  %b'4. ~ b8 r r
  b'4-> cs,16 ( d e8\ff ) r r
  R2.
  r4. e'4.-> \mp \cresc ~
  e4 ef d
  df8 cf bf gf'4-> f8 ~
  \tuplet 2/3 4. { f8 e ef df }
  c8\f r r d-> bf'4 ~
  bf4 d,8 bf'4-> bf8
  bf4-> bf8 r4.
  b!4 ^\markup \italic "sim." \cresc b8 cs4 cs8
  r4. d4 d8
  d4 d8 ds4 ds8
  r4. r8 r ds8
  e4\ff e8 e4 e8 e4 e8 r4.
  r8 r d, d4 d8 r4. e,4 e8
  r4. d''4.-> \> ~ \tuplet 2/3 { d8 cs8-> ~ } cs4 a8
  gs8 d,16\f ( e a b e4 ) cs8 d\< a16 ( b e fs b8 ) cs,16 ( d a' b
  e8 ) \ff r r r4. %r2.
}