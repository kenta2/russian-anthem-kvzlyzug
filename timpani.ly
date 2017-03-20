% name "Timpani"
% width 6
timpani =
{ \key c \major \clef "bass"
  \relative c {
%{Intro%} c2:32\f\fermata~c4 r4\fermata
    \repeat volta 3
    { | c4.: r8 | R2*4 | c2:\mp\cresc | c2: | g8 r g g
      | \mark\default c4 r | R2 | c4 r | R2*3 | d4:\mf d8. d16 |g,8 r r4  |\mark\default \time 4/4 c2:\f c8 r r4
      | R1 | c2: c8 r r4 | R1 | f1:\p\cresc | f2.: f8 c |\mark \default d4:\f d8 r g,4: g8 r| c4: c8 r c2:\< | d4:\! d8 r r2
      | r2 c2:\< | f4\! d c2:
    }
    \alternative
    {{ | d4: d8. d16 g,4.:\> r8\!}
     { | g2:_\markup{\italic rit.} g4\< g }} | c2:\!\fermata~c8 r r4 | \bar "|." % added a probably missing tie
  }}
