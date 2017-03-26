% DB name \markup {"B" \flat "Tenor Saxophone"}
% DB similar c' bes
% DB size 26
tenorsax =
{ \key d \major \clef treble
  \relative c'' {
%{Intro%} d2\ff\fermata~d4 r4\fermata
    \repeat volta 3
    { d4\f a8. b16 | cis8 fis,[ a cis] | b4 b8. b16 | a8 d,[ fis a\mf\cresc]
           %not entirely where where the mf cresc should start
      | g4 g8. b16| b4 b8. e16 | e4 a,8 b | cis4 cis | \mark #1 d8\f fis,[ a b] | cis4. r8
      | b d,[fis gis] | a4. r8 | b b[d, g] | a4. r8 | d2(|cis8)cis--[\< d-- e--]
      | \mark #2 \time 4/4 fis2--\ff e8(d) cis d | e4. cis8 cis cis--[ d-- e--] | d2-- cis8(b)a b| cis4. a8 a r r4
      | g2\mf b\cresc | d4 b8 d g2 | \mark #3 \grace \invB g8->(\ff b,) d g fis( e) d e | fis4.-- d8 d2 | e8->( g,) b e d(cis)b cis | d4.-- b8 b2
      | \mark #4 d4 d8. d16 d4 a

    }
    \alternative
    % decresc and rest modified
    {{  | d4-> d8. d16 cis4.\>  r8\!}
     {  | cis2_\markup{\italic rit.} d4\< cis}} | d2\fff\fermata~d8 r r4 \bar "|."
  }}
