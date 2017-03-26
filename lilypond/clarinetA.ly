% DB name \markup {"B" \flat "Clarinet 1"}
% DB similar c' bes,
% DB size 21.2
clarinetA =
{ \key d \major \clef treble
  \relative c''' {
%{Intro%} d2.\ff\fermata r8\fermata a\f
    \repeat volta 3
    { d4 a8. b16  cis4 fis,8 fis | b4 a8. g16  a4 d,8  d\mf\cresc
      | e4( e8. fis16  g4 g8. a16 | b4) cis8-- d--  e4. \afterGrace a,8 \invB | \mark #1 \grace \invB fis'4\f e8. d16  e4 cis8 a
      | d4 cis8. b16  cis4 fis,8 fis | b4 a8. g16  a4 d,8 d | d'4 cis8. b16  a4\<~a8\! \afterGrace r8 \invB
      | \mark #2 %{ \time 4/4 %} \grace \invB fis'2--\ff e8(d) cis d | e4. a,8 a4 r | d2-- cis8(b)a b| cis4. fis,8 fis a[\>
                                %symphony orchestra has tenuto here but we omit because they seem silly
                                                                                                          b cis] | d4\mf b8. cis16 d4\cresc b8. cis16
      | d4 b8 d \afterGrace g2 {\hideNotes d,1} | \mark #3 \grace { d1 \unHideNotes }  g'2->\ff fis8(e)d e | fis4.-- d8 d2 | e2-> d8(cis)b cis | d4.-- b8 \afterGrace b2 {\hideNotes d,1}
      | \mark #4 \grace { \hideNotes d1 \unHideNotes } d'4 cis8. b16 a4 d,8 d |

    }
    \alternative
    {{  d'4-> cis8. b16 a4.\>  a8\f}
     {  a2_\markup{\italic rit.} \grace \invB b4\< cis}} | d2\fff\fermata~d8 r r4 \bar "|."
  }}
