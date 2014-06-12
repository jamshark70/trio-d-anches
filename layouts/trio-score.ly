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
      { \global \globalBsn \globalTwelveEight \globalOB \globalOb s1 \globalSixEight }
      { \oboeTheme \oboeBsn \oboeTwelveEight \oboeOB \oboeOb R1 \oboeSixEight }
    >>
    \new Staff \with {
      instrumentName = "Clarinet"
      shortInstrumentName = "Cl."
    } <<
      { \global \globalBsn \globalTwelveEight \globalOB \globalOb s1 \globalSixEight }
      { \clarTheme \clarBsn \clarTwelveEight \clarOB \clarOb R1 \clarSixEight }
    >>
    \new Staff \with {
      instrumentName = "Bassoon"
      shortInstrumentName = "Bsn."
    } <<
      { \global \globalBsn \globalTwelveEight \globalOB \globalOb s1 \globalSixEight }
      { \bsnTheme \bsnBsn \bsnTwelveEight \bsnOB \bsnOb R1 \bsnSixEight }
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
}
