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
  copyright = "(c) 2014 H. James Harkins. Not licensed for performance yet."
  poet = \markup \concat { "Clarinet in B" \flat }
}

\score {
  \new Staff <<
    { \compressFullBarRests
      \override MultiMeasureRest.expand-limit = #1
      \global \globalBsn \globalTwelveEight \globalOB
      \transpose bf c' \globalOb
      s1 \globalSixEight
    }
    \transpose bf c' { \clarTheme \clarBsn \clarTwelveEight \clarOB \clarOb R1 \clarSixEight }
  >>
}
