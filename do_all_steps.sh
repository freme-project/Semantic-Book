#!/bin/bash

cd step-2
echo 'Step 2...'
./generate_files.sh &> log.log

cd ../step-3
echo 'Step 3...'
./e-entity.sh &> log.log

cd ../step-4
echo 'Step 4...'
./e-link.sh &> log.log

cd ../step-5
echo 'Step 5...'
./createPopup.sh &> log.log

cd ../step-6
echo 'Step 6...'
./merge.sh &> log.log

cd ../step-7
echo 'Step 7...'
./createSearchPage.sh &> log.log

cd ../step-8
echo 'Step 8...'
./createEPUB.sh &> log.log

#hack for search.xhtml
#cd ./out;
#unzip semantic_book.epub;
#rm -f semantic_book.epub;
#cp ../../step-7/search.xhtml OEBPS;
#zip -X semantic_book.epub mimetype;
#zip -rg semantic_book.epub META-INF -x \*.DS_Store;
#zip -rg semantic_book.epub OEBPS -x \*.DS_Store;
