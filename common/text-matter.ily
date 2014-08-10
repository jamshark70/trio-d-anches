\version "2.16.1"

titlepage = \markup {
  \fill-line {
    \center-column {
      \vspace #12
      \fontsize #6 \line { "Theme and Variations" }
      \vspace #1
      \huge \line { for Oboe, Clarinet in A and Bassoon }
      \vspace #4
      \huge \line { 2014 }
      \vspace #10
      \huge \line { Duration: c. 12 minutes }
      \vspace #6
      \fontsize #5 \line { H. James Harkins }
      \vspace #0.5
      \huge \line { b. 1970 }
    }
  }
}

oboeTitle = \markup {
  \vspace #4 \huge
  \fill-line { Oboe }
}

ClarinetATitle = \markup {
  \vspace #4 \huge
  \fill-line { Clarinet in A }
}

bsnTitle = \markup {
  \vspace #4 \huge
  \fill-line { Bassoon }
}

cclicense = \markup {
  \fill-line {
    \center-column {
      \normalsize
      \line { Creative Commons License: \bold "CC-NC-BY-SA" }
      \line { You \italic may make derivative works. }
      \line { \bold "BY" (Attribution): Your derivative work must credit me. }
      \line { \bold "NC" (Non-Commercial): Your work, or performance of this work, should not be used commercially without my permission. }
      \line { \bold "SA" (ShareAlike): Your work should be published under a similar or more permissive license. }
      \line { \typewriter "http://creativecommons.org/licenses/by-nc-sa/4.0/" }
    }
  }
}

notationComments = \markup {
  \column {
    \line \large \bold { Notation }
    \vspace #0.6
    \normalsize
    \wordwrap {
      A \bold "0" centered in the staff after a bar line indicates unmetered music (a cadenza).
    }
    \vspace #0.6
    \wordwrap {
      Grace notes should be played before the beat.
    }
  }
}

instructionpage = \markup {
  \column {
    % title again here
    
    \vspace #5
    \line \large \bold { Program note }
    \vspace #0.6
    \normalsize
    \wordwrap {
      This composition is a classically-conceived theme and variations, beginning with an austere, contemplative theme based on a simple, three-note sonority and a lilting rhythm. The variations tease out melodic, harmonic and rhythmic elements of the theme. Some of the variations hew closely to the form of the theme; other variations fixate on a small element in the theme and discard the original form.
    }
    \vspace #0.6
    \wordwrap {
      Classical variations typically apply different ornamental figures to a melody
      in each variation while the melody retains its essential shape, or dress up a
      consistent harmonic progression in various melodic and textural guises.
      (The first movement of Mozart’s Piano Sonata no. 11, K.331, is a fine example
      of the former; J. S. Bach’s \italic { Goldberg Varations, } BWV 988, illustrate the latter.)
      This set of variations presses further into rhythmic transformation of the theme’s
      mixture of triple and double divisions. This feature of the theme recurs throughout
      the work, subtly at first; by the final variation, the interplay of metrical divisions
      comes close to distorting the listener’s perception of the tempo (though the tempo
      does not actually change in this variation!).
    }
    \vspace #0.6
    \wordwrap {
      The work was composed between February and July 2014 for the Kapok Winds,
      made up of principals from the Guangzhou Symphony Orchestra: Cornelius Finke
      (oboe), Schyler Fung (clarinet) and Michael Garza (bassoon).
    }
    \vspace #1.2
    \notationComments
    \vspace #1.2
    \line \large \bold { Acknowledgments }
    \vspace #0.6
    \wordwrap {
      Special thanks are due to two members of the LilyPond user community, for their assistance in providing custom extensions for the LilyPond notation software to handle two challenging situations: Thomas Morley, for a function that helps to coordinate free-rhythm cadenzas with the other parts, and David Nalesnik, for a custom way to place accidentals automatically during the clarinet cadenza.
    }
    \vspace #0.6
    \wordwrap {
      (As these acknowledgments are for technical solutions for music engraving problems, they should not be printed in a concert program.)
    }
  }
}