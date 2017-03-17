% name "Flute 1"
% width 6
fluteA =
{ \key c \major \clef treble \compressFullBarRests \time 2/4
  \relative c''' {
%{Intro%} c2\f\fermata~c4 r8\fermata g\f
    \repeat volta 3
    { c4 g8. a16 | b4 e,8 e | a4  g8. f16 | g4 c,8 c
      | d4 d8. e16 | f4 f8.\cresc g16\! | a4 b8 c d4. g,8 | \mark \default e'4 d8. c16 d4 b8 g
      | c4 b8. a16 | b4 e,8 e | a4 g8. f16 | g4 c,8. c16 | c'4 b8. a16 | g4.\< %{replaced tied eighth with dot %} r8
      | \mark\default \time 4/4 e'2->\ff d8\(c\) b c | d4. g,8 g4 r | c2-> b8\(a\)g a |  b4. e,8 e g[\> a b]
      | c4\! a8. b16 c4\cresc a8. b16 |c4 a8 c f2 | \mark\default f->\ff e8\(d\) c d | e4. c8 c2
      | d-> c8 b a b| c4. a8 a2 |
    }
    \alternative %{consider modifying the alternates to start 1 measure later to eliminate duplication%}
    {{ c4 b8. a16 g4 c,8. c16 | c'4 b8. a16 g4.\> %{replaced tied eighth with dot %} %{ consider adding an eighth rest %} g8\f}
     {c4 b8. a16 g4 c,8. c16 }} g'2^\markup{\italic rit.} a4\< %{consider starting the crescendo on the half note%} b c2\!\fermata~c8 %{consider marking this fff %} r r4 \bar "|."
  }}
