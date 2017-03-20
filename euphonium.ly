% DB name \markup {"Euphonium" {\raise #1 \musicglyph #"clefs.F_change"}}
% DB width 6.9
% In the original, this is called "B-flat Tenor" and is a B-flat part in treble clef.
% It probably means "Tenor Tuba", a synonym for Euphonium, and not Tenor Horn which would be in E-flat.
% Writing the euphonium part in B-flat treble clef is apparently a British brass band convention.
% We will transpose it down to bass clef.
\include "euphonium-music.ly"
euphonium=
{ \key c \major \clef "bass"
\transpose c'' bes \euphoniumMusic }
