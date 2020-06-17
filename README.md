# PDF Page Numbers

### Purpose & Requirements
You have a PDF document and want to add page numbers to it.

Requires texlive-core, pdftk.
On Arch Linux, these can be installed by running `$ sudo pacman -S texlive-core pdftk`

### Usage

1. Count the pages of your document you want to add page numbers to.
2. Then run the script: `sh number_pdf.sh [number of pages] [input pdf] [output pdf]`.

### Example
1. You have a document named `my_doc.pdf` that has 101 pages.
2. `$ sh number_pdf.sh 101 my_doc.pdf my_doc_with_numbers.pdf`
3. Your numbered document is called `my_doc_with_numbers.pdf`.

### Credits
Adapted by Max from http://www.cazencott.info/index.php/post/2015/04/30/Numbering-PDF-Pages