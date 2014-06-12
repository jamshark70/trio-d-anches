\language "english"

global = {
  \tempo Tranquillo 4. = 63
  \time 9/8
  s1*8*9/8  % 8 bars of 9/8
  \time 12/8
  s1.
  \time 6/8
  s2.
  \time 9/8
  s1*8*9/8
}

globalTwelveEight = {
  \bar "||"
  \tempo "Poco più mosso" 4. = 96
  \time 12/8
  s1.*23
  \time 6/8
  s2.
}

globalSixEight = {
  \numericTimeSignature
  \tempo 4. = 72
  \bar "||"
  \key c \major
  \time 6/8 s2.*6
  \time 9/8 s1*9/8
  \time 6/8 s2.*4
  \time 9/8 s1*9/8
  \time 6/8 s2.*27 \bar "||"
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \mark \markup \left-align \bold "Violently"
  s2.*6
  \mark \markup { \fontsize #-2 { \note #"8" #1 "=" \note #"8" #1 } }
  \time 3/4 s2.*2
  \time 4/4 s1*7 \bar "||"
  \nullMeter \time 2/2
  \tempo "Mysteriously" 4 = 72
  \cadenzaToMusic \clarCadenza s1 \bar "|"
  \time 4/4 s1
  \time 3/4 s2.*2
  \nullMeter \time 4/4
  \cadenzaToMusic { \clarCadenzaB \clarCadenzaC } s1 \bar "|"
}

globalOb = {
  \time 4/4 \numericTimeSignature
  \tempo 4 = 92
  \partial 8 s8 \bar "||"
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

globalBsn = {
  \numericTimeSignature
  %\tempo 4. = 63
  \time 9/8 s8*9
  \bar "||"
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
  \time 4/4 s1*6
}

globalOB = {
  \numericTimeSignature
  %\bar "||"
  %\mark \markup { \fontsize #-2 { \note #"4." #1 "=" \note #"2" #1 } }
  \tempo \markup { \fontsize #-2 { \note #"4." #1 "=" \note #"2" #1 } \fontsize #0 "(Doppio movimento)" }
  %\tempo 2 = 96
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
