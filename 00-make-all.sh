#!/bin/bash
set -x
set -e
set -o pipefail
parts=$(perl all-parts.pl)
for file in $parts
do perl gen-lilypond.pl "$file" > "$file"-part.ly
    LANG=C lilypond "$file"-part.ly
done
