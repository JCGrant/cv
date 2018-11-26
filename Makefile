all:
	pdflatex --jobname=cv main.tex

watch:
	fswatch -o jcgcv.cls main.tex | xargs -n1 -I{} make

clean:
	rm -rf *.out *.aux *.log *.pdf
