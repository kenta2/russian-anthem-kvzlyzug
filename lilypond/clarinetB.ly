% DB name \markup {"B" \flat "Clarinet 2"}
% DB similar c' bes,
% DB size 23.6
clarinetB =
{ \key d \major \clef treble
  \relative c''' {
%{Intro%} a2.\ff\fermata r8\fermata a\f
    \set Staff.clefGlyph=##f
    \repeat volta 3
    { a4 fis8. fis16  a4 cis,8 cis | d4 d8. d16  d4 a8 a\mf\cresc
      | b4( b8. e16  e4 e8. fis16 | g4) a8-- b--  cis4.-- \afterGrace a8 \invB |  \mark #1 \hideNotes \grace \invB  d4\f a8. b16  cis4 a8 a | b4 fis8. gis16
       a4 cis,8 cis | d4 d8. d16  d4 d8 d | gis4 gis8. e16  e4\<~e8\! r8 | \mark #2 %{ \time 4/4 %} \grace \invB d'2--\ff cis8(b) a b
      | cis4. a8 a4 r | b2-- a8( gis) fis gis | a4. cis,8 cis fis[\> g a] | b4\mf g8. a16 b4\cresc g8. a16
      | b4 g8 b \afterGrace d2 \invB | \mark #3 \grace \invB d2->\ff cis4 b8 cis | d4.-- a8 a2 | b2-> ais4 gis8 ais | b4.-- fis8 fis2
      | \mark #4 b4 a8. g16 fis4 d8 d |
    }
    \alternative
    {{  gis4-> gis8. e16 e4.\>  a8\f}
     {  g2_\markup{\italic rit.} \grace \invB g4\< a }} | a2\fff\fermata~a8 r r4 \bar "|."
  }}
