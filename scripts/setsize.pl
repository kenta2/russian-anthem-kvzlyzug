#!perl -w
die unless defined($file=shift@ARGV);
$file.='.ly';
$new=$ARGV[0];
open FI,$file or die;
open FO,">temp-setsize" or die;
while(<FI>){
    if(/^\s*\%\s*DB\s+size\s+(\S+)\s*$/){
        $found=1;
        $old=$1;
        unless(defined$new){
            $new=$old-0.1;
        }
        printf FO "%% DB size %.1f\n",$new;
        print STDERR "$file $new\n";
    }else {
        print FO;
    }
}
close FO;
die $file unless$found;
rename 'temp-setsize', $file or die;
