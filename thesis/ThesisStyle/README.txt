McECEThesis thesis style       2006/02/16

P. Kabal
Electrical & Computer Engineering
McGill University
kabal@ECE.McGill.CA

This directory contains two folders.

Thesis Macros:
- McECEThesis
  Thesis style file
- datestamp.sty
  Print a date stamp at the bottom of a page
- fancyhdr.sty
  Generate fancy headers
- setspace.sty
  Used to change the line spacing
- subfigure
  Used for subfigures - not used in the example.  To create subfigure.sty,
  run "latex subfigure.ins" in the subfigure folder.
- McGillLogo.sty and McGillcrest.eps
  Generate a McGill University crest (PostScript)

Thesis Framework:
- ThesisEx.tex
  - Thesis framework
- ThesisEx.bib
  - Bibliography file
- C-Intro.tex, C-2.tex, C-3.tex, A-A.tex
  - Files included in the example

To process the example thesis file:
- Place all of the files together in a single folder
- Run "latex ThesisEx" followed by "bibtex ThesisEx" enough times to
  resolve all of the references.
