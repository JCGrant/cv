all:
	pdflatex --jobname=cv main.tex

clean:
	rm -rf *.out *.aux *.log *.pdf
