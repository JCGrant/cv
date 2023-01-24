all:
	pdflatex --jobname=cv main.tex

watch:
	ls jcgcv.cls main.tex | entr /bin/sh -c "make && pkill -HUP mupdf"

clean:
	rm -rf *.out *.aux *.log *.pdf
