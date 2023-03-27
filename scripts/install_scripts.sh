#!/bin/bash

echo "Checking if dependencies are installed..."
if ! command -v pandoc &> /dev/null
then
    echo "Error: pandoc is not installed"
    exit 1
fi

if ! python3 -c "import fitz" &> /dev/null
then
    echo "Error: pymupdf is not installed"
    exit 1
fi

echo "Copying scripts to ~/.local/bin"
cp ./strip.py ~/.local/bin
cp ./pandoc.sh ~/.local/bin

echo "Making strip.py executable..."
chmod +x ~/.local/bin/strip.py
