\version "2.18.2"
\language "english"

\include "../common/cadenzaToMusic.ily"
\include "../common/includes.ily"
\include "../musicvars/cadenzas.ily"
\include "../common/globals.ily"
\include "../musicvars/oboe.ily"
\include "../musicvars/clarinet.ily"
\include "../musicvars/bassoon.ily"

#(set-global-staff-size 16)

\paper {
  left-margin = 1.8\cm
  line-width = 18.2\cm
  right-margin = 1\cm
}

\header {
  title = "Theme and Variations"
  subtitle = "(work in progress)"
  composer = "H. James Harkins"
  copyright = "(c) 2014 H. James Harkins. Not licensed for performance yet."
  poet = "Score in C"
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Oboe"
      shortInstrumentName = "Ob."
    } <<
      { \global \globalBsn \globalTwelveEight \globalOB }
      { \oboeTheme \oboeBsn \oboeTwelveEight \oboeOB }
    >>
    \new Staff \with {
      instrumentName = "Clarinet"
      shortInstrumentName = "Cl."
    } <<
      { \global \globalBsn \globalTwelveEight \globalOB }
      { \clarTheme \clarBsn \clarTwelveEight \clarOB }
    >>
    \new Staff \with {
      instrumentName = "Bassoon"
      shortInstrumentName = "Bsn."
    } <<
      { \global \globalBsn \globalTwelveEight \globalOB }
      { \bsnTheme \bsnBsn \bsnTwelveEight \bsnOB }
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
}

\markup \column {
  \vspace #1
  \bold "Connecting variation here"
  \vspace #1
}

\score {
  \new StaffGroup <<
    \new Staff \with {
      instrumentName = "Oboe"
      shortInstrumentName = "Ob."
    } <<
      { \globalOb s1 \globalSixEight }
      { \oboeOb R1 \oboeSixEight }
    >>
    \new Staff \with {
      instrumentName = "Clarinet"
      shortInstrumentName = "Cl."
    } <<
      { \globalOb s1 \globalSixEight }
      { \clarOb R1 \clarSixEight }
    >>
    \new Staff \with {
      instrumentName = "Bassoon"
      shortInstrumentName = "Bsn."
    } <<
      { \globalOb s1 \globalSixEight }
      { \bsnOb R1 \bsnSixEight }
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
}
