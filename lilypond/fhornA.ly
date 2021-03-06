% DB name \markup {"F Horn 1"}
% DB similar c f
% DB size 26.0
fhornA =
{ \key g \major \clef treble
  \relative c'' {
%{Intro%} d2.\ff\fermata r4\fermata
    \set Staff.clefGlyph=##f
    \repeat volta 3
    { | b4\f b  b b | g g  g g | a\mf\cresc( a  a a8. b16
      | c4) a8-- d--  d4.-- d8 | \mark #1 d4\f d d d | b b b b | g g
       g g | a a  a8 r d--\< d-- %removed tie
      |  \mark #2 %{ \time 4/4 %} d2.--\ff d4 | d4. d8 d fis,--[ g-- a--]
      | b2.-- b4 | b4. b8 b4 r| c8.\mf c16 c4~c8.\cresc c16 c4~| c8 c16 c c8 c c \times 2/3 {c16 c c} c8 c
      |\mark #3 e2->\ff d| d4.-- d8 d2| c2-> b| b4.-- b8 b2
      |\mark #4 c4 d8. c16 b4 g

    }
    \alternative
    {{  | a-> a a(\> c)\!} % the c is a weird note, but doubled in trombone 2.
     {  | c2_\markup{\italic rit.} \grace \invB c4\< d}} | d2\fff\fermata~d8 r r4 \bar "|."
  }}
