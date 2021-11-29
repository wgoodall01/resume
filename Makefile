SHELL=bash

# Build the resume
resume.pdf: $(wildcard *.tex)
	tectonic resume.tex

# View the resume in the default PDF viewer.
.PHONY: view
view: resume.pdf
	xdg-open resume.pdf &>/dev/null

# Make sure all the right dependencies are installed
.PHONY: preflight
preflight:
	tectonic --version

.PHONY: clean
clean:
	rm -rf resume.pdf
