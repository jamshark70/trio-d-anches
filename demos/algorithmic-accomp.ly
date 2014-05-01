\version "2.18.2"
\language "english"

\score { <<
  \new Voice \with {
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  } \relative c' {
    e8 e4 e e ds ds ds ds e e ds ds e e e ds 
    e e e cs cs cs ds ds ds cs cs cs e ds cs e 
    e ds ds ds e cs e ds e cs ds cs ds ds cs e 
    cs cs cs cs cs ds e ds cs ds e cs ds e ds ds 
    ds ds e cs ds e e ds cs ds cs ds ds ds ds e 
    e cs e cs cs cs e ds cs ds e e cs ds ds cs 
    e e cs e e cs cs cs cs cs cs e cs cs cs e 
    e cs ds ds ds ds ds e cs cs cs ds cs cs ds ds 
    e ds cs e ds ds ds e ds e cs ds ds cs cs cs 
    cs ds ds ds ds e ds ds ds cs cs ds e cs e ds 
    ds cs e ds e e e e e cs cs cs cs cs e e 
    cs8 % e e cs ds ds e e cs cs cs cs ds ds e cs 
    %cs cs cs cs e e cs cs 
  }
  \new Voice \with {
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  } \relative c' {
    ds4 ds4 cs cs cs cs e cs cs cs e cs ds cs cs cs 
    ds ds ds e ds e cs e e ds e ds cs e ds cs 
    cs cs e cs ds ds cs cs ds e e e e e ds ds 
    ds e e ds e cs cs e e cs ds e cs cs cs cs 
    e cs ds e cs ds cs e e e e e cs e cs cs 
    ds ds ds e e ds cs e e cs cs ds e cs e ds 
    ds ds ds cs ds ds ds ds e ds ds ds e e ds cs 
    ds e e e cs e cs ds e ds e e e e cs cs 
    cs e ds cs e e cs cs cs ds e e e ds ds e 
    e e cs e cs cs e e e e e cs ds ds cs cs 
    e ds cs cs ds ds cs cs ds e ds ds e ds cs ds 
    %ds ds ds e cs cs ds ds e e ds e e cs ds e 
    %e ds e ds cs ds ds ds 
  }
>> }
