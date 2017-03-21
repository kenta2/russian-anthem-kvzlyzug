#!/bin/bash
set -x
set -e
set -o pipefail
partsfile=all-parts.ly
pushd lilypond
perl ../scripts/book-gen.pl > "$partsfile"
LANG=C lilypond "$partsfile"
mv all-parts.pdf ../russian-national-anthem.pdf
if [ "${keep_ly:-no}" != "yes" ]
then rm "$partsfile"
fi
