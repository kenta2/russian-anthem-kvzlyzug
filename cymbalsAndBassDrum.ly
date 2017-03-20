% name "Cymbals & Bass Drum"
% width 6
% staff percussion
cymbalsAndBassDrum= \drummode {
\override LaissezVibrerTie #'control-points = #(lambda (grob)
((alter-lv-tie-curve '(
0 0.75
0.6 3
1.6 2
1.75 1.5)) grob))
%{Intro%} << { gui2\laissezVibrer\f\fermata} \\ {gui4 r} >> | r2\fermata
    \repeat volta 3
    { r2 | gui2\laissezVibrer
    }
    \alternative
  {{r1}
   { r1
}}
r1
  }




