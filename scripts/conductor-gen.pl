#! perl -w

#half hearted attempt at a conductor's score, lacking percussion.
#mostly for checking for consistency between the parts.  everything is transposed to concert C.
# things obviously go wrong with the trumpet / trombone parts which start their repeat alternate endings in different spots.

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
title = "Russia/USSR National Anthem"
composer = "A.V. Alexandrov"
EOF
$git=`git describe --always`;
chomp $git;
print << "EOF";
subsubtitle = "http://github.com/kenta2/russian-anthem  git:$git"
EOF
    print << 'EOF';
tagline = ##f
}
\include "include/defs.ly"
\layout {
\context {
\Score
% definitely remove because different instruments (esp trumpet) have different numbers of bars
\remove "Bar_number_engraver"
}
indent = 1\in
short-indent = 1\in
ragged-last = ##t
  \context {
    \Voice
        \override Script #'stencil = #bold-tenuto-script-stencil
  }
}

% This overrides the default paper size set in defs.ly.
% Same aspect ratio US Letter.
#(set! paper-alist (cons '("csize" . (cons (* ( / 24 11) 8.5 in) (* 24 in))) paper-alist))
    #(set-default-paper-size "csize")
\paper {
  system-system-spacing = #'(( basic-distance . 0.1 ) (padding . 0.5))
  line-width=15.5\in
%  top-margin=1\in
}

EOF
    for(@originalparts){
        print << "EOF";
\\include "$_.ly"
EOF
}
print << 'EOF';
\score {
 <<
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
    #$transpose=q(\transpose c' bes);
    #$transpose='';
    print << "EOF";
\\new Staff = "Staff_$_" {
\\set Staff.instrumentName=#"$_"
\\set Staff.shortInstrumentName=#"$short"
\\set Score.markFormatter = #format-mark-letters
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
