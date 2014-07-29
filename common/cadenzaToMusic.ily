\version "2.18.2"

cadenzaToMusic =
#(define-music-function (parser location cadenzaMusic music)
                                                  (ly:music? ly:music?)
"Adjust the length of `music and the measureLength, to fit the length of
`cadenzaMusic"
(let* ((clen (ly:music-length cadenzaMusic))
       (mlen (ly:music-length music))
       (factor (ly:moment-div clen mlen))
       (compressed (ly:music-compress music factor)))
  ;; (format #t "factor : ~a\n" factor)
  #{
    \set Timing.measureLength = $clen
    $compressed
    \unset Timing.measureLength
  #}))

squeezeCadenza =
#(define-music-function (parser location targetDur music)
                                                  (ly:moment? ly:music?)
"Adjust the length of `music and the measureLength, to fit the length of
`cadenzaMusic"
(let* ((mlen (ly:music-length music))
       (factor (ly:moment-div targetDur mlen))
       (compressed (ly:music-compress music factor)))
  ;; (format #t "factor : ~a\n" factor)
  #{
    $compressed
  #}))
