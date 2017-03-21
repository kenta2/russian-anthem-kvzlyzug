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

%% http://lsr.di.unimi.it/LSR/Item?id=858

#(define (bold-tenuto-script-stencil grob)
   (let*
     ((scale (magstep (ly:grob-property grob 'font-size 0)))
      (dir (ly:grob-property grob 'direction 0))
      (script-stencil (ly:grob-property grob 'script-stencil))
      (tenuto-width 0.25) ;;; alter this value to modify the line width of the tenuto
      (tenuto-length 1.4) ;;; alter this value to modify the line length of the tenuto
      (tl (* -0.5 tenuto-length))
      (tr (* 0.5 tenuto-length))
      (ten-sil (make-line-stencil (* scale tenuto-width) (* scale tl) 0.0 (* scale tr) 0.0))
      (dot-sil (make-circle-stencil (* scale 0.15) (* scale 0.1) #t))
      (por-sil (ly:stencil-combine-at-edge
                  ten-sil
                  Y
                  (if (= dir 0)
                    -1
                    (* -1 dir))
                  dot-sil
                  (* scale 0.4))))
   (if (and (pair? script-stencil) (pair? (cdr script-stencil)))
     (let* ((rv (cdr script-stencil))
            (script-type (if (<= dir 0) (car rv) (cdr rv))))
        (cond ((equal? script-type "tenuto")
               ten-sil)
              ((or (equal? script-type "uportato") (equal? script-type "dportato"))
               por-sil)
              (else (ly:script-interface::print grob))))
     (ly:script-interface::print grob))))
