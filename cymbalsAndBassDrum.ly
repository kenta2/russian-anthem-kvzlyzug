% name "Cymbals & Bass Drum"
% width 6
% staff percussion
cymbalsAndBassDrum= \drummode {
%{Intro%} << { \mylv gui2\laissezVibrer\f\fermata | r2 | gui2\laissezVibrer } \\ {gui4 r| r2 | gui4} >> | r2\fermata
    \repeat volta 3
    { r2 | << { gui2\laissezVibrer\f\fermata} \\ {gui4 r} >>
    }
    \alternative
  {{r1}
   { r1
}}
r1
  }




