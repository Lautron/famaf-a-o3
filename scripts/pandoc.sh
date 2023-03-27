#!/bin/bash
for file in "$@"; do
  pandoc --pdf-engine=xelatex --toc -f markdown -t latex "$file" -o "${file%.md}.pdf"
done
