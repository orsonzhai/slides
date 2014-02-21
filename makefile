MD = $(shell ls *.md)
HTML = $(patsubst %.md, %.html, $(MD))
TEMPLATE=slidy
# DZSlides

all: $(HTML)

%.html : %.md
#	pandoc -s --webtex -i -t slidy -o $@ $<
	pandoc -s --webtex -t $(TEMPLATE) -o $@ $<

help :
	@echo TEMPLATE=slidy,DZSlides,S5,Slideous,reveal.js
