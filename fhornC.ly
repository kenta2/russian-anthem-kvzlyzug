% name \markup {"F Horn 3"}
% width 7
fhornC =
{ \key g \major \clef treble \compressFullBarRests \time 2/4
  \relative c'' {
%{Intro%} b2\f\fermata~b4 r4\fermata
    \repeat volta 3
    { | g4\f g fis fis | g g g g | a a | a a8.\cresc b16\!
      | a4 fis8 g | a4 c | \mark\default b b a a | g fis8. e16 fis4 fis | g g
      | g g | g g | fis8 fis--[\( %added slur
        g-- a--]\) | \mark\default \time 4/4 b2->\ff a8\( g\) fis g | a2~a8 fis--[\( g-- a--]\)
      | g2-> fis8\( e\) d e | fis2. r4 | c'8.\mf c16 c4~c8.\cresc c16 c4~| c8 c16 c c8 c c \times 2/3 {c16 c c} c8 c
      | \mark\default c2->\ff d8\( c\) c4 | b4. b8 b2 | c2-> b | b4. b8 b2
      | \mark\default g4 g8. g16 g4 g
    }
    \alternative
    {{  | a4 a a2\>}
     % considerable hack to attach the ! ending the decresc to the 3rd ending
     {  | c2\!_\markup{\italic rit.} c4\< c}} | b2\!\fermata~b8 r r4 \bar "|."
  }}