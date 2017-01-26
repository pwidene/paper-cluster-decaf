PLOT := $(patsubst %.gp,%.tex,$(wildcard data/*.gp))
FIGS := $(patsubst %.svg,%.pdf,$(wildcard fig/*.svg))
PAPER=p
FINAL_NAME=smartblock

all: clean $(PLOT) ${PAPER}.tex
	rm -f ${PAPER}.pdf
	rm -f ${PAPER}.dvi
	rm -f ${PAPER}.aux
	rm -f ${PAPER}.bbl
	rm -f ${PAPER}.log
	rm -f ${PAPER}.blg
	pdflatex ${PAPER}.tex
	pdflatex ${PAPER}.tex
	bibtex ${PAPER}
	pdflatex ${PAPER}.tex
	pdflatex ${PAPER}.tex
	pdflatex ${PAPER}.tex
	cp ${PAPER}.pdf ${FINAL_NAME}.pdf

plot: $(PLOT)

img: $(FIGS)

fig/%.pdf: fig/%.svg
	inkscape --without-gui -f $^ -D -A $@

data/%.tex: data/%.gp
	OUT=$@ gnuplot $<

.PHONY: clean

clean:
	rm -f ${PAPER}.pdf
	rm -f ${FINAL_NAME}.pdf
	rm -f ${PAPER}.dvi
	rm -f ${PAPER}.aux
	rm -f ${PAPER}.bbl
	rm -f ${PAPER}.log
	rm -f ${PAPER}.blg
	rm -f data/*.tex
	rm -f data/*.eps
	rm -f data/*.pdf
