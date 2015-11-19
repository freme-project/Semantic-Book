if [ ! -e "./out" ]
then
	mkdir ./out
fi

for file in administration cityscape culture_and_contemporary_life demographics economy education environment etymology external_links geography history international_relations introduction olympic_games other_locations_named_after_athens references see_also special_olympics transport
do	
	cp ../step-4/out/$file.html ./out
  cp -r ../step-2/out/athens_files ./out/
	sed -i 's/<\/body>//g' ./out/$file.html
	sed -i 's/<\/html>//g' ./out/$file.html
	cat ./popup.snip >> ./out/$file.html
	echo "</body></html>" >> ./out/$file.html
done
