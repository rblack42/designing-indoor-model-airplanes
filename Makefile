.PHONY: book
book:
	pdflatex main.tex
	bibtex main
	texindy --language english main.idx
	pdflatex main
	pdflatex main
	pdflatex main

