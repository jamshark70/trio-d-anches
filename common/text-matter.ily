\version "2.16.1"

titlepage = \markup {
  \fill-line {
    \center-column {
      \vspace #9
      \fontsize #6 \line { "Silly Walks Variations" }
      %\vspace #1
      %\fontsize #5 \line { Fantasia on “Liu Sanjie” }
      \vspace #1
      \huge \line { for Oboe, Clarinet and Bassoon }
      \vspace #4
      \huge \line { 2014 }
      \vspace #10
      \huge \line { Duration: c. 10 minutes }
      \vspace #6
      \fontsize #5 \line { H. James Harkins }
    }
  }
}

erhuTitle = \markup {
  \vspace #4 \huge
  \fill-line { Erhu }
}

fluteTitle = \markup {
  \vspace #4 \huge
  \fill-line { Flute }
}

bsnTitle = \markup {
  \vspace #4 \huge
  \fill-line { Bassoon }
}

cclicense = \markup {
  \fill-line {
    \center-column {
      \normalsize
      \line { Creative Commons License: \bold "CC-BY-SA" }
      \line { You \italic may make derivative works, }
      \line { and you \italic may use them commercially. }
      \line { \bold "BY" (Attribution): Your derivative work must credit me. }
      \line { \bold "SA" (ShareAlike): Your work should be published under a similar or more permissive license. }
      \line { \italic "http://creativecommons.org/licenses/by-sa/3.0/" }
    }
  }
}

instructionpage = \markup {
  \column {
    % title again here
    
    \line \large \bold { Program note }
    %\vspace #0.6
    \normalsize
    \wordwrap {
      Program note here
    }
    \vspace #0.6
    \wordwrap {
      Next paragraph
    }
    \vspace #0.6
  }
}