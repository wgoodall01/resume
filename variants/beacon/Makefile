SHELL=bash

# Build the resume
%.pdf: $(wildcard *.tex)
	tectonic $*.tex

# View the resume in the default PDF viewer.
.PHONY: view
view: resume.pdf
	xdg-open resume.pdf &>/dev/null

# Scrape text from the PDF
scrape.txt: resume.pdf
	pdftotext resume.pdf scrape.txt

# Check that text can be accurately scraped from the PDF
.PHONY: test
test: scrape.txt
	count="$$(wc -w <scrape.txt)" && echo "count: $$count" && [[ $$count -gt 500 ]]

# Make sure all the right dependencies are installed
.PHONY: preflight
preflight:
	tectonic --version
	pdftotext -v # install with 'apt install poppler-utils'

.PHONY: clean
clean:
	rm -rf resume.pdf
