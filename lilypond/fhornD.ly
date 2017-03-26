% DB name \markup {"F Horn 4"}
% DB similar c f
% DB size 26
fhornD =
{ \key g \major \clef treble
  \relative c' {
%{Intro%} d2\ff\fermata~d4 r4\fermata
    \repeat volta 3
    { |d\f d d d | e e d d | c\mf\cresc e e e8. d16
      |e4 d8 d | d4 d | \mark #1 d\f d d d | b b  d d | e e
      | d d | cis cis | d8 r d--\< d-- | \mark #2 \time 4/4 d2.--\ff d4 | fis2~fis8 d--[ e-- fis--]
      | b,2.-- b4 | d2. r4 | e8.\mf e16 e4~e8.\cresc e16 e4~| e8 e16 e e8 e e \times 2/3 {e16 e e} e8 e
      | \mark #3 e2->\ff d | d4.-- d8 d2 | e2-> dis4 cis8 dis | e4.-- e8 e2
      | \mark #4 e4 d8. c16 d4 d4
    }
    \alternative
    {{  | cis4-> cis d4.\> r8\!}
     {  | d2_\markup{\italic rit.} e4\< d}} | d2\fff\fermata~d8 r r4 \bar "|."
  }}
