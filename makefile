all: pdf

pdf: prepare
	@echo "Creating markdown & pdf output ..."
	@pwd
	@pandoc -f html -t markdown-raw_html-native_divs-native_spans-fenced_divs-bracketed_spans-link_attributes-fenced_code_attributes https://tgeorgako.github.io/  -o resume.md
	@pandoc -s resume.md --template=eisvogel.tex -o resume.pdf  --pdf-engine=xelatex

prepare:
	@echo "Preparing ..."