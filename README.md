# National Anthem of Russia

This is the Russian national anthem (hymn), arranged for
wind band.
This repository accomplishes several goals:

1. Reformat [the original published version](http://flag.kremlin.ru/gimn/) to a size suitable for marching band flip folders.
2. Translate the instrument names and assorted text from Russian to English.
3. Transpose from the original key of concert C to concert B-flat.
4. Allow modification by others by making available the [Lilypond](http://lilypond.org/) source files.

## Original

The original version is from <http://flag.kremlin.ru/gimn/>
. There is version that uselessly only has the title page
translated into English at
<http://eng.flag.kremlin.ru/gimn/> (and weirdly a 4x
increase in PDF file size).  There is also a version
arranged for symphony orchestra and choir on that page.

Curiously, there is a nearly identical version at
<http://www.gov.ru/main/symbols/gsrf4_2.html> . It differs
from the above in that it has been transposed into concert
B-flat.  Unfortunately, only the conductor's score is
available (not parts), and only as rasterized PNG image
files (packed into a RAR file).  However, the conductor's
score there could be used for the arrangement in this
repository, if desired.

Musically, the Russian national anthem is identical to the
Soviet Union national anthem.  New lyrics were written in
2000, but lyrics are of course irrelevant for a band
arrangement.

This arrangement incorporates many musical flourishes, e.g.,
trumpet fanfares and moving bass line.  Incidentally, there
is a simpler arrangement (1977 Soviet Union anthem) at
<http://www.hymn.ru/index-en.html> . However, it suffers
from the same problems of "everything is in Russian", and
"wrong paper size".

## Paper size

The printed paper size in the generated PDF is US Letter,
which can be adjusted by modifying the Lilypond source.  You
will need to trim the white margins.  However, you will not
need to reduce (with a photocopier, as is common when
reformatting for marching band flip folders).

## Recordings

There is an MP3 recording at [the original
site](http://flag.kremlin.ru/gimn/).
(Also see [the English version
of the original site](http://eng.flag.kremlin.ru/gimn/).)

There is also a nice recording at
<https://www.youtube.com/watch?v=U06jlgpMtQs> that
incorporates many of the musical flourishes in this
arrangement.

## Comparison with original

The start points of the first and third endings differ
between the parts (especially trumpets 1 and 2 and trombones
1 and 2, and also snare drum).  This is unorthodox in
musical typesetting.  This was done to avoid the complexity
of typesetting multiple staves where the fanfare brass parts
diverge.

The start point of the endings were moved one measure later.
This was done to save space, aiding compressing the music to
flip folder size.  Almost every part (except snare drum and
the fanfare brass parts mentioned earlier) has the first
measure of the original first ending the same.  The start
point of the original first ending has been given rehearsal
mark 4.  (Incidentally, the location of the first ending is
the same as the 1977 Soviet Union version mentioned above.)

The rehearsal marks (other than the added #4) and time
signature changes are unchanged, so it is possible to mix
and match parts with the original as well as with the
symphony orchestra arrangement, modulo transposition.

The fermatas in the beginning and the end have been taken
from the 1977 Soviet Union arrangement mentioned above.  We
also added some of the dynamic markings from that
arrangement (YET TO BE DONE).

We added a piccolo part from the symphony orchestra
arrangement.

Transposing from C to B-flat made the Tuba part extremely
low, so we added some alternative octave notes.

We added some of the expressive markings from symphony
orchestra arrangement.  For example, the slurs over tenuto
eighth notes were removed.

We cleaned up the parts, removing a few inconsistencies and
probable errors.  These changes are documented as comments
in the Lilypond sources.

In order for rehearsal marks to nestle in between high
notes, and therefore not force the systems to become spaced
wider than necessary, we applied a hack of hidden
(invisible) grace notes.

## Conductor's score

Only a half-hearted attempt was made to produce the
conductor's score.

The purpose of the conductor's score was mostly to find
errors (to be able to spot inconsistencies) as we
transcribed the music into Lilypond.  All parts have been
transposed into approximately the same octave in concert C.
Percussion is omitted.

The unorthodox typesetting technique of different start
points of the various endings causes Lilypond to get
confused at the end.

The hidden grace notes hack also causes Lilypond to get
confused about where the rehearsal marks are, resulting in
multiple clustered rehearsal marks.

For a nicer conductor's score (albeit in the wrong key and
in Russian), see the original site
<http://flag.kremlin.ru/gimn/> as mentioned above.  For a
conductor's score in B-flat (albeit as PNG images), see
<http://www.gov.ru/main/symbols/gsrf4_2.html> mentioned
above.
