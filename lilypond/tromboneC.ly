% DB name "Trombone 3"
% Doubles Tuba / String bass a lot, so this might be a bass trombone part
% DB width 6
% DB size 26
tromboneC =
{ \key c \major \clef "bass"
  \relative c {
%{Intro%} c2\f\fermata~c4 r4\fermata
    \repeat volta 3
    { | c2 e f e | d4 d c2\cresc c4\! b8 a
      | g r g4 | \mark #1 c e d4. r8 | a4 c b4. r8| f'4 d e2| d4.. d16
      | d8 f--[\< e-- d--] |\mark #2 \time 4/4 c8\f b c d e4 e | g, b8 d g4 r4 | a,8 e' a, b c4 c | e g,8 b e4 r4
      | f4.\mf c8 a'4.\cresc g8 | f4. c8 a' g f e | \mark #3 d4.->\ff e16 f g4 g,4 | c8 b c e d c b a | b4.-> c16 d e4 e
      | a,8 b c e a4 g | \mark #4 f d e e
    }
    \alternative
    {{ | d4-> d8. d16 g4\> g,\!}
     { | g2_\markup{\italic rit.} g4\< g }} | c2\!\fermata~c8 r r4 | \bar "|."
  }}
