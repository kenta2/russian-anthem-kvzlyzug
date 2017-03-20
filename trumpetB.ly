% DB name \markup {"B" \flat "Trumpet 2"}
% DB width 6
% DB similar c' bes
trumpetB =
{ \key d \major \clef treble
  \relative c'' {
%{Intro%} a2\f\fermata~a4 r8\fermata a\f
    \repeat volta 3
    { | a4 a8. b16 | a4 fis8 fis | d4 d8. d16 | d4 d8 d
      | e4 e8. fis16 | e4 e8.\cresc fis16\! | e4 e8 a | a8 \times 2/3 { a16 a a} a8 a \mark #1 a4 a8. b16 | a4 a8 a
      | fis4 fis8. fis16 | fis4 fis8 fis | d4 d8. d16 | d4 d8. d16 | e4 e8. e16 | e8 a--[(\< b-- cis--])
      | \mark #2 \time 4/4 a8\!  r-\piuF a4-> a2->~ | a8 \times 2/3 {a16 a a } a4~a8 r r4 | r fis-> fis2->~ | fis8 \times 2/3 {fis16 fis fis} fis4. fis8\> g a |
      %attaching piuF to the rest is hack to get the f to fall under the low A
  }
    \alternative
    {{ | b4\! g8. a16 b4\cresc g8. a16| b4 g8 b d2| \mark #3 d2->\ff cis4 b8 cis
       | d4. a8 a2 | g2-> % there is a superfluous accent above this note also
       fis | fis4. fis8 fis2
       | \mark #4 d4 d8. d16 d4 d8. d16 | e4 e8. e16 e4.\> a8\f
     }
     {| r8. d,16 g4..\cresc g16 b4  }} r8 g16\< g b8 d d2\! | \mark #3 \times 2/3 { r8 g,\ff g} \times 2/3 {b8 g b} a2
    | r8. d,16 fis4.. a16 d4 | \times 2/3 { r8 g, g} \times 2/3 { b8 g b} ais8 fis16 fis fis8 fis | b4. b16 b b4. r8
    | \mark #4 d,4 d8. d16 d4 d8. d16 | g2_\markup{\italic rit.} g4\< a | a2\!\fermata~a8 r r4 \bar "|."
  }}
