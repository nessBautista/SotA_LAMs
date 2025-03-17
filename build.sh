#!/bin/bash

# Check if filename is provided
if [ -z "$1" ]; then
  echo "Usage: ./build.sh <filename_without_extension>"
  exit 1
fi

FILENAME=$1

# Compile LaTeX and BibTeX
pdflatex "$FILENAME.tex"
bibtex "$FILENAME.aux"
pdflatex "$FILENAME.tex"
pdflatex "$FILENAME.tex"

echo "Compilation finished. Check $FILENAME.pdf"

