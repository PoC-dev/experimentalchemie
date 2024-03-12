This is a replica of an old book in German language called Experimentalchemie.
It was published in 1914 by G. D. Baedeker Verlagshandlung and is about
chemistry.

## Copyright status as known.
In 2011, I've tried to find out what happened to G. D. Baedeker
Verlagshandlung, and was not able to find a successor possibly retaining
copyright with reasonable effort but without spending money to a specialized
lawyer. Given the fact that the book has been published 110 years ago, I assume
there is nobody left claiming copyright on it. Unless proved otherwise, I
assume the contents of said book is now in the public domain.

If you are reading this as a possible copyright holder, I ask you kindly to
[contact me](mailto:poc@pocnet.net) before taking legal action. Copyright sadly
has become a minefield for laymen. But there are so many works in archives and
libraries which can't be published online, because their copyright status is
unknown and reliably determining copyright status is prohibitively costly. So,
lots of treasure rots in archives forever, unless you know it's there and attend
in person to read it. It's a shame.

The *Makefile* I added is hereby declared to be in the Public Domain (also).

## Motivation.
The original Book I own is in very bad shape, and also set in blackletter.
Something younger people usually probaby can't read. Also, I was very deep into
Groff in the early 2000's, and decided to convert the text to runoff format as
a recreational exercise. I also was using the *e* macros extensively, so they
are the base macros for the document. For details, see
[Groff](https://en.wikipedia.org/wiki/Groff_(software)).

Yes, I typed the whole book by hand. No scan/OCR. I tried to retain the "spirit"
of the original typesetting as much as possible. Note that the text is set in
the Latin 1 charset!

I scanned the illustrations, fixed partly teared paper defects, and saved them
as EPS files.

I also scanned the "logo" of presumably G. D. Baedeker Verlagshandlung, and
converted the result to be resolution independent vector graphics by hand,
eventually resulting in an EPS file.

## Using.
To assemble/typeset the files to a PDF file, you need
- Groff,
- GhostScript
- make

installed.

Just type `make` to run the commands in the included *Makefile*. This should
produce an output file *experimentalchemie.pdf*.

## ToDo.
- Test on the original *Documenter's Workbench* troff, and remove my
  *groff*ism's to make it work. Dunno if DWB has a `.PSPIC` macro to allow
  imbedding EPS files. If not, this might be a show stopper.
- The front page is to be shown twice in the rendered document, and also
  contained twice in the source. Eliminate redundancy. How?
- Properly implement drop caps for a certain advertisement which had drop caps
  in the original book. I just failed to come up with my own generic macro to
  implement them.

----

2024-03-12, poc@pocnet.net.
