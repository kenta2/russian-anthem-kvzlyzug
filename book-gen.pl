#! perl -w
$git=`git describe --always`;
chomp $git;
@originalparts=qw(
altosaxA
altosaxB
baritone
baritoneBC
bassoon
clarinetA
clarinetB
clarinetC
cornetA
cornetB
cornetC
cymbalsAndBassDrum
euphonium
euphoniumTC
fhornA
fhornB
fhornC
fhornD
fluteA
fluteB
oboe
piccolo
snaredrum
stringbass
tenorsax
timpani
tromboneA
tromboneB
tromboneC
trumpetA
trumpetB
tubaA
tubaB
);

@score_order=qw(
piccolo
fluteA
fluteB
oboe
clarinetA
clarinetB
clarinetC
altosaxA
altosaxB
tenorsax
bassoon

cornetA
cornetB
cornetC
trumpetA
trumpetB
fhornA
fhornB
fhornC
fhornD
tromboneA
tromboneB
tromboneC

euphoniumTC
euphonium
baritone
baritoneBC
tubaA
tubaB
stringbass
timpani
snaredrum
cymbalsAndBassDrum
);

for$file(@originalparts){
    open FI,"$file.ly" or die;
    while(<FI>){
        chomp;
        if(/^\s*%\s*DB\s+(\S+)\s+(.*)/){
            $db{$file}->{$1}=$2;
            #print "got $file $1 $2";
        }
    }
}
print << 'EOF';
% Lilypond
% 2.16.2 is currently on Athena
\version "2.16.2"
#(set-default-paper-size "letter")
piuF = \markup {\italic "piu" \dynamic f }
invB = { \hideNotes \relative { b'1 } \unHideNotes }
invD = {\hideNotes \relative {d,1}\unHideNotes }
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
% http://lilypond.1069038.n5.nabble.com/Default-length-of-laissezvibrer-ties-td10440.html
mylv = #(define-music-function (parser location) ()
#{
 \override LaissezVibrerTie #'control-points = #(alter-lv-tie-curve '(
0 0.75
0.6 3
1.6 2
1.75 1.5))
#})
EOF
# this can only go in a very small number of places
    for(@score_order){
    print << "EOF";
\\include "$_.ly"
EOF
    }

    print << 'EOF';
\book {
\header {
tagline = ##f
}
EOF
for(@score_order){
    print << 'EOF';
    \bookpart {
EOF
print << 'EOF';
        \header {
EOF
    print << "EOF";
poet = $db{$_}->{name}
subsubtitle = "/mit/marching-band/misc/music/sheet music/russian-anthem/v2 git:$git"
EOF
    print << 'EOF';
title = "Russian Anthem"
composer = "A.V. Alexandrov"
        } % end header
EOF
    print << 'EOF';
        \paper {
  system-system-spacing = #'(( basic-distance . 0.1 ) (padding . 0.5))
  line-width=6\in
  print-page-number = ##f
  %top-margin=1\in
        } % end paper
EOF
print << 'EOF';
        \score {
EOF
    $drum=0;
    if(defined$db{$_}->{staff}){
        if($db{$_}->{staff} eq 'percussion'){
            $drum=1;
            print << 'EOF'
\new DrumStaff \with { drumStyleTable = #percussion-style
\override StaffSymbol #'line-count = #1
} {
EOF
} else { die "unknown DB staff '$db{$_}->{staff}'" }
} else {
    print '\new Staff {'
}
print "\n";
print << 'EOF';
% boxes take up less space than circles
\set Score.markFormatter = #format-mark-box-numbers
% Numbers match the original.  We do not need to worry about colliding with measure numbers because different parts have different number of measures
EOF
unless($db{$_}->{nopack}){
print << 'EOF';
\override Score.SpacingSpanner #'packed-spacing = ##t
EOF
}
        print <<'EOF';
\time 2/4
\tempo "Maestoso e cantabile" 4 = 76
\compressFullBarRests
EOF
unless($drum){
    print << 'EOF';
\transpose c' bes
EOF
}
print "\\$_\n";
print << 'EOF';
} % end staff
EOF
print << 'EOF';
            \layout {
              \context {
                \Score % definitely remove because different instruments (esp trumpet) have different numbers of bars
                \remove "Bar_number_engraver"
              }
              indent = #0
              ragged-last = ##t
EOF
if(defined$db{$_}->{size}){
    print << "EOF";
#(layout-set-staff-size $db{$_}->{size})
EOF
}
print << 'EOF';
            } % end layout
        } % end score
EOF
print << 'EOF';
    } % end bookpart
EOF
}
print << 'EOF';
    }
EOF
