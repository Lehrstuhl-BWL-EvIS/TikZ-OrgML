#!/bin/bash

# Erzeugen des Symlinks
echo "Erzeuge Symlink"
sudo ln -s /Users/fabi/Dropbox/Studium/Fernstudium/Masterthesis/Code/Tests/MEMO_OrgML_Shapes/Library/tikzlibrarymemoorgml.code.tex /usr/local/texlive/2015/texmf-dist/tex/generic/pgf/frontendlayer/tikz/libraries/tikzlibrarymemoorgml.code.tex

# Update texmf-Tree
echo "Update texmf-Tree"
sudo texhash
