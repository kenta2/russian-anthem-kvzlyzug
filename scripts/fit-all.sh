#!/bin/bash
#set -x
# takes about 20 minutes
set -e
# perl ../scripts/setsize $file 26
perl ../scripts/all-parts.pl | while read -r file
do perl ../scripts/setsize.pl $file 26
done
# timpani is special because it has whole rests, which fill up the whole staff space at 26
perl ../scripts/setsize.pl timpani 24
perl ../scripts/all-parts.pl | while read -r file
do bash ../scripts/down-fit.sh $file
done
