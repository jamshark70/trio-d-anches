\language "english"

clarCadenza = \relative c {
  \accidentalStyle Staff.modern
  \cadenzaOn
  r8 f\pp [ ( d' e ] ) e'' [ ( cs b ] ) \bar "" g, [ ( d' ef c' ] ) \bar ""
  <<
    \new Voice { \voiceOne s8 e [ ( cs s b ] ) }
    \new Voice \relative c' { \voiceTwo bf8 ( s4 f'8 ) }
  >> \oneVoice
  r2\fermata \bar ""
  d,,4 ( e!8 ) e''8--
  \tuplet 5/4 {
    \shape #'((0 . 0) (0 . 1) (0 . 0) (0 . 0)) Slur
    cs!16 [ ( f e d cs ] )
  } \bar ""
  g,,8 [ ( d'' ef ] ) \bar ""
  bf,4 ( f'8 ) e'' [ ( cs! b ] ) \bar "" c,, [ ( a' ] )
  r4 r8 \bar ""
  <<
    \new Voice \relative c''' {
      \voiceOne
      s4 e8 ( cs4 ) s4 d,8 [ ( ef ] ) s e' ( cs!4 )
    }
    \new Voice \relative c {
      \voiceTwo
      f8 [ ( d' ] ) s4. \bar "" bf4-- s4 \bar "" f8-- s4.
    }
  >> \oneVoice
  \tuplet 5/4 { d8\< [ e bf,! e'' cs! ] } \tuplet 3/2 { f,,,8 [ d' ] e!4 d8 [ e ] } \bar ""
  \once \override NoteColumn.X-offset = #1
  b''8\mf\> g,,4 b'' g,, b''\p r2\fermata \bar ""
  e,16\mp^\markup "with increasing urgency" [ ( g e ) cs, ] e''8 [ ( cs! b ] ) \bar ""
  e,,-- g4 ( e8 )
  \tuplet 5/4 { e''16\cresc [ ( cs! e cs e ] ) } \bar ""
  \tuplet 7/4 { d,,,8 [ ( e16 g b cs! g' ] ) }
  fs32 [ ( e'16 ) fs,32 ( e'8 ) ] \bar "" 
  \once \override TextSpanner.bound-details.left.text = "Tenuto = stress this note"
  f,,8--\startTextSpan
  \tuplet 5/4 { f'16 [ ( fs e' fs, e' ] ) } \bar "" g,,8--
  e''' [ ( cs b ] ) \bar ""
  \tuplet 6/4 { f,16 [ ( fs e' ) bf ( c a' ] ) } \bar "" b,,8--\mf [ ( cs\stopTextSpan ] )
  \tuplet 5/4 { d'16\< [ ( e b' fs e' ] ) } \bar ""
  \tuplet 5/4 { f,16 [ ( g c af e' ] ) } \bar ""
  \tuplet 5/4 { a,16 [ ( bf d cs e ] ) } \bar ""
  d8..->\trill [ ( cs32 ] ) d8..->\trill [ ( cs32 ] ) \bar ""
  \tuplet 3/2 { e16->\ff [ ( cs e } d8\> ~ ] d8. [ cs16 ] ) \bar ""
  \tuplet 5/4 { a16\< [ ( gs e d cs ] } \bar ""
  \tuplet 7/4 { d16 [ cs a gs a gs e\! ] ) }
  \cadenzaOff
}

clarCadenzaB = \relative c'' {
  \cadenzaOn
  r2 e4.\ppp bf,16 [ ( c' ] ) e'8 [ ( d, ] )
  \tuplet 3/2 { g'16 [ ( c, a, } f'8 ] ) \bar ""
  bf,,!8--^"Tenuto = stress this note" \breathe
  e'4 c8 [ e ] 
}

clarCadenzaC = \relative c'' {
  \tuplet 5/4 { c16\< [ ( e c e c ] } e8 ) d,,-- f''4..
  <<
    { c,16-- ( g''2.\fermata ) }
    { s16 s2\> s8 s8\! }
  >> \bar ""
  r2 e4.\ppp\< \appoggiatura { \slurUp bf,!16 [ d ] } f'4
  cs,16--\> [ ( g''8. ~ ] g4 ~ g8 e4 f8\pppp )
  \cadenzaOff
}

