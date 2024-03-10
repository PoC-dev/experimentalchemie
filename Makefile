# Makefile für die me->PDF Konvertierung

export TROFF	:= /usr/bin/groff -ww -me -ma4 -mde -etp
export GS	:= /usr/bin/ps2pdf

# Defaultliste leeren und mit unseren ersetzen
.SUFFIXES:
.SUFFIXES: .me .pdf .ps

SRCFILES:= $(wildcard *.me)
PDFS	:= $(subst .me,.pdf,$(SRCFILES))
PSFS	:= $(subst .me,.ps,$(SRCFILES))

# Pseudotargets, keine reellen Files
.PHONY: all pdfs psfs clean

all: pdfs
pdfs: $(PDFS)
psfs: $(PSFS)

# $< = sourcefile, $@ = zielfile
.me.ps: $<
	$(TROFF) $< > $@

.ps.pdf: $<
	$(GS) $< $@

clean:
	rm -f $(PSFS) $(PDFS)
