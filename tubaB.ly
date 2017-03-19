% name \markup {"Tuba (BB"\flat") / Sousaphone"}
% originally this was the Bass 2 part
% Transposing this part down a whole step to make it nice for wind band is going to make the low notes impossible / hard to hear.
% Therefore, we add some octave chords, artistically.
% width 6
tubaB =
{ \key c \major \clef "bass" \compressFullBarRests \time 2/4
  \relative c, {
%{Intro%} c2\f\fermata~c4 r4\fermata
    \repeat volta 3
    { | c2 e f e | d4 <d d'> <c c'>2\cresc <c c'>4\! <b b'>8 <a a'>
      | <g g'> r <g g'>4 | \mark\default c e g4. r8 | <a, a'>4 <c c'> <b b'>4. r8| f'4 d e2| d4.. d16
      | g8 f--[( e-- d--]) |\mark\default \time 4/4 c8\f b c d e4 e | <g, g'> b8 d g g--[( f-- e--]) | <a, a'> e' <a, a'> <b b'> <c c'>4 <c c'
> | <e e'> <g, g'>8 <b b'> e e[\> d g]
      | f4.\! c8 a'4.\cresc g8 | f4. c8 a' g f e | \mark\default d4.->\ff e16 f g4 <g, g'>4 | <c c'>8 <b b'> <c c'> <e e'> <d d'> <c c'> <b b'> <a a'> | <b b'>4.-> <c c'>16 <d d'> <e e'>4 <e e'>
      | <a, a'> 8 <b b'> <c c'> <e e'>  a4 g | \mark\default f d e e
    }
    \alternative
    {{ | d4 d8. d16 g4\> <g, g'>\!}
     { | <g g'>2_\markup{\italic rit.} <g g'>4\< <g g'> }} | c2\!\fermata~c8 r r4 | \bar "|."
  }}
