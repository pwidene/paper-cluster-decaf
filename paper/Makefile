PLOT := $(patsubst %.gp,%.tex,$(wildcard data/*.gp))
PAPER=p

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

plot: $(PLOT)

data/%.tex: data/%.gp
	OUT=$@ gnuplot $<

.PHONY: clean

clean:
	rm -f ${PAPER}.pdf
	rm -f ${PAPER}.dvi
	rm -f ${PAPER}.aux
	rm -f ${PAPER}.bbl
	rm -f ${PAPER}.log
	rm -f ${PAPER}.blg
	rm -f data/*.tex
	rm -f data/*.eps
	rm -f data/*.pdf
