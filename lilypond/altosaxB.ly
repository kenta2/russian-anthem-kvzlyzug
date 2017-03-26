% DB name \markup {"E" \flat "Alto Saxophone 2"}
% DB similar c' ees
% DB size 26
altosaxB =
{ \key a \major \clef treble
  \relative c'' {
%{Intro%} cis2\ff\fermata~cis4 r4\fermata
    \repeat volta 3
    { cis4\f cis8. cis16| cis4 cis8 cis | a4 a8. a16| a4 a8 a8\mf\cresc
      | fis4( fis8. b16 | b4 b8. cis16 | d4) gis,8-- a-- | b4 d | \mark #1 cis\f cis | b4. r8
      | a4 gis8. fis16| gis4. r8 | a4 a8. a16| a4 a8 a| b2~| b8 e8--[\< fis-- gis--]
      | \mark #2 \time 4/4 e2.--\ff %added ff
         e4 | e4. (b8) b gis--[ a-- b-- ]  | cis2.-- cis4| cis4. (gis8) gis4 r| fis2\mf a\cresc
      | d4 a8 d fis2 | \mark #3 fis8->\ff fis a, d e2| e4.-- cis8 cis2 | d8-> d fis b, cis2| cis4.-- a8 a2
      | \mark #4 d4 e8. d16 cis4 a8 a
    }
    \alternative
    {{ | b4-> b8. b16 b4.\> r8\!}
     { | d2_\markup{\italic rit.} d4\< d }} | cis2\fff\fermata~cis8 r r4 | \bar "|."
  }}
