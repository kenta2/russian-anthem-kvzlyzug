% DB name \markup {"E" \flat "Alto Saxophone 1"}
% DB similar c' ees
% DB size 25.3
altosaxA =
{ \key a \major \clef treble
  \relative c'' {
%{Intro%} e2.\ff\fermata r4\fermata
    \set Staff.clefGlyph=##f
    \repeat volta 3
    { | e4\f e8. e16  e4 cis8 cis| fis4 e8. d16  e4 a,8 a\mf\cresc
      | b4( b8. cis16  d4 d8. e16 | fis4) b,8-- e--  e4.-- e8| \mark #1 e4\f e8. fis16 e4. r8
      | cis4 cis8. cis16  cis4. r8 | fis4 e8. d16 e4 a,8 a | dis2(e8) gis--[\< a-- \afterGrace b--] \invB
      | \mark #2 %{ \time 4/4 %} \grace \invB a2--\ff gis8( fis) e fis | gis4. e8 e e--[ fis-- gis--] | fis2-- e8(dis) cis dis|e4. cis8 cis4 r| a2\mf \grace \invB d\cresc
      | fis4 d8 fis \afterGrace a2 \invB | \mark #3 \grace \invB a8->\ff fis a d, gis4 fis8 gis | a4.-- e8 e2 | fis8-> d fis b eis,4 dis8 eis | fis4.-- cis8 cis2
      | \mark #4 fis4 e8. d16 cis4 a8 a |
    }
    \alternative
    {{ | dis4-> dis8. dis16 e4.\> r8\!} %modifying the descresc and rest to be consistent with other parts
     { | e2_\markup{\italic rit.} \grace \invB fis4\< e }} | e2\fff\fermata~e8 r r4 | \bar "|."
  }}
