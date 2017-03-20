#! perl -w
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
#organizing into similar groups
@og=(
[
"piccolo",
"clarinetA",
"fluteA",
"cornetA",
"cornetB",
],[
"trumpetA",
"trumpetB",
"tromboneA",
"tromboneB",
],[
"fhornA",
"fhornC",
"fhornB",
],[
"clarinetB",
"fluteB",
"cornetC",
"altosaxA",
],[
"oboe",
"fhornD",
"clarinetC",
"altosaxB",
],[
"tenorsax",
"euphonium",
"baritoneBC",
],[
"bassoon",
"tromboneC",
"stringbass",
"tubaA",
"tubaB",
],[
"baritone",
"euphoniumTC",
"timpani",
"cymbalsAndBassDrum",
"snaredrum",
]
);
#todo, check that no parts got dropped

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
\header {
title = "Russian Anthem"
composer = "A.V. Alexandrov"
EOF
$git=`git describe --always`;
chomp $git;
print << "EOF";
subsubtitle = "/mit/marching-band/misc/music/sheet music/russian-anthem/v2 git:16a7f90"
EOF
    print << 'EOF';
tagline = ##f
}
\layout {
\context {
\Score
% definitely remove because different instruments (esp trumpet) have different numbers of bars
\remove "Bar_number_engraver"
}
indent = 1\in
short-indent = 1\in
ragged-last = ##t
}
#(set! paper-alist (cons '("mysize" . (cons (* 17 in) (* 22 in))) paper-alist))
\paper {
  #(set-paper-size "mysize")
  system-system-spacing = #'(( basic-distance . 0.1 ) (padding . 0.5))
  line-width=15.5\in
%  top-margin=1\in
}
piuF = \markup {\italic "piu" \dynamic f }
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
    for(@originalparts){
        print << "EOF";
\\include "$_.ly"
EOF
}
print << 'EOF';
\score { <<
EOF
for($g=0;$g<@og-1;++$g){ #skip the last group
    print << "EOF";
\\new StaffGroup = "StaffGroup_$g" <<
EOF
for(@{$og[$g]}){
    die unless defined($db{$_});
    #print STDERR "I $_";    for(keys%{$db{$_}}) {        print STDERR " $_";    }    print STDERR "\n";
    if($db{$_}->{short}){
        $short=$db{$_}->{short};
    } else {
        $short=$_;
    }
    if($db{$_}->{similar}){
        $transpose='\transpose '.$db{$_}->{similar};
    } else {
        $transpose='';
    }
    print << "EOF";
\\new Staff = "Staff_$_" {
\\set Staff.instrumentName=#"$_"
\\set Staff.shortInstrumentName=#"$short"
\\time 2/4
$transpose \\$_
}
EOF
}
    print ">>\n";
}
         print << 'EOF';
>>
    \layout { }
}
EOF
