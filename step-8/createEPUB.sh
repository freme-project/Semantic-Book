#!/bin/bash

rm -rf ./in
mkdir ./in

rm -rf ./out
mkdir ./out

cp -r ../step-5/out/athens_files ./in
cp -r ../step-5/out/*.html ./in
#cp -r ../step-7/deps ./in
cp -r ../step-7/search.xhtml ./in

cd ./in
zip -r ../out/files.zip *

cd ../out
curl --form "htmlZip=@files.zip" --form metadata='{"titles":["Semantic Book"],"creators":[{"firstName": "Frank","lastName": "Salliau","roles":["author"]}],"subjects":["news","world"],"language":"en","identifier":{"value":"urn:1235-568-78910"},"tableOfContents":[{"title":"Search","resource":"search.xhtml"},{"title":"Introduction","resource":"introduction.html"},{"title":"Etymology","resource":"etymology.html"},{"title":"History","resource":"history.html"},{"title":"Geography","resource":"geography.html"},{"title":"Administration","resource":"administration.html"},{"title":"Cityscape","resource":"cityscape.html"},{"title":"Economy","resource":"economy.html"},{"title":"Demographics","resource":"demographics.html"},{"title":"Culture and Contemporary Life","resource":"culture_and_contemporary_life.html"},{"title":"Education","resource":"education.html"},{"title":"Environment","resource":"environment.html"},{"title":"Transport","resource":"transport.html"},{"title":"Olympic Games","resource":"olympic_games.html"},{"title":"Special Olympics","resource":"special_olympics.html"},{"title":"International Relations","resource":"international_relations.html"},{"title":"Other Locations Named After Athens","resource":"other_locations_named_after_athens.html"},{"title":"See Also","resource":"see_also.html"},{"title":"References","resource":"references.html"},{"title":"External Links","resource":"external_links.html"}]}' http://api.freme-project.eu/current/e-publishing/html > semantic_book.epub
#curl --form "htmlZip=@files.zip" --form metadata='{"titles":["Semantic Book"],"creators":[{"firstName": "Frank","lastName": "Salliau","roles":["author"]}],"subjects":["news","world"],"language":"en","identifier":{"value":"urn:1235-568-78910"},"tableOfContents":[{"title":"Search","resource":"search.html"},{"title":"Introduction","resource":"introduction.html"},{"title":"Etymology","resource":"etymology.html"},{"title":"History","resource":"history.html"}]}' http://api.freme-project.eu/current/e-publishing/html > semantic_book.epub
