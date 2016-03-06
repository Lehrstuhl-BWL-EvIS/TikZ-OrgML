#!/bin/bash

# Kopieren der Dateien
echo "Kopiere Dateien"
sudo cp tikzlibrarymemoorgml.code.tex /usr/local/texlive/2015/texmf-dist/tex/generic/pgf/frontendlayer/tikz/libraries/tikzlibrarymemoorgml.code.tex
sudo cp tikzlibrarymemoorgmlshapes.code.tex /usr/local/texlive/2015/texmf-dist/tex/generic/pgf/frontendlayer/tikz/libraries/tikzlibrarymemoorgmlshapes.code.tex

# Update texmf-Tree
echo "Update texmf-Tree"
sudo texhash
