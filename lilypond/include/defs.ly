%#(set-default-paper-size "letter")
piuF = \markup {\italic "piu" \dynamic f }
invB = { \hideNotes \relative { b'1 } \unHideNotes }
#(set! paper-alist (cons '("mysize" . (cons (* 8.5 in) (* 6.1 in))) paper-alist))
    #(set-default-paper-size "mysize")
invD = {\hideNotes \relative {d,1}\unHideNotes }
#(define ((alter-lv-tie-curve offsets) grob)
   (let ((coords (ly:semi-tie::calc-control-points grob)))
     (define (add-offsets cs os)
      (if (null? cs)
       '()
        (cons
         (cons (+ (caar cs) (car os))
            (+ (cdar cs) (cadr os)))
         (add-offsets (cdr cs) (cddr os)))))
 (add-offsets coords offsets)))
shapeLVTie = #(define-music-function (parser location offsets) (list?)
#{
 \once \override LaissezVibrerTie #'control-points = #(alter-lv-tie-curve offsets)
#})

% works for the remainder of the voice
% http://lilypond.1069038.n5.nabble.com/Default-length-of-laissezvibrer-ties-td10440.html
mylv = #(define-music-function (parser location) ()
#{
 \override LaissezVibrerTie #'control-points = #(alter-lv-tie-curve '(
0 0.75
0.6 3
1.6 2
1.75 1.5))
#})
