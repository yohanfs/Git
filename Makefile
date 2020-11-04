SRC:= $(wildcard *.rst)
OUT1:= $(SRC:%.rst=%.html)
OUT2:= $(SRC:%.rst=%.pdf)

all: html 

html: $(OUT1)

pdf: $(OUT2)

%.html: %.rst
	rst2html.py --stylesheet=github-pandoc.css $< $@

%.pdf: %.rst
	rst2pdf $< $@
