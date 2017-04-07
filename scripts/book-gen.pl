#! perl -w
$git=`git describe --always`;
chomp $git;

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
barisax
bassoon

trumpetA
trumpetB
cornetA
cornetB
cornetC
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

if(@ARGV){
    @parts_to_do=@ARGV;
} else {
    @parts_to_do=@score_order;
    $myhash{$_}=1 for(@score_order);
    for(<*.ly>){
        s/\.ly$// or die;
        next if /-(part|music)$/;
        next if $_ eq 'all-parts';
        print STDERR "WARNING: $_ not present in score_order" unless $myhash{$_};
    }
}

for$file(@score_order){
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
\include "include/defs.ly"
\layout {
  \context {
    \Voice
        \override Script #'stencil = #bold-tenuto-script-stencil
  }
} % end global layout
EOF
# this can only go in a very small number of places
    for(@parts_to_do){
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
for(@parts_to_do){
    print << 'EOF';
    \bookpart {
EOF
print << 'EOF';
        \header {
EOF
    print << "EOF";
poet = $db{$_}->{name}
subsubtitle = "http://github.com/kenta2/russian-anthem  git:$git"
EOF
    print << 'EOF';
title = "Russia/USSR National Anthem"
composer = "A.V. Alexandrov"
        } % end header
EOF
    print << 'EOF';
\include "include/paper.ly"
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
\set Score.markFormatter = #format-mark-box-letters
% Numbers match the original.  We do not need to worry about colliding with measure numbers because different parts have different number of measures
EOF
unless($db{$_}->{nopack}){
print << 'EOF';
\override Score.SpacingSpanner #'packed-spacing = ##t
EOF
}
        print <<'EOF';
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
\include "include/layout.ly"
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
    } %end book
EOF
