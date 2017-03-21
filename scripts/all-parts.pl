#! perl -lw
for(<*.ly>){
    s/\.ly$// or die;
    next if /-(part|music)$/;
    print
}
