# Build supplement.pdf with pdfLaTeX (same engine as the paper on Overleaf).
supplement.pdf: supplement.tex llncs.cls sections/*.tex
	latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=build supplement.tex
	cp build/supplement.pdf supplement.pdf

clean:
	rm -rf build

.PHONY: clean
