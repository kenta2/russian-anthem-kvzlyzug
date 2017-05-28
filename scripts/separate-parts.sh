#! /bin/bash
set -x
set -e
pushd ../lilypond
mkdir ../russian-national-anthem
rm -f ../russian-national-anthem.zip
perl ../scripts/all-parts.pl | while read -r file
do perl ../scripts/book-gen.pl "$file" > $file-part.ly
LANG=C lilypond $file-part.ly
mv $file-part.pdf ../russian-national-anthem/$file.pdf
rm $file-part.ly
done
cd ..
zip -9r russian-national-anthem russian-national-anthem
rm -fr russian-national-anthem
