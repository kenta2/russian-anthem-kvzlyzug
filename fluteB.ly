% name "Flute 2"
% width 6
fluteB =
{ \key c \major \clef treble \compressFullBarRests \time 2/4
  \relative c''' {
%{Intro%} g2\f\fermata~g4 r8\fermata g\f
    \repeat volta 3
    { g4 g8. a16| g4 b,8 b | c4 c8. c16 | c4 c8 c
      | a4 a8. d16 | d4 d8.\cresc e16\! | f4 g8 a | b4. g8 | \mark\default c4 g8. a16 | b4 b8 g
      | a4 e8. e16 | e4 b8 b | c4 c8. c16| c4 c8. c16 | fis4 fis8. d16 | d4.\< r8
      | \mark\default \time 4/4 c'2->\ff b8\(a\) g a | b4. d,8 d4 r | a'2-> g8\(fis\) e fis | g4. b,8 b e[\> f g]
      | a4\! f8. g16. a4\cresc f8 g16. | a4 f8 a c2 | \mark\default c2->\ff b4 a8 b | c4. g8 g2
      | a2-> gis4 fis8 gis | a4. e8 e2
    }
    \alternative
    {{ a4 g8. f16 e4 c8. c16 | fis4 fis8. d16 d4.\>  g8\f}
     {a4 g8. f16 e4 c8. c16 }} f2^\markup{\italic rit.} f4\< g g2\!\fermata~g8 r r4 \bar "|."
  }}
