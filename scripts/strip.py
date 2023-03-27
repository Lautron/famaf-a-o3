#!/usr/bin/env python3
import fitz  # pip install pymupdf
import sys


def has_highlight(page):
    """Check if a page has any highlight annotations."""
    for annot in page.annots():
        if annot.type[1] == "Highlight":
            return True
    return False


def main(filename):
    doc = fitz.open(filename)
    new_doc = fitz.open()

    for page in doc:
        if has_highlight(page):
            print(f"Page {page.number} has highlight")
            new_doc.insert_pdf(doc, from_page=page.number, to_page=page.number)

    new_doc.save("Caps (PONER CAPS DEL PDF)_" + filename)


if __name__ == "__main__":
    filenames = sys.argv[1:]
    for filename in filenames:
        main(filename)
