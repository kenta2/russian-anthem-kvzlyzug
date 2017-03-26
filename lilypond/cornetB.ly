% DB name \markup {"B" \flat "Cornet 2"}

% DB size 25.2

% this is the lower part of the cornet 1 part
% DB similar c' bes
cornetB=
{ \key d \major \clef treble
  \relative c'' {
%{Intro%} a2\ff\fermata~a4 r8\fermata a\f
    \repeat volta 3
    { | a4 a8. b16  a4 fis8 fis | b4 a8. g16  a4 d,8  d\mf\cresc
      | e4( e8. fis16  g4 g8. a16 | b4) cis8-- d--  e4.  a,8 | \mark #1 a4\f a8. b16  a4 cis8 a
      | b4 cis8. b16  cis4 fis,8 fis | b4 a8. g16  a4 d,8 d | d'4 cis8. b16  a8 cis--[\< d-- e--]
      | \mark #2 %{ \time 4/4 %} fis2--\ff %changed from f in original
      e8(d) cis d | e4. a,8 a cis--[ d-- e--] | d2-- cis8(b)a b| cis4. fis,8 fis a[\> b cis]
      | b4\mf g8. a16 b4\cresc g8. a16 | b4 g8 b d2 | \mark #3  d2->\ff cis4 b8 cis | d4.-- a8 a2 | b2-> %removed a weird cresc here
      d8(cis)b cis | d4.-- b8 b2
      | \mark #4 d4 cis8. b16 a4 d,8 d |

    }
    \alternative
    {{  d'4-> cis8. b16 a4.\>  a8\f}
     {  a2_\markup{\italic rit.} b4\< a}} | a2\fff\fermata~a8 r r4 \bar "|."
  }}
