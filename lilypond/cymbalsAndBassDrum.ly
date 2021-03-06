% DB name "Cymbals & Bass Drum"
% Original has the convention of a shared quarter rest is written in the bottom of the staff.
% We do not mimic it, instead putting it in the center where it ought to be.
% DB staff percussion
% DB nopack 1
% DB size 26.0

cymbalsAndBassDrum= \drummode {
%{Intro%} << { \mylv gui2\laissezVibrer\ff\fermata } \\ { gui4 r } >>  r2\fermata
    \repeat volta 3
    { | << { \mylv gui4\laissezVibrer\f } \\ { gui4 } >> r4 r2 | R1*3
      | \mark #1 << { \mylv gui4\laissezVibrer } \\ { gui4 } >> r4 r2 | R1*3
      | \mark #2 %{ \time 4/4 %} << {\mylv gui2\laissezVibrer\f} \\ {gui4 r} >> r2
      % original puts two half rests above and below the staff, but lilypond does not automatically format that so nicely
      | R1 | << { \mylv gui2\laissezVibrer } \\ { gui4 r} >> r2
      | R1*3 | \mark #3 << {\mylv gui2\laissezVibrer\f} \\ {gui4 r} >> r2 % in this bar in the original, there is an example similar to lilyponds poor automatic formatting
      | r1 | << { \mylv gui2\laissezVibrer} \\ { gui4 r} >> r2 | r1
    }
    \alternative
  { { | \mark #4 % this is one of the rare cases where the first measure of D is different between the repeats
R1*2 }
   { |\mark #4  << { gui4 } \\ {gui4 } >> r4 r2 } }
 | << { \mylv gui2 gui4 gui | gui2\laissezVibrer\fermata r2 |} \\ { gui4_\markup{\italic rit.} r gui gui | gui2:32~gui8 r r4| } >>  \bar "|."
  }




