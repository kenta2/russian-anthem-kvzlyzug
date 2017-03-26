% DB name \markup {"B" \flat "Cornet 3"}
% this is originally the cornet 2 part, but is 3 here because cornet 1 is split
% DB similar c' bes
% DB size 24.5
cornetC=
{ \key d \major \clef treble
  \relative c' {
%{Intro%} fis2\ff\fermata~fis4 r8\fermata a\f
    \repeat volta 3
    { | fis4 fis8. fis16 | fis4 fis8 fis | b4 a8. g16 | a4 d,8 d8\mf\cresc
      | e4( e8. fis16 | e4 e8. fis16 | g4) a8 b | cis4. a8 | \mark #1 d4\f a8. b16 | cis4 a8 a
      | fis4 fis8. gis16 | a4 fis8 fis | b4 a8. g16 | a4 d,8 d | gis4 gis8. gis16 | a8 a--[\< b-- cis--]
      | \mark #2 \time 4/4 d2--\ff cis8( b) a b | cis4. a8 a a--[ b-- cis--] b2-- a8( gis) fis gis | a4. fis8 fis fis[\> g a]
      | g4\mf d8. g16 g4\cresc d8. g16| g4 d8 g b2 | \mark #3 b2->\ff a | a4.-- fis8 fis2 | g-> ais4 gis8 ais | b4.-- b8 b2
      | \mark #4 b4 a8. g16 fis4 d8 d
    }
    \alternative
    {{  gis4-> gis8. gis16 a4.\>  a8\f}
     {  g2_\markup{\italic rit. } g4\< g}} | fis2\fff\fermata~fis8 r r4 \bar "|."
                                % curiously this ends in r8 r8 r8 and not r8 r4, so a different arranger or something
    % which might explain the differences between f and ff at #2
  }}
