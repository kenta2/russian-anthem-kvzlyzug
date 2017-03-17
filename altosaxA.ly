% name \markup {"E" \flat "Alto Saxophone 1"}
% width 6
altosaxA =
{ \key a \major \clef treble \compressFullBarRests \time 2/4
  \relative c'' {
%{Intro%} e2\f\fermata~e4 r4\fermata
    \repeat volta 3
    { | e4 e8. e16 | e4 cis8 cis| fis4 e8. d16 | e4 a,8 a
      | b4 b8. cis16 | d4 d8.\cresc e16\! | fis4 b,8 e | e4. e8| \mark\default e4 e8. fis16 e4. r8
      | cis4 cis8. cis16 | cis4. r8 | fis4 e8. d16| e4 a,8. a16 | dis2\(|e8\) gis--[\(\< a-- b--]\)
      | \mark\default \time 4/4 a2->\ff gis8\( fis\) e fis | gis4. e8 e e--\([ fis-- gis--]\) | fis2-> e8\(dis\) cis dis|e4. cis8 cis4 r| a2\mf d\cresc
      | fis4 d8 fis a2 | \mark\default a8->\ff fis a d, gis4 fis8 gis | a4. e8 e2 | fis8-> d fis b eis,4 dis8 eis | fis4. cis8 cis2
      | \mark\default fis4 e8. d16 cis4 a8. a16 |
    }
    \alternative
    {{ | dis4 dis8.\> dis16 e4\! r}
     { | e2_\markup{\italic rit.} fis4\< e }} | e2\!\fermata~e8 r r4 | \bar "|."
  }}
