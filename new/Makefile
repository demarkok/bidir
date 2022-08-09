# .SUFFIXES: .tex .pdf .dia .eps
.PHONY: contiiinuous all clean distclean
SHELL:=/bin/bash

BUILD  := _build
GEN := $(BUILD)/_gen
CACHE := $(BUILD)/ott.cache

OTTS := grammar.ott declarative.ott algorithmic.ott rules.ott
PDFS := defs.pdf main.pdf


TO_WATCH=*.tex *.bib *.ott

all: $(PDFS)

defs.pdf: $(GEN)/defs.tex $(CACHE) | $(BUILD)
	rubber --pdf $(GEN)/defs.tex

$(GEN)/defs.tex: $(OTTS) | $(GEN)
	ott -i grammar.ott -i rules.ott -i declarative.ott -i algorithmic.ott -o $(GEN)/defs.tex

$(BUILD) $(GEN): %:
	mkdir -p $@

$(CACHE): %: $(OTTS) | $(BUILD)
	ott -signal_parse_errors true -generate_aux_rules false $(addprefix -i , $^) -writesys $@

$(GEN)/included.tex: $(CACHE) | $(GEN)
	@ott -readsys $(CACHE) \
	    -o $@ \
	    -tex_wrap false \
	    -tex_show_categories true \
	    -tex_suppress_category X \
  # For rubber
	touch $@.aux

$(GEN)/main.tex : main.tex $(CACHE) $(GEN)/included.tex | $(GEN)
	ott -readsys $(CACHE) -tex_filter $< $@

main.pdf : $(GEN)/main.tex
	rubber --pdf $(GEN)/main.tex

continuous:
	fswatch -o . | xargs -n1 -I{} make

clean:
	rm -f *.aux *.lof *.log *.lot *.out *.toc *.nav *.snm *.bcf *.bbl *.blg *.xml *.tdo *.dvi
	rm -f *~ \#*\# *.spl *.fls *.fdb_latexmk *.bcf

distclean: clean
	rm $(PDFS)
