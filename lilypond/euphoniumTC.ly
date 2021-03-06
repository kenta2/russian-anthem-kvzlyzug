% DB name \markup {B \flat "Euphonium" {\teeny \raise #1 \musicglyph #"clefs.G_change"}}
% DB size 21.5
% In the original, this is called "B-flat Tenor" and is a B-flat part in treble clef.
% It probably means "Tenor Tuba", a synonym for Euphonium, and not Tenor Horn which would be in E-flat.
% Writing the euphonium part in B-flat treble clef is apparently a British brass band convention.
\include "euphonium-music.ly"
euphoniumTC=
{ \key d \major \clef treble
\euphoniumMusic }
