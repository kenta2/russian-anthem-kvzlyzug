% DB name \markup {"F Horn 2"}
% DB similar c f
% DB size 26
fhornB =
{ \key g \major \clef treble
  \relative c'' {
%{Intro%} g2\ff\fermata~g4 r4\fermata
    \repeat volta 3
    { | d\f d d d | e e d d | e\mf\cresc( e e e8. d16
      | e4) d8-- e--  fis4 fis | \mark #1 g\f a8. g16  fis4 fis | e fis8. e16  fis4 fis | e e
       d d | cis cis  d8 d--[\< e-- fis--] | \mark #2 %{ \time 4/4 %} g2--\ff fis8(e) d e | fis2~fis8 d--[ e-- fis--]
      | e2-- d8( cis) b cis | d2. r4 | g8.\mf g16 g4~g8.\cresc g16 g4~| g8 g16 g g8 g g \times 2/3 {g16 g g} g8 g
      | \mark #3 g2->\ff fis4 e8 fis | g4.-- g8 g2 | a2-> a | g4.-- g8 g2
      | \mark #4 g4 g8. g16 g4 g
    }
    \alternative
    {{  | g4-> g fis4.\>r8\!}
     {  | fis2_\markup{\italic rit.} \grace \invB g4\< fis}} | g2\fff\fermata~g8 r r4 \bar "|."
  }}
