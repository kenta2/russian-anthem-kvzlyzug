% name \markup {"B" \flat "Clarinet 2"}
% width 6
clarinetB =
{ \key d \major \clef treble \compressFullBarRests \time 2/4
  \relative c''' {
%{Intro%} a2\f\fermata~a4 r8\fermata a\f
    \repeat volta 3
    { a4 fis8. fis16 | a4 cis,8 cis | d4 d8. d16 | d4 a8 a
      | b4 b8. e16 | e4 e8.\cresc fis16\! | g4 a8 b | cis4. a8 | \mark\default d4 a8. b16 | cis4 a8 a | b4 fis8. gis16
      | a4 cis,8 cis | d4 d8. d16 | d4 d8. d16 | gis4 gis8. e16 | e4.\< r8 | \mark\default \time 4/4 d'2->\ff cis8\(b\) a b
      | cis4. a8 a4 r | b2-> a8\( gis\) fis gis | a4. cis,8 cis fis[\> g a] | b4\! g8. a16 b4\cresc g8. a16
      | b4 g8 b d2 | \mark\default d2->\ff cis4 b8 cis | d4. a8 a2 | b2-> ais4 gis8 ais | b4. fis8 fis2
      | \mark\default b4 a8. g16 fis4 d8. d16 |
    }
    \alternative
    {{  gis4 gis8. e16 e4.\>  a8\f}
     {  g2_\markup{\italic rit.} g4\< a }} | a2\!\fermata~a8 r r4 \bar "|."
  }}