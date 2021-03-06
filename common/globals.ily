\language "english"

global = {
  \set Score.markFormatter = #format-mark-box-barnumbers
  \tempo Tranquillo 4. = 63
  \time 9/8
  s1*8*9/8  % 8 bars of 9/8
  \time 12/8
  s1.
  \time 6/8
  s2.
  \time 9/8
  \mark \default
  s1*8*9/8
}

globalTwelveEight = {
  \bar "||"
  \mark \default
  \tempo "Più mosso" 4. = 96
  \time 12/8
  s1.*10
  \mark \default
  s1.*13
  \time 6/8
  s2.
}

globalSixEight = {
  \numericTimeSignature
  \mark \default
  \tempo "Playfully" 4. = 72
  \bar "||"
  \key c \major
  \time 6/8 s2.*6
  \time 9/8 s1*9/8
  \time 6/8 s2.*4
  \time 9/8 s1*9/8
  \time 6/8 s2.*3
  \mark \default
  s2.*9
  \mark \default
  s2.*15
  \bar "||"
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \mark \markup \left-align \column {
    \box \bold "211"
    \vspace #0.2
    \bold "Violently"
  }
  s2.*6
  \mark \markup { \fontsize #-2 { \note #"8" #1 "=" \note #"8" #1 } }
  \time 3/4 s2.*2
  \time 4/4 s1*7 \bar "||"
  \nullMeter \time 2/2
  \tempo "Mysteriously" 4 = 72
  \cadenzaOn s1 \cadenzaOff \bar "|"
  \set Score.currentBarNumber = #227
  \mark \default
  \time 4/4 s1
  \time 3/4 s2.*2
  \nullMeter \time 4/4
  \cadenzaOn s1. s2 s8 s1 \cadenzaOff \bar "|"
  \set Score.currentBarNumber = #231
  \time 2/4 s2
}

globalOb = {
  \time 3/4 s2.
  \bar "||"
  \time 4/4 \numericTimeSignature
  \tempo "Lyrically" 4 = 92
  \mark \default
  \key cs \minor
  s1*7
  \time 2/4 s2
  \time 3/4 s2.
  \time 4/4 s1*4
  \mark \default
  s1*6
  \time 2/4 s2
  \time 4/4 s1
  \mark \default
  s1*7
  \time 5/4 s4*5
  \time 4/4 s1*11
  \time 2/4 s2
}

globalBsn = {
  \numericTimeSignature
  %\tempo 4. = 63
  \mark \default
  \bar "||"
  s8*9
  \mark \markup { \fontsize #-2 { \note #"4." #1 "=" \note #"4" #1 } }
  %\tempo 4 = 63
  \time 2/4 s2
  \time 4/4 s1
  % I really want this as a \mark but, fml, lilypond says no, you can't
  \tag #'part {
    \override TextSpanner.bound-details.left.text = \markup \italic "accel."
    s1\startTextSpan s2.. s8\stopTextSpan
  }
  \tag #'c-score { s1*2 }
  \tempo 4 = 80
  s1*4
  \time 2/4 s2
  \mark \default
  \time 4/4 s1*5
  \time 3/4 s2.
  \time 4/4 s1*6
}

globalOB = {
  \numericTimeSignature
  \bar "||"
  %\mark \markup { \fontsize #-2 { \note #"4." #1 "=" \note #"2" #1 } }
  \tempo \markup { \fontsize #-2 { \note #"4." #1 "=" \note #"2" #1 } \fontsize #0 "(Doppio movimento)" }
  \mark \default
  %\tempo 2 = 96
  \time 2/2
  s1*6
  \time 3/2 s1.
  \time 2/2 s1*5
  \mark \default
  s1*15
  \time 1/2 s2
  \mark \default
  \time 2/2 s1*10
  \mark \default
  s1*14
  \tempo "Frantically" 2 = 116
  \mark \default
  s1*6
  \time 1/2 s2
  \time 2/2 s1*2
  \time 1/2 s2
  \time 3/4 s2.*2
  \time 2/2 s1
  %\time 3/4 s2.
}

globalFinal = {
  \bar "||"
  \mark \default
  \tempo "Più mosso" 4. = 88
  \time 6/8 s2.*4
  \time 9/8 s1*9/8
  \time 6/8 s2.*4
  \mark \default
  \time 6/8 s2.*5
  \time 9/8 s1*9/8
  \mark \default
  \time 6/8 s2.*11
  \mark \default
  \time 6/8 s2.*7
  \mark \default
  \time 6/8 s2.*4
  \time 9/8 s1*9/8
  \time 6/8 s2.*8
  %\bar "||"
  \mark \default
  \time 9/8 s1*9/8
  \time 6/8 s2.*9
  % here I must write a truly horrific workaround for a limitation of \mark
  %\mark \markup { \fontsize #-2 { \note #"4." #1 "=" \note #"2" #1 } }
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \mark \markup \center-column {
    \box \bold "288"  % hardcoded bar number -- REALLY shouldn't have to do this
    \line { \fontsize #-2 { \note #"4." #1 "=" \note #"2" #1 } }
  }
  \time 2/2 s1*3
  \mark \markup { \fontsize #-2 { \note #"2" #1 "=" \note #"4." #1 } }
  \time 6/8 s2.
  \mark \markup { \fontsize #-2 { \note #"4." #1 "=" \note #"2" #1 } }
  \time 2/2 s1*6
  \mark \markup { \fontsize #-2 { \note #"2" #1 "=" \note #"4." #1 } }
  \time 6/8 s2.*2
  \time 9/8 s1*9/8
  \time 6/8 s2.*3
  \mark \default
  \time 6/8 s2.*8
  \mark \default
  \time 6/8 s2.*11
  \mark \default
  \time 6/8 s2.*9
  \bar "|."
}