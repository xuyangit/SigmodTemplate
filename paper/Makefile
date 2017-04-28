FILE = paper
all:    $(FILE).tex
	latex $(FILE)
	latex $(FILE)
	dvips -Pcmz -t letter -o $(FILE).ps $(FILE).dvi
	$(RM) $(FILE).log

clean:
	rm -f $(FILE).ps $(FILE).pdf $(FILE).log $(FILE).dvi $(FILE).bbl $(FILE).aux
	rm -rf *.log *~ *.pdf

pdf1: 
	bibtex $(FILE)
	pdflatex -shell-escape $(FILE)
	pdflatex -shell-escape $(FILE)

pdf:
	ps2pdf14 -dEmbedAllFonts=true $(FILE).ps 358.pdf

bib:    $(FILE).tex
	latex $(FILE)
	bibtex $(FILE)
	latex $(FILE)
	latex $(FILE)
	dvips -Pcmz -t letter -o $(FILE).ps $(FILE).dvi

ps: $(FILE).tex
	latex $(FILE)
	dvips -Pcmz -t letter -o $(FILE).ps $(FILE).dvi
