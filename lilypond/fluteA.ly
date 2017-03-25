% DB name "Flute 1"
% DB similar c' c
% DB size 26
fluteA =
{ \key c \major \clef treble
  \relative c''' {
%{Intro%} c2\f\fermata~c4 r8\fermata g
    \repeat volta 3
    { c4 g8. a16 | b4 e,8 e | a4  g8. f16 | g4 c,8 c
%sadly the absolute command is 2.18 and newer
      | d4 d8. e16 | f4 f8.\cresc g16\! | a4 b8 c d4. g,8 | \mark #1 \grace {\relative {\hideNotes b'1 \unHideNotes}} e'4 d8. c16 d4 b8 g
      | c4 b8. a16 | b4 e,8 e | a4 g8. f16 | g4 c,8. c16 | c'4 b8. a16 | g4.\< %{replaced tied eighth with dot %} r8
      | \mark #2 \time 4/4 e'2--\ff d8(c) b c | d4. (g,8) g4 r | c2-- b8(a)g a |  b4. (e,8) e g[\> a b]
      | c4\! a8. b16 c4\cresc a8. b16 |c4 a8 c \afterGrace f2 {\hideNotes \relative {b'1}} | \mark #3 \grace {\relative {b'1} \unHideNotes} f2->\ff e8(d) c d | e4.-- c8 c2
      | d-> c8 (b) a b| c4.-- a8 a2 | \mark #4 c4 b8. a16 g4 c,8. c16 |
    }
    \alternative
    {{  c'4-> b8. a16 g4.\> %{replaced tied eighth with dot %} %{ consider adding an eighth rest %} g8\f}
     { g2_\markup{\italic rit.} a4\< %{consider starting the crescendo on the half note%} b }} | c2\!\fermata~c8 %{consider marking this fff %} r r4 \bar "|."
  }}
