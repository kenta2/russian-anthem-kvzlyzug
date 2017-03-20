% name "Bassoon"
% width 6
bassoon =
{ \key c \major \clef "bass"
  \relative c {
%{Intro%} c2\f\fermata~c4 r4\fermata
    \repeat volta 3
    { | c2\f e8 e[\( g b] | f2\) | e8 c[\(e g]\) | d4 d | c2\cresc
    | c4\! b8 a | g r g4 | \mark\default c8 e[\( g a]\) | b4. r8 | r c,[\(e fis]\) | g4. r8
    | r a,[\( c f]\) | g4. r8 | d4.. d16| g8 f--\([\< e-- d -- ]\) | \mark\default \time 4/4 c->\ff  b c d e4 e
    | g, b8 d g g[ f e] | a, e' a, b c4 c | e g,8 b e e[\> d g] | f4.\! c8 a'4.\cresc g8| f4. c8 a' g f e
    | \mark\default d4.->\ff e16 f g4 g, | c8 b c e d c b a | b4.-> c16 d e4 e | a,8 b c e a4 g
    | \mark\default f d e e
    }
    \alternative
    {{ | d d8. d16 g4\> g,\!}
     { | g2_\markup{\italic rit.} g4\< g }} | c2\!\fermata~c8 r r4 | \bar "|."
  }}
