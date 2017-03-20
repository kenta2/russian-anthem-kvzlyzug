#!/bin/bash
set -x
set -e
set -o pipefail
parts=$(perl -lwe 'for(<*.ly>){s/\.ly$// or die;next if /-(part|music)$/;print}')
for file in $parts
do perl gen-lilypond.pl "$file" > "$file"-part.ly
    LANG=C lilypond "$file"-part.ly
done
