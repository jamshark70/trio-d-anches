\version "2.18.2"
\language "english"

\include "../common/cadenzaToMusic.ily"
\include "../common/includes.ily"
\include "../musicvars/cadenzas.ily"
\include "../common/globals.ily"
\include "../musicvars/oboe.ily"
\include "../musicvars/clarinet.ily"
\include "../musicvars/bassoon.ily"
\include "../common/text-matter.ily"

#(set-global-staff-size 16)

\paper {
  left-margin = 1.8\cm
  line-width = 18.2\cm
  right-margin = 1\cm
  first-page-number = -1
}

\bookpart {
  \paper {
    print-page-number = #f
  }
  \titlepage
  \markup { \vspace #7 }
  \cclicense
  \pageBreak
  \instructionpage
}

\bookpart {
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
        { \global \globalBsn \globalTwelveEight \globalOB \globalOb \globalSixEight \globalFinal }
        { \oboeTheme \oboeBsn \oboeTwelveEight \oboeOB \oboeOb \oboeSixEight \oboeFinal }
      >>
      \new Staff \with {
        instrumentName = "Clarinet"
        shortInstrumentName = "Cl."
      } <<
        { \global \globalBsn \globalTwelveEight \globalOB \globalOb \globalSixEight \globalFinal }
        { \clarTheme \clarBsn \clarTwelveEight \clarOB \clarOb
          \keepWithTag #'c-score \clarSixEight
          \clarFinal
        }
      >>
      \new Staff \with {
        instrumentName = "Bassoon"
        shortInstrumentName = "Bsn."
      } <<
        { \global \globalBsn \globalTwelveEight \globalOB \globalOb \globalSixEight \globalFinal }
        { \bsnTheme \bsnBsn \bsnTwelveEight \bsnOB \bsnOb \bsnSixEight \bsnFinal }
      >>
    >>
    \layout {
      \context { \Staff \RemoveEmptyStaves }
    }
  }
}