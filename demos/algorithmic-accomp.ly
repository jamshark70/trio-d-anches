\version "2.18.2"
\language "english"

\score { <<
  \new Voice \with {
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  } \relative c' {
    \numericTimeSignature \key cs \minor
    \time 3/4
    cs8 cs4 ds cs8 ~ \time 4/4 cs8 cs4 e e4 e cs cs cs ds ds cs cs cs 
    cs ds ds e cs ds cs cs cs cs ds cs ds ds ds cs 
    ds ds ds ds e e ds cs cs ds ds ds ds ds cs cs 
    cs e e ds ds cs e e e ds cs cs e cs e e 
    cs e ds ds ds cs cs cs ds cs cs cs cs e e cs 
    cs ds e ds ds ds cs ds ds e cs e e e e cs 
    ds ds ds ds e e e e ds e e e cs ds ds ds 
    e ds e ds ds ds ds ds cs cs ds ds e cs ds cs 
    e cs e e ds cs cs ds e e cs cs cs cs e cs 
    ds cs cs cs cs e e e e e e e e ds ds e 
    ds ds ds ds ds cs cs cs ds ds e e e cs cs cs 
    cs e cs cs e e e ds ds ds ds ds cs e e ds 
    cs e ds ds ds e e ds 
  }
  \new Voice \with {
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  } \relative c' {
    \numericTimeSignature \key cs \minor
    \time 3/4
    ds4 e4 e \time 4/4 ds ds cs ds ds e ds e e e e ds ds 
    e e cs ds e e ds e ds e e e e e e e 
    cs cs e cs cs cs e e e e cs cs cs e ds e 
    ds cs cs e e ds cs ds cs e ds ds ds ds cs ds 
    ds cs cs e e e ds e e e e ds ds ds ds e 
    e cs cs cs e e e cs cs ds ds ds cs cs ds e 
    e cs cs cs ds ds cs cs cs cs ds ds e cs cs cs 
    cs cs cs e cs cs e e e e e cs ds e e ds 
    ds ds cs cs e e e cs ds ds ds e ds ds ds e 
    e e ds ds ds cs ds ds cs ds ds cs cs e cs cs 
    cs cs e cs e e e e cs cs cs ds ds ds ds e 
    ds ds e ds ds cs cs e cs e cs e ds cs cs e 
    ds cs e e cs cs cs e 
  }
>> }
