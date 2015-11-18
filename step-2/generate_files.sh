#! /bin/bash

if [ ! -e "./out" ]
then
	mkdir ./out
fi

ficp -r original/athens_files ./out/

#create introduction.html
head -n 236 original/athens.html > ./out/introduction.html 
echo '</div></div></div></body></html>' >> ./out/introduction.html
sed -i 's/<a [^>]*>//g' ./out/introduction.html
sed -i 's/<\/a>//g' ./out/introduction.html


#create etymology.html; 319 --> 339 = 21
head -n 59 original/athens.html > ./out/etymology.html #head
head -n 339 original/athens.html | tail -n 21 >> ./out/etymology.html
echo '</div></body></html>' >> ./out/etymology.html
sed -i 's/<a [^>]*>//g' ./out/etymology.html
sed -i 's/<\/a>//g' ./out/etymology.html

#create history.html; 340 --> 442 = 103
head -n 59 original/athens.html > ./out/history.html #head
head -n 442 original/athens.html | tail -n 103 >> ./out/history.html
echo '</div></body></html>' >> ./out/history.html
sed -i 's/<a [^>]*>//g' ./out/history.html
sed -i 's/<\/a>//g' ./out/history.html

#create geography.html; 443 --> 803 = 361
head -n 59 original/athens.html > ./out/geography.html #head
head -n 803 original/athens.html | tail -n 361 >> ./out/geography.html
echo '</div></body></html>' >> ./out/geography.html
sed -i 's/<a [^>]*>//g' ./out/geography.html
sed -i 's/<\/a>//g' ./out/geography.html

#create administration.html; 804 --> 960 = 157
head -n 59 original/athens.html > ./out/administration.html #head
head -n 960 original/athens.html | tail -n 157 >> ./out/administration.html
echo '</div></body></html>' >> ./out/administration.html
sed -i 's/<a [^>]*>//g' ./out/administration.html
sed -i 's/<\/a>//g' ./out/administration.html

#create cityscape.html; 961 --> 1166 = 206
head -n 59 original/athens.html > ./out/cityscape.html #head
head -n 1166 original/athens.html | tail -n 206 >> ./out/cityscape.html
echo '</div></body></html>' >> ./out/cityscape.html
sed -i 's/<a [^>]*>//g' ./out/cityscape.html
sed -i 's/<\/a>//g' ./out/cityscape.html

#create economy.html; 1167 --> 1181 = 15
head -n 59 original/athens.html > ./out/economy.html #head
head -n 1181 original/athens.html | tail -n 14 >> ./out/economy.html
echo '</div></body></html>' >> ./out/economy.html
sed -i 's/<a [^>]*>//g' ./out/economy.html
sed -i 's/<\/a>//g' ./out/economy.html

#create demographics.html; 1182 --> 1302 = 121
head -n 59 original/athens.html > ./out/demographics.html #head
head -n 1302 original/athens.html | tail -n 120 >> ./out/demographics.html
echo '</div></body></html>' >> ./out/demographics.html
sed -i 's/<a [^>]*>//g' ./out/demographics.html
sed -i 's/<\/a>//g' ./out/demographics.html

#create culture_and_contemporary_life.html; 1303 --> 1537 = 235
head -n 59 original/athens.html > ./out/culture_and_contemporary_life.html #head
head -n 1537 original/athens.html | tail -n 234 >> ./out/culture_and_contemporary_life.html
echo '</div></body></html>' >> ./out/culture_and_contemporary_life.html
sed -i 's/<a [^>]*>//g' ./out/culture_and_contemporary_life.html
sed -i 's/<\/a>//g' ./out/culture_and_contemporary_life.html

#create education.html; 1538 --> 1573 = 36
head -n 59 original/athens.html > ./out/education.html #head
head -n 1573 original/athens.html | tail -n 36 >> ./out/education.html
echo '</div></body></html>' >> ./out/education.html
sed -i 's/<a [^>]*>//g' ./out/education.html
sed -i 's/<\/a>//g' ./out/education.html

#create environment.html; 1574 --> 1598 = 25
head -n 59 original/athens.html > ./out/environment.html #head
head -n 1598 original/athens.html | tail -n 25 >> ./out/environment.html
echo '</div></body></html>' >> ./out/environment.html
sed -i 's/<a [^>]*>//g' ./out/environment.html
sed -i 's/<\/a>//g' ./out/environment.html

#create transport.html; 1599 --> 1752 = 154
head -n 59 original/athens.html > ./out/transport.html #head
head -n 1752 original/athens.html | tail -n 154 >> ./out/transport.html
echo '</div></body></html>' >> ./out/transport.html
sed -i 's/<a [^>]*>//g' ./out/transport.html
sed -i 's/<\/a>//g' ./out/transport.html

#create olympic_games.html; 1753 --> 1831 = 79
head -n 59 original/athens.html > ./out/olympic_games.html #head
head -n 1831 original/athens.html | tail -n 79 >> ./out/olympic_games.html
echo '</div></body></html>' >> ./out/olympic_games.html
sed -i 's/<a [^>]*>//g' ./out/olympic_games.html
sed -i 's/<\/a>//g' ./out/olympic_games.html

#create special_olympics.html; 1832 --> 1837 = 6
head -n 59 original/athens.html > ./out/special_olympics.html #head
head -n 1837 original/athens.html | tail -n 6 >> ./out/special_olympics.html
echo '</div></body></html>' >> ./out/special_olympics.html
sed -i 's/<a [^>]*>//g' ./out/special_olympics.html
sed -i 's/<\/a>//g' ./out/special_olympics.html

#create international_relations.html; 1838 --> 1868 = 31
head -n 59 original/athens.html > ./out/international_relations.html #head
head -n 1868 original/athens.html | tail -n 31 >> ./out/international_relations.html
echo '</div></body></html>' >> ./out/international_relations.html
sed -i 's/<a [^>]*>//g' ./out/international_relations.html
sed -i 's/<\/a>//g' ./out/international_relations.html

#create other_locations_named_after_athens.html; 1869 --> 1974 = 106
head -n 59 original/athens.html > ./out/other_locations_named_after_athens.html #head
head -n 1974 original/athens.html | tail -n 106 >> ./out/other_locations_named_after_athens.html
echo '</div></body></html>' >> ./out/other_locations_named_after_athens.html
sed -i 's/<a [^>]*>//g' ./out/other_locations_named_after_athens.html
sed -i 's/<\/a>//g' ./out/other_locations_named_after_athens.html

#create see_also.html; 1975 --> 2015 = 41
head -n 59 original/athens.html > ./out/see_also.html #head
head -n 2015 original/athens.html | tail -n 41 >> ./out/see_also.html
echo '</div></body></html>' >> ./out/see_also.html
sed -i 's/<a [^>]*>//g' ./out/see_also.html
sed -i 's/<\/a>//g' ./out/see_also.html

#create references.html; 2016 --> 2205 = 190
head -n 59 original/athens.html > ./out/references.html #head
head -n 2205 original/athens.html | tail -n 190 >> ./out/references.html
echo '</div></body></html>' >> ./out/references.html
sed -i 's/<a [^>]*>//g' ./out/references.html
sed -i 's/<\/a>//g' ./out/references.html

#create external_links.html; 2206 --> 5557 = 3352
head -n 59 original/athens.html > ./out/external_links.html #head
head -n 5557 original/athens.html | tail -n 3352 >> ./out/external_links.html
echo '</div></body></html>' >> ./out/external_links.html
sed -i 's/<a [^>]*>//g' ./out/external_links.html
sed -i 's/<\/a>//g' ./out/external_links.html
