\version "2.18.2"
\language "english"

\include "../common/cadenzaToMusic.ily"
\include "../common/includes.ily"
\include "../musicvars/cadenzas.ily"
\include "../common/globals.ily"
%\include "../musicvars/oboe.ily"
%\include "../musicvars/clarinet.ily"
\include "../musicvars/bassoon.ily"
\include "../common/text-matter.ily"

%#(set-global-staff-size 16)

%{\paper {
  left-margin = 1.8\cm
  line-width = 18.2\cm
  right-margin = 1\cm
}
%}

\header {
  title = "Theme and Variations"
  subtitle = "(work in progress)"
  composer = "H. James Harkins"
  copyright = "Licensed under Creative Commons CC-BY-NC-SA 4.0"
  poet = "Bassoon"
}

\score {
  \new Staff <<
    { \compressFullBarRests
      \override MultiMeasureRest.expand-limit = #1
      \global
      \keepWithTag #'part \globalBsn % need accel... marking
      \globalTwelveEight \globalOB \globalOb \globalSixEight \globalFinal
    }
    { \bsnTheme \bsnBsn \bsnTwelveEight \bsnOB \bsnOb
      \bsnSixEight
      \bsnFinal
    }
  >>
}

\markup {
  \column {
    \vspace #2
    \notationComments
  }
}