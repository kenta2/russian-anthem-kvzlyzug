#! perl -w
die unless defined($part=shift@ARGV);
$git=`git describe --always`;
chomp $git;
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
subsubtitle = "/mit/marching-band/misc/music/sheet music/russian-anthem/v2 git:$git"
poet = $db{name}
tagline = ##f
}
\\layout {
\\context {
\\Score
% definitely remove because different instruments (esp trumpet) have different numbers of bars
\\remove "Bar_number_engraver"
}
indent = #0
ragged-last = ##t
}
\\paper {
  system-system-spacing = #'(( basic-distance . 0.1 ) (padding . 0.5))
  line-width=$db{width}\\in
  top-margin=1\\in
}
piuF = \\markup {\\italic "piu" \\dynamic f }
EOF
    print << 'EOF';
#(define ((alter-lv-tie-curve offsets) grob)
   (let ((coords (ly:semi-tie::calc-control-points grob)))
     (define (add-offsets cs os)
      (if (null? cs)
       '()
        (cons
         (cons (+ (caar cs) (car os))
            (+ (cdar cs) (cadr os)))
         (add-offsets (cdr cs) (cddr os)))))
 (add-offsets coords offsets)))
shapeLVTie = #(define-music-function (parser location offsets) (list?)
#{
 \once \override LaissezVibrerTie #'control-points = #(alter-lv-tie-curve offsets)
#})

% works for the remainder of the voice
mylv = #(define-music-function (parser location) ()
#{
 \override LaissezVibrerTie #'control-points = #(alter-lv-tie-curve '(
0 0.75
0.6 3
1.6 2
1.75 1.5))
#})
EOF
    print <<"EOF";
\\include "$part.ly"
\\score {
EOF
    if(defined$db{staff} and $db{staff} eq 'percussion'){
        print << 'EOF'
\new DrumStaff \with { drumStyleTable = #percussion-style
\override StaffSymbol #'line-count = #1
} {
EOF
} else {
    print '\new Staff {'
}
print "\n";
print << 'EOF';
% boxes take up less space than circles
\set Score.markFormatter = #format-mark-box-numbers
% Numbers match the original.  We do not need to worry about colliding with measure numbers because different parts have different number of measures
%\override Score.SpacingSpanner #'packed-spacing = ##t
\time 2/4
\tempo "Maestoso e cantabile" 4 = 76
\compressFullBarRests
EOF
print "\\$part\n";
print << 'EOF';
}
\layout {}
%\midi {} %use timidity to play the midi file
}
EOF
