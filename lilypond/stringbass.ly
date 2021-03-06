% DB name "String Bass"
% called Contrabass in the original
% string bass can go down to an e, so transponsing down a whole step will not be a problem
% DB size 26.0
stringbass =
{ \key c \major \clef "bass"
  \relative c {
%{Intro%} c2.\ff\fermata r4\fermata
    \set Staff.clefGlyph=##f
    \repeat volta 3
    { | c2\f e f e | d4\mf\cresc d c2 | c4 b8-- a--
       g-- r g4 | \mark #1 c\f e g4. r8 | a,4 c e4. r8| f4 d e2| d4.. d16
       g8 f--[\< e-- d--] |\mark #2 %{ \time 4/4 %} c8\ff b c d e4 e | g, b8 d g g--[ f-- e--] | a, e' a, b c4 c | e g,8 b e e[\> d g]
      | f4.\mf c8 a'4.\cresc g8 | f4. c8 a' g f e | \mark #3 d4.->\ff e16 f g4 g,4 | c8 b c e d c b a | b4.-> c16 d e4 e
      | a,8 b c e a4 g | \mark #4 f d e e
    }
    \alternative
    {{ | d4-> d8. d16 g4\> g,\!}
     { | g2_\markup{\italic rit.} g4\< g }} | c2\fff\fermata~c8 r r4 | \bar "|."
  }}
