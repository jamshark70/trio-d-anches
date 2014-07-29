\version "2.18.2"s
\language "english"

subffMarkup = \markup { \center-align { \italic { "sub." } \dynamic ff } }

sfmpMarkup = \markup { \dynamic sf \dynamic mp }
sfmp = #(make-dynamic-script sfmpMarkup)

nullMeter = {
  \once\override Staff.TimeSignature.stencil = #(lambda (grob)
          (grob-interpret-markup grob (markup #:fontsize 4 #:vcenter "0")))
}

sempreTenuto = \markup \italic "sempre tenuto"
nonEspr = \markup \italic "non espr."
espres = \markup \italic "espr."
mkMarc = \markup \italic "marc."

shapeECsDE = {
  \shape #'((0 . -0.3) (-0.4 . -0.5) (-0.25 . -0.3) (0 . 0)) Slur
}
