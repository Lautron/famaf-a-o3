#!/bin/bash
for file in "$@"; do
  pandoc --pdf-engine=xelatex --toc --toc-depth=4 -M documentclass=scrartcl  -f markdown -t latex "$file" -o "${file%.md}.pdf"
done
