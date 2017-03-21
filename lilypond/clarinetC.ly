% DB name \markup {"B" \flat "Clarinet 3"}
% DB width 6
% DB similar c' bes
% DB size 26
clarinetC =
{ \key d \major \clef treble
  \relative c'' {
%{Intro%} fis2\f\fermata~fis4 r8\fermata a
    \repeat volta 3
    { | fis4 fis8. fis16 | fis4 a,8 a | b4 b8. b16 | a4 a8 a
      | g4 g8. (b16) | b4 b8.\cresc (e16)\! | e4 e8 a | a4. a8 | \mark #1 a4 a8. (b16) | a4 a8 a | fis4 fis8. fis16
      | fis4 a,8 a | b4 b8. b16 | a4 d8. d16 | e4 e8. (d16) | cis4.\< r8 |  \mark #2 \time 4/4 a'2.--\ff %{ added ff %} a4
    | a4. (e8) e4 r | fis2.-- fis4 | fis4. (a,8) a4 r | g'4 d8. g16 g4\cresc d8. g16
    | g4 d8 g b2 | \mark #3 b2->\ff a8(g) g4 | fis4.-- fis8 fis2 | g2-> fis | fis4.-- d8 d2
    | \mark #4 d4 d8. d16 d4 d8. d16
    }
    \alternative
    {{ | e4-> e8. d16 cis4.\>  a'8\f}
     { | cis,2_\markup{\italic rit.} d4\< g }} | fis2\!\fermata~fis8 r r4 | \bar "|."
  }}