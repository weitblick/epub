#!/bin/bash
hugo --cleanDestinationDir
cd public
rm -f ../ebook.epub
zip -rX ../ebook.epub mimetype OEBPS META-INF
