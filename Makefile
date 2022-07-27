.SUFFIXES: .tex .pdf .dia .eps
.PHONY: default all clean distclean view FORCE
SHELL:=/bin/bash

OUTPUTS=main.pdf
SOURCES=main.tex biblio.bib deeplist.tex

TO_WATCH=*.tex *.bib

all: $(OUTPUTS)

main.pdf: $(SOURCES)
	rubber --pdf main.tex
	#make clean

# continuous:
# 	while inotifywait -e close_write ${TO_WATCH}; do rubber --pdf main.tex;  done

continuous:
	fswatch -o . | xargs -n1 -I{} rubber --pdf main.tex

clean:
	rm -f *.aux *.lof *.log *.lot *.out *.toc *.nav *.snm *.bcf *.bbl *.blg *.xml *.tdo *.dvi
	rm -f *~ \#*\# *.spl *.fls *.fdb_latexmk *.bcf

distclean: clean
	rm $(OUTPUTS)
