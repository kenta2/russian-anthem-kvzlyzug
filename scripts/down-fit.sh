#!/bin/bash
#set -x
set -e
file=$1;
# perl ../scripts/setsize $file 26
while ! perl ../scripts/fit-test.pl $file
do perl ../scripts/setsize.pl $file
done
rm x-part.ly
rm x-part.out
rm x-part.pdf
