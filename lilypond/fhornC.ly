% DB name \markup {"F Horn 3"}
% DB similar c f
% DB size 26
fhornC =
{ \key g \major \clef treble
  \relative c'' {
%{Intro%} b2\ff\fermata~b4 r4\fermata
    \repeat volta 3
    { | g4\f g fis fis | g g g g | a\mf\cresc( a  a a8. b16
      | a4) fis8-- g--  a4 c | \mark #1 b\f b a a  g fis8. e16 fis4 fis | g g
       g g | g g  fis8 fis--[\<
        g-- a--] | \mark #2 %{ \time 4/4 %} b2--\ff a8( g) fis g | a2~a8 fis--[ g-- a--]
      | g2-- fis8( e) d e | fis2. r4 | c'8.\mf c16 c4~c8.\cresc c16 c4~| c8 c16 c c8 c c \times 2/3 {c16 c c} c8 c
      | \mark #3 c2->\ff d8( c) c4 | b4.-- b8 b2 | c2-> b | b4.-- b8 b2
      | \mark #4 g4 g8. g16 g4 g
    }
    \alternative
    {{  | a4-> a a4.\> r8\!}
     {  | c2_\markup{\italic rit.} c4\< c}} | b2\fff\fermata~b8 r r4 \bar "|."
  }}
