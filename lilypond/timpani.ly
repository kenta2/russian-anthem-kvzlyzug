% DB name "Timpani"
% DB nopack 1
% DB size 26.0
% size 26 the whole rests become weird looking
% DB size_override 24
timpani =
{ \key c \major \clef "bass"
  \relative c {
%{Intro%} c2.:32\ff\fermata r4\fermata
    \repeat volta 3
    { | c4.:\f r8 r2 | R1 |r2 c2:\mp\cresc | c2:  g8 r g g
      | \mark #1 c4\f r r2| c4 r  r2 | R1 | d4:\mf d8. d16 g,8 r r4
      |\mark #2 %{ \time 4/4 %} c2:\f c8 r r4
      | R1 | c2: c8 r r4 | R1 | f1:\p\cresc | f2.: f8 c |\mark #3 d4:\f d8 r g,4: g8 r| c4: c8 r c2:\< | d4:\! d8 r r2
      | r2 c2:\< |\mark#4 f4\! d c2:
    }
    \alternative
    {{ | d4: d8. d16 g,4.:\> r8\!}
     { | g2:_\markup{\italic rit.} g4\< g }} | c2:\fff\fermata~c8 r r4 | \bar "|." % added a probably missing tie
  }}
