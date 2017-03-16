#! perl -w
die unless defined($part=shift@ARGV);
open FI,"$part.ly" or die;
while(<FI>){
    if(/^\s*%\s*(\S+)\s*(.*)/){
	$db{$1}=$2;
    } else {
	last;
    }
}
close FI;
die unless defined $db{name};
$db{width}="6" unless defined$db{width};
print << "EOF";
% Lilypond
% 2.16.2 is currently on Athena
\\version "2.16.2"
\\header {
title = "Russian Anthem"
composer = "A.V. Alexandrov"
subsubtitle = "/mit/marching-band/misc/music/sheet music/russian-anthem/v2"
poet = $db{name}
tagline = ##f
}
\\layout {
\\context {
\\Score
%\\remove "Bar_number_engraver"
}
indent = #0
ragged-last = ##t
}
\\paper {
  system-system-spacing = #'(( basic-distance . 0.1 ) (padding . 0.5))
  line-width=$db{width}\\in
  top-margin=1\\in
}
\\include "$part.ly"
\\score {{
    \\tempo "Maestoso e cantabile" 4 = 76
\\set Score.markFormatter = #format-mark-box-alphabet
% boxes take up less space than circles
\\override Score.SpacingSpanner #'packed-spacing = ##t
\\$part
}
\\layout {}
%\\midi {} %use timidity to play the midi file
}
EOF
