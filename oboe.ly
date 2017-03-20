% DB name "Oboe"
% DB width 6
oboe =
{ \key c \major \clef treble
  \relative c'' {
%{Intro%} e2\f\fermata~e4 r8\fermata g\f
    \repeat volta 3
    { e4 e8. e16| e4 g,8 g | a4 a8. a16 | g4 g8 g
      | f4 f8. a16 | a4 a8.\cresc d16\! | d4 d8 g | g4. g8 | \mark #32 g4 g8. a16 | g4 g8 g
      | e4 e8. fis16 | g4 g,8. g16 | a4 a8. a16 | g4 c8. c16 | d4 d8. c16 | b4.\< r8
      | \mark #33 \time 4/4 g'2.->\ff g4 | g4. b,8 b4 r | e2.-> e4 | e4. g,8 g4 r | f'4 c8. f16 f4\cresc c8. f16
      | f4 c8 f a2 | \mark #34 a2->\ff g8(f) f4 | e4. e8 e2 | f2-> e | e4. c8 c2
      | \mark #35 c4 c8. c16 c4 c8. c16 |
    }
    \alternative
    {{ d4 d8. c16 b4. \>  g'8\f}
     {b,2_\markup{\italic rit.} c4\< f }} | e2\!\fermata~e8 r r4 \bar "|."
  }}
