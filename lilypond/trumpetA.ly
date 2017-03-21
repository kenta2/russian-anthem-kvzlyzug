% DB name \markup {"B" \flat "Trumpet 1"}
% DB similar c' bes
% DB size 20
trumpetA =
{ \key d \major \clef treble
  \relative c'' {
%{Intro%} d2\f\fermata~d4 r8\fermata a
    \repeat volta 3
    { d4 a8. (b16) | cis4 fis,8 fis | b4 a8. (g16) | a4 d,8  d
      | e4 e8. (fis16) | g4 g8.\cresc (a16)\! | b4 cis8 d | e8 \times 2/3 { a,16 a a} a8 a  | \mark #1 fis'4 e8. (d16) | e4 cis8 a
      | d4 cis8. (b16) | cis4 fis,8 fis | b4 a8. (g16) | a4 d,8. d16 | d'4 cis8. (b16) | a8\< cis--[ d-- e--]
      | \mark #2 \time 4/4 fis\!  r-\piuF a,4-> a'2->~ | a8 \times 2/3 {a16 a a } a4~a8 r r4 | r fis,-> fis'2->~ | fis8 \times 2/3 {fis16 fis fis} fis4. a,8\> b cis |
      %attaching piuF to the rest is hack to get the f to fall under the low A
  }
    \alternative
    {{ | d4\! b8. cis16 d4\cresc b8. cis16  | d4 b8 d g2 | \mark #3 g2->\ff fis8(e)d e | fis4.-- d8 d2 | e2-> d8(cis)b cis | d4.-- b8 b2
      | \mark #4 d4 d8. d16 d4 d,8. d16 | d'4-> cis8. b16 a4.\>  a8\f}
   { | r8. d,16 g4..\cresc b16 d4 | }} r8 b16\< b d8 g b2\! | \mark #3 \times 2/3 { r8 b,\ff b } \times 2/3 { e b e } a2
  | r8. fis,16 a4.. d16 fis4 | \times 2/3 {r8 b, b } \times 2/3 {e b e } fis8 fis16 fis16 fis8 fis | b4. b16 b b4. r8 | \mark #4 d,4 d8. d16 d4 d,8. d16  a'2_\markup{\italic rit.} b4\< cis | d2\!\fermata~d8 r r4 \bar "|."
  }}
