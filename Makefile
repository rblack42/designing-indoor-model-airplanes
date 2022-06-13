.PHONY: book
book:
	pdflatex --output-directory=build main
	biber --output-directory build main
	texindy --language english build/main.idx
	pdflatex --output-directory=build main
	pdflatex --output-directory=build main

.PHONY: clean
clean:
	rm -rf build

