% DB name \markup {"B" \flat "Cornet 1"}
% DB similar c' bes
% DB size 25.5
cornetAtop = \relative c'' { d2\f ~ d4 r8 a g'2-> fis8( e) d e}
cornetAbot = \relative c'' { a2\f ~ a4 r8 a d2-> cis4 b8 cis8}

% this results in opposite stems but two forte marks
%cornetA = { \key d \major \clef treble << { \cornetAtop } \\ { \cornetAbot } >> }

% this results in 1 forte, but doubled notes (a) and the quarter note c becomes an eighth
%cornetA = { \key d \major \clef treble << { \cornetAtop }  { \cornetAbot } >> }

% we want to be able to separate the parts if necessary

% lets just do the two parts separately
cornetA=
{ \key d \major \clef treble
  \relative c'' {
%{Intro%} d2\ff\fermata~d4 r8\fermata a\f
    \repeat volta 3
    { d4 a8. b16 | cis4 fis,8 fis | b4 a8. g16 | a4 d,8  d\mf\cresc
      | e4 e8. fis16 | g4 g8. a16 | b4 cis8 d | e4.  a,8 | \mark #1  fis'4\f e8. d16 | e4 cis8 a
      | d4 cis8. b16 | cis4 fis,8 fis | b4 a8. g16 | a4 d,8 d | d'4 cis8. b16 | a8 cis--[\< d-- e--]
      | \mark #2 \time 4/4 fis2--\ff %original had f, changed to ff for consistency
      e8(d) cis d | e4. a,8 a cis--[ d-- e--] | d2-- cis8(b)a b| cis4. fis,8 fis a[\> b cis] | d4\mf b8. cis16 d4\cresc b8. cis16
      | d4 b8 d g2 | \mark #3  g2->\ff fis8(e)d e | fis4.-- d8 d2 | e2-> %removed a weird cresc here
      d8(cis)b cis | d4.-- b8 b2
      | \mark #4 d4 cis8. b16 a4 d,8. d16 |

    }
    \alternative
    {{  d'4-> cis8. b16 a4.\>  a8\f}
     {  a2_\markup{\italic rit.} \grace \invB b4\< cis}} | d2\fff\fermata~d8 r r4 \bar "|."
  }}
