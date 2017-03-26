% DB name "Trombone 2"
% DB size 19.0
tromboneB =
{ \key c, \major \clef "bass"
  \relative c {
%{Intro%} e2.\ff\fermata r4\fermata
    \repeat volta 3
    { | \set Staff.clefGlyph=##f e2\f g a g | f4\mf\cresc( f8. e16  f4 a8. g16
      | a4) g8-- g--  g-- \times 2/3 {g16 g g} g8 g | \mark #1 e4\f g  g4. r8 | e4 e  g4. r8 | a4 a g g
      | fis2(  g8) g--[\< a-- b--] | \mark #2 %{ \time 4/4 %} e,2--\ff g4 g | g2. r4 | e2.-- g4 | g2.  r4
    }
    \alternative
    {{ | a8.\mf a16 a4~ a8.\cresc a16 a4~ | a8 a16 a a8 a a \times 2/3 { a16 a a} a8 a | \mark #3 a2->\ff g4 f
       | e4.-- g8 g2 | a2-> gis4 fis8 gis | a4.-- a8 a2
       | \mark #4 a4 g8. f16 g4 g | fis-> fis g(\>f)\! % this concert F is a weird note, but also doubled in French Horn 1
     }
     { r8.\! % hack to end the decresc in the first ending
       f16 a4..\cresc a16 c4 }} | r8 a16\< a c8 c f2\! | \mark#3 \times 2/3 { r8 a,\ff a} \times 2/3 { d a d } g,8 r r4
    | r8. e16 g4.. c16 e4 | \times 2/3 {r8 a, a } \times 2/3 { d a d} e8 e16 e e8 d | c4. c8 c2
       | \mark #4 a4 g8. f16 g4 g | f2_\markup{\italic rit.} \grace \invB f4\< f | e2\fff\fermata~e8 r r4 | \bar "|."
  }}
