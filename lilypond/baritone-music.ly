baritoneMusic=
  \relative c' {
%{Intro%} fis2\ff\fermata~fis4 r8\fermata a\f
    \repeat volta 3
    { | d4 a8. b16  cis8 fis,[a cis] | b4 a8. g16  a8 d,[ fis a\mf\cresc]
      | e4( e8. fis16  g4 g8. a16 | b4) a8-- b--  cis4.  a8 | \mark #1 d\f fis,[ a b]  cis4 cis8 a
      | b d,[ fis gis]  a4 fis8 fis | b b[ d, g]  a4 d8 d | d4 cis8. b16   a8 a--[\< b-- cis--]
      | \mark #2 %{ \time 4/4 %} d2--\ff cis8( b) a b | cis4. a8 a  a--[ b-- cis--] | b2-- a8( gis) fis gis | a4. fis8 fis  fis[\> g a]
      | g4.\mf d8 b'4.\cresc a8 | g4. d8 b'8 a g fis |  \mark #3 \grace \invB  d'8->\ff( b) d g   cis,4 b8 cis | d4.-- d8 d2 | e8->( g,) b e d( cis) b cis
      | d4.-- b8 b4 a | \mark #4 g a8. g16 fis4 a |
    }
    \alternative
    {{  d4-> cis8. b16 a4.\>  a8\f}
     {  g2_\markup{\italic rit.} \grace \invB g4\< g}} | fis2\fff\fermata~fis8 r r4 \bar "|."
  }
