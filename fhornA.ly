% DB name \markup {"F Horn 1"}
% DB width 5.5
% DB similar c f
fhornA =
{ \key g \major \clef treble
  \relative c'' {
%{Intro%} d2\f\fermata~d4 r4\fermata
    \repeat volta 3
    { b4 b | b b | g g | g g | a a | a a8.\cresc b16\!
      | c4 a8 d | d4. d8 | \mark #1 d4 d d d | b b b b | g g
      | g g a a | a8 r d--\< d-- %removed tie
        \mark #2 \time 4/4 d2.->\ff d4 | d4. d8 d fis,--[( g-- a--])
      | b2.-> b4 | b4. b8 b4 r| c8.\mf c16 c4~c8.\cresc c16 c4~| c8 c16 c c8 c c \times 2/3 {c16 c c} c8 c
      |\mark #3 e2->\ff d| d4. d8 d2| c2-> b| b4. b8 b2
      |\mark #4 c4 d8. c16 b4 g

    }
    \alternative
    {{  | a a a(\> c)\!}
     {  | c2_\markup{\italic rit.} c4\< d}} | d2\!\fermata~d8 r r4 \bar "|."
  }}
