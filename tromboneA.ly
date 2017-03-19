% name "Trombone 1"
% width 6
tromboneA =
{ \key c \major \clef "bass" \compressFullBarRests \time 2/4
  \relative c' {
%{Intro%} g2\f\fermata~g4 r4\fermata
    \repeat volta 3
    { | c2\f b | a4 c c g | a a a d8.\cresc e16\!
      | d4 g,8 a | b \times 2/3 {g16 g g} g8 g | \mark\default c4 d8. c16 | b4. r8 | c4 b8. a16 | b4. r8| a4 c |c  c8. c16
      | c2( | b8) b--[(\< c-- d--]) | \mark\default \time 4/4 c2->\!\f g4 g | b2. r4 | c2-> b8( a) g a | b2. r4
    }
    \alternative
    {{ | c8.\mf c16 c4~ c8.\cresc c16 c4~ | c8 c16 c c8 c c \times 2/3 { c16 c c} c8 c | \mark\default c2->\ff b4 a8 b
       | c4. c8 c2 | d-> d | c4. c8 c2
       | \mark\default c4 b8. a16 g4 c8. c16 | c4 c b2\>
     }
     { r8.\! % hack to end the decresc in the first ending
       a16 c4..\cresc c16 f4 
     }}
    | r8 c16\< c f8 f a2| \mark #3 \times 2/3 { r8 d,\ff d} \times 2/3 {f d f} g8 r r4
    | r8. g,16 c4.. e16 g4 | \times 2/3 {r8 d d} \times 2/3 {f d f} e8 e16 e e8 e | e4. e8 e2
    | \mark\default c4 b8. a16 g4 g4 % this is one of the rare times the first measure at D (originally the first measure of the 3rd ending) differs from the 1st/2nd ending
    | b2_\markup{\italic rit.} a4\< g | g2\!\fermata~g8 r r4 | \bar "|."
  }}
