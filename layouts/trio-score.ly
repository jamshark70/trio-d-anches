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
  \markup { \vspace #14 }
  \cclicense
  \pageBreak
  \instructionpage
}

\bookpart {
  \header {
    dedication = \markup \italic "for the Kapok Winds, Guangzhou, China"
    title = "Theme and Variations"
    composer = "H. James Harkins"
    copyright = "Licensed under Creative Commons CC-BY-NC-SA 4.0"
    poet = "Score in C"
  }

  \score {
    \new StaffGroup <<
      \new Staff \with {
        instrumentName = "Oboe"
        shortInstrumentName = "Ob."
      } <<
        { \global
          \keepWithTag #'part \globalBsn % need accel... marking
          \globalTwelveEight \globalOB \globalOb \globalSixEight \globalFinal }
        { \oboeTheme \oboeBsn \oboeTwelveEight \oboeOB \oboeOb \oboeSixEight \oboeFinal }
      >>
      \new Staff \with {
        instrumentName = "Clarinet"
        shortInstrumentName = "Cl."
      } <<
        { \global
          \keepWithTag #'c-score \globalBsn  % do NOT need accel...
          \globalTwelveEight \globalOB \globalOb \globalSixEight \globalFinal }
        { \clarTheme \clarBsn \clarTwelveEight \clarOB \clarOb
          \keepWithTag #'c-score \clarSixEight
          \clarFinal
        }
      >>
      \new Staff \with {
        instrumentName = "Bassoon"
        shortInstrumentName = "Bsn."
      } <<
        { \global
          \keepWithTag #'c-score \globalBsn
          \globalTwelveEight \globalOB \globalOb \globalSixEight \globalFinal }
        { \bsnTheme \bsnBsn \bsnTwelveEight \bsnOB \bsnOb \bsnSixEight \bsnFinal }
      >>
    >>
    \layout {
      \context { \Staff \RemoveEmptyStaves }
    }
  }
}
