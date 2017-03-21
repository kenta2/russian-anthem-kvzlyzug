#! /bin/bash
set -x
set -e
pushd ../lilypond
perl ../scripts/all-parts.pl | while read -r file
do perl ../scripts/book-gen.pl "$file" > x-part.ly
LANG=C lilypond x-part.ly
done
rm -f x-part.ly x-part.pdf
