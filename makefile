all: pdf

pdf: prepare
	@echo "Creating pdf output ..."
	@pwd
	@pandoc -s _config.yml -o resume.pdf --template=eisvogel.tex --pdf-engine=xelatex

prepare:
	@echo "Preparing ..."