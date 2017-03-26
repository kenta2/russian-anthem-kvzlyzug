#!perl -w
die unless defined($file=shift@ARGV);
if(-e 'x-part.ly'){unlink 'x-part.ly' or die;}
die if system "perl ../scripts/book-gen.pl $file > x-part.ly";
if(-e 'x-part.out'){unlink 'x-part.out' or die;}
die if system "LANG=C lilypond x-part.ly > x-part.out 2>&1";
open FI,'x-part.out' or die;
while(<FI>){
    chomp;
    $good=1 if $_ eq 'Fitting music on 1 page...';
    $bad=1 if /cannot fit music on page/;
}
exit 0 if $good and not$bad;
exit 1;
