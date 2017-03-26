% DB name "Snare Drum"
% DB staff percussion
% DB nopack 1
% DB size 26

snaredrum = \drummode {
%{Intro%} gui2.:32\ff\fermata r4\fermata
    \repeat volta 3
    { | gui4.:\f r8 r2 |R1 | gui1:\mp\cresc~
      | gui2:\!~  gui8 \times 2/3 {gui16 gui gui} gui4:\<~ | \mark #1 gui8\! r r4 r2 | R1*2 | gui2:\mf~  gui8 r gui4\<
      | \mark #2 %{ \time 4/4 %} gui2:\f~gui8 r r4 | r2 gui2:\< | gui2:\!~ gui8 r r4 | r1 | gui1:\p\cresc~
      | gui2:~ gui8 \times 2/3 {gui16 gui gui} gui8 gui | \mark #3 gui8\f r r4 r2 | gui1: | gui8 r r4 r2 | gui1: \<
      | \mark #4 gui8\! r r4 r2
    }
    \alternative
  {{gui4: gui8. gui16 gui4.:\> r8\!}
   { << gui1:32_\markup{\italic rit.} { s4 s4 s4 s8\< \grace {\hideNotes gui1 gui1 \unHideNotes} s8} >>
}}
gui2:\fff\fermata~gui8 r r2 \bar "|."
  }




