% name \markup {"Baritone (Euphonium 2)" {\raise #1 \musicglyph #"clefs.F_change"}}
% width 6.9
\include "baritone-music.ly"
baritoneBC=
{ \key c \major \clef "bass" \compressFullBarRests \time 2/4
\transpose c'' bes \baritoneMusic }
