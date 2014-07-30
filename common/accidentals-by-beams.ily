\version "2.18.2"

#(define (get-pitch grob)
   (ly:event-property (ly:grob-property grob 'cause) 'pitch))

#(define (has-accidental? grob)
   (ly:grob? (ly:grob-object grob 'accidental-grob)))

#(define (first-in-beamed-group? me heads)
   (let loop ((x heads))
     (cond
      ((eq? (car x) me) #t)
      ((equal? (get-pitch (car x)) (get-pitch me)) #f)
      (else (loop (cdr x))))))

#(define (preceded-by-chromatic-variant? me heads)
   ;; Within a beamed group, compare a pitch with the preceding pitches.  Find the closest
   ;; pitch sharing octave and note-name with our pitch.  If it has a different alteration
   ;; from our pitch, return #t.  Our pitch will then need an accidental.
   (let* ((me-pitch (get-pitch me))
          (preceding
           (take-while
            (lambda (x) (not (eq? x me)))
            heads))
          (preceding
           (map
            (lambda (x) (get-pitch x))
            preceding))
          (preceding
           (filter
            (lambda (x)
              (and (equal? (ly:pitch-octave x) (ly:pitch-octave me-pitch))
                   (equal? (ly:pitch-notename x) (ly:pitch-notename me-pitch))))
            preceding)))
     
     (and (pair? preceding)
          (not (equal? (ly:pitch-alteration (last preceding))
                       (ly:pitch-alteration me-pitch))))))

#(define (redundant-natural? me heads)
   ;; Will remove any natural which isn't cancelling anything within a beamed group.
   (let* ((acc (ly:grob-object me 'accidental-grob))
          (glyph-name (ly:grob-property acc 'glyph-name)))
     (and (string=? glyph-name "accidentals.natural")
          (not (preceded-by-chromatic-variant? me heads))
          (not (forced? me)))))

#(define (forced? grob)
   (and (has-accidental? grob)
     (eq? #t (ly:grob-property (ly:grob-object grob 'accidental-grob) 'forced))))

#(define (unnecessary-acc? me heads)
   (cond
    ((redundant-natural? me heads) #t)
    ((first-in-beamed-group? me heads) #f)
    ((preceded-by-chromatic-variant? me heads) #f)
    ((forced? me))
    (else #t)))

#(define (accidentals-by-beam-group grob)
   (let* ((stems (ly:grob-array->list (ly:grob-object grob 'stems)))
          (heads (map (lambda (x)
                        (ly:grob-array->list
                         (ly:grob-object x 'note-heads))) stems))
          (heads (flatten-list heads)))
     
     (let loop ((candidates heads))
       (if (pair? candidates)
           (begin
            (if (and
                 (has-accidental? (car candidates))
                 (unnecessary-acc? (car candidates) heads))
                (ly:grob-suicide! (ly:grob-object (car candidates) 'accidental-grob)))
            (loop (cdr candidates)))))))
