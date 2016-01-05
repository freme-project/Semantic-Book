if [ ! -e "./out" ]
then
	mkdir ./out
fi

if [ ! -e "./nif" ]
then
	mkdir ./nif
fi

for file in administration cityscape culture_and_contemporary_life demographics economy education environment etymology external_links geography history international_relations introduction olympic_games other_locations_named_after_athens references see_also special_olympics transport
do	
	curl -X POST --header "Content-Type: application/ld+json" --header "Accept: text/n3" --header "X-Auth-Token: $1" -d "@../step-3/out/$file.html.json" "http://api-dev.freme-project.eu/current/e-link/documents/?templateid=4452" > ./nif/$file.ttl
	cp ../step-3/out/$file.html ./out
	sed -i 's/<\/body>//g' ./out/$file.html
	sed -i 's/<\/html>//g' ./out/$file.html
	echo '<script id="e-link_nif" type="text/turtle">' >> ./out/$file.html
	cat ./nif/$file.ttl >> ./out/$file.html
	echo "</script></body></html>" >> ./out/$file.html
done
