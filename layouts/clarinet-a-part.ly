\version "2.18.2"
\language "english"

\include "../common/cadenzaToMusic.ily"
\include "../common/includes.ily"
\include "../musicvars/cadenzas.ily"
\include "../common/globals.ily"
%\include "../musicvars/oboe.ily"
\include "../musicvars/clarinet.ily"
%\include "../musicvars/bassoon.ily"

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
  poet = "Clarinet in A"
}

\score {
  \new Staff <<
    { \compressFullBarRests
      \override MultiMeasureRest.expand-limit = #1
      \global
      \keepWithTag #'part \globalBsn % need accel... marking
      \globalTwelveEight \globalOB
      \transpose a c' \globalOb
      \globalSixEight \globalFinal
    }
    \transpose a c' { \clarTheme \clarBsn \clarTwelveEight \clarOB \clarOb
                      \keepWithTag #'a-part \clarSixEight
                      \clarFinal
    }
  >>
}
