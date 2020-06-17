#!/bin/bash

# Usage: number_pdf [number of pages] [input pdf] [output pdf]

# write latex document
mkdir -p build
cd build
LATEX='auto_numbers'
echo '\documentclass[12pt,a4paper]{article}' > $LATEX
echo '\usepackage{multido}' >> $LATEX
echo '\usepackage[hmargin=.8cm,vmargin=1.5cm,nohead,nofoot]{geometry}' >> $LATEX
echo '\begin{document}' >> $LATEX
echo "\multido{}{$1}{\vphantom{x}\newpage}" >> $LATEX
echo '\end{document}' >> $LATEX

pdflatex $LATEX  # generate empty pages with page numbers on them
cd ..
pdftk $2 multistamp build/$LATEX.pdf output $3 # stamp the page number onto every page

# clean up latex stuff
rm -r build