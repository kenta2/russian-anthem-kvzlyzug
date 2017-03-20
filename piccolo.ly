% DB name "Piccolo"
% this part is taken from the symphony orchestra score
% DB width 6
% DB short Pc
% DB similar c' c
piccolo =
{ \key c \major \clef treble
  \relative c'' {
%{Intro%} c2\f\fermata~c4 r4\fermata
    \repeat volta 3
    { | R2*8 | \mark #1 R2*8
      | \mark #2 \time 4/4 R1*6
      | \mark #3 f'2->\ff e8(d) c d | e4.-- c8 c2 % the tenuto mark is in the symphony score but not the wind band score
      | d-> c8 (b) a b| c4.-- a8 a2 | \mark #4 c4 b8. a16 g4 c,8. c16 |
    }
    \alternative
    {{  c'4-> % this accent is only in the symphony score
           b8. a16 g4.\> %{replaced tied eighth with dot %} %{ consider adding an eighth rest %} r8\!}
     { g2_\markup{\italic rit.} a4\< %{consider starting the crescendo on the half note%} b }} | c2\!\fermata~c8 %{consider marking this fff %} r r4 \bar "|."
  }}
