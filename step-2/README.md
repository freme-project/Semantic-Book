# Step 2

## Usage

Execute `generate_files.sh` to generate the HTML files and resources.

## Misc.

It already possible to create an ebook with the files. However, this is not needed in this step. It can be done (for the first three html pages) using this Terminal command. The file `files.zip` is a ZIP archive of the files generated with the script.

`curl --form "htmlZip=@files.zip" --form metadata='{"titles":["Semantic Book"],"creators":[{"firstName": "Joske","lastName": "Vermeulen","roles":["author"]}],"subjects":["news","world"],"language":"en","identifier":{"value":"urn:1235-568-78910"},"tableOfContents":[{"title":"Introduction","resource":"introduction.html"},{"title":"Etymology","resource":"etymology.html"},{"title":"History","resource":"history.html"}]}' http://api-dev.freme-project.eu/current/e-publishing/html > semantic_book.epub`