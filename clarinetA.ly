% name \markup {"B" \flat "Clarinet 1"}
% width 6
clarinetA =
{ \key d \major \clef treble \compressFullBarRests \time 2/4
  \relative c''' {
%{Intro%} d2\f\fermata~d4 r8\fermata a\f
    \repeat volta 3
    { d4 a8. b16 | cis4 fis,8 fis | b4 a8. g16 | a4 d,8  d
      | e4 e8. fis16 | g4 g8.\cresc a16\! | b4 cis8 d | e4. a,8 | \mark\default fis'4 e8. d16 | e4 cis8 a
      | d4 cis8. b16 | cis4 fis,8. fis16 | b4 a8. g16 | a4 d,8. d16 | d'4 cis8. b16 | a4.\< r8
      | \mark\default \time 4/4 fis'2->\ff e8\(d\) cis d | e4. a,8 a4 r | d2-> cis8\(b\)a b| cis4. fis,8 fis a[\> b cis] | d4\! b8. cis16 d4\cresc b8. cis16
      | d4 b8 d g2 | \mark\default g2->\ff fis8\(e\)d e | fis4. d8 d2 | e2-> d8\(cis\)b cis | d4. b8 b2
      | \mark\default d4 cis8. b16 a4 d,8. d16 |

    }
    \alternative
    {{  d'4 cis8. b16 a4.\>  a8\f}
     {  a2_\markup{\italic rit.} b4\< cis}} | d2\!\fermata~d8 r r4 \bar "|."
  }}