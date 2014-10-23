BASE = subfigure
EXT  = sty
########################################################################
## LaTeX2e Makefile
##
## For configuration, update the following defines:
##
CONTRIB   = /usr/local/lib/texmf/tex/contrib
##
DVIPS	  = dvips
GZIP      = gzip
LATEX	  = latex2e
MAKEINDEX = makeindex
##
########################################################################

all:		ps clean


$(EXT):		$(BASE).$(EXT)
dvi:		$(BASE).dvi
ps:		$(BASE).ps
idx:		$(BASE).ind $(BASE).gls
		$(LATEX) $(BASE).dtx


install:	; cp $(BASE).$(EXT) $(CONTRIB)
uninstall:	; rm $(CONTRIB)/$(BASE).$(EXT)
clean:		
		-rm -f *.dvi *.log *.aux *.lof *.lot *.toc 
		-rm -f *.idx *.ind *.glo *.gls *~
veryclean:	clean
		-rm -f *.sty *.cls *.ps *.gz


distribution:	clean $(BASE).dvi
		mkdir $(BASE)
		cp -p Makefile.dist $(BASE)/Makefile
		cp -p COPYING $(BASE).dtx $(BASE).ins $(BASE)
		tar -cvf $(BASE).tar ./$(BASE) 
		rm -rf $(BASE)
		$(GZIP) -9 $(BASE).tar


$(BASE).aux:	$(BASE).dtx $(BASE).$(EXT)
		$(LATEX) $(BASE).dtx

$(BASE).$(EXT):	$(BASE).dtx $(BASE).ins 
		$(LATEX) $(BASE).ins

$(BASE).dvi:	$(BASE).dtx $(BASE).$(EXT) $(BASE).aux
		$(LATEX) $(BASE).dtx

$(BASE).idx:	$(BASE).dtx $(BASE).$(EXT)
		$(LATEX) $(BASE).dtx

$(BASE).ind:	$(BASE).idx
		$(MAKEINDEX) -s gind.ist $(BASE).idx

$(BASE).glo:	$(BASE).dtx $(BASE).$(EXT)
		$(LATEX) $(BASE).dtx

$(BASE).gls:	$(BASE).glo
		$(MAKEINDEX) -s gglo.ist -o $(BASE).gls $(BASE).glo

$(BASE).ps:	$(BASE).dvi
		$(DVIPS) -o $(BASE).ps $(BASE).dvi
