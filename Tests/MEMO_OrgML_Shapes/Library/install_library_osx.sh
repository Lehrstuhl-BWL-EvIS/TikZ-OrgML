#!/bin/bash

# Kopieren der Dateien
echo "Kopiere Dateien"
sudo cp /Users/fabi/Dropbox/Studium/Fernstudium/Masterthesis/Code/Tests/MEMO_OrgML_Shapes/Library/tikzlibrarymemoorgml.code.tex /usr/local/texlive/2015/texmf-dist/tex/generic/pgf/frontendlayer/tikz/libraries/tikzlibrarymemoorgml.code.tex
sudo cp /Users/fabi/Dropbox/Studium/Fernstudium/Masterthesis/Code/Tests/MEMO_OrgML_Shapes/Library/tikzlibrarymemoorgmlshapes.code.tex /usr/local/texlive/2015/texmf-dist/tex/generic/pgf/frontendlayer/tikz/libraries/tikzlibrarymemoorgmlshapes.code.tex

# Update texmf-Tree
echo "Update texmf-Tree"
sudo texhash
