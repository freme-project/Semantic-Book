#! /bin/bash

#create introduction.html
head -n 236 original/athens.html > introduction.html 
echo '</div></div></div></body></html>' >> introduction.html

#create etymology.html; 319 --> 339 = 21
head -n 59 original/athens.html > etymology.html #head
head -n 339 original/athens.html | tail -n 21 >> etymology.html
echo '</div></body></html>' >> introduction.html

#create history.html; 340 --> 442 = 103
head -n 59 original/athens.html > history.html #head
head -n 442 original/athens.html | tail -n 103 >> history.html
echo '</div></body></html>' >> history.html

#create geography.html; 443 --> 803 = 361
head -n 59 original/athens.html > geography.html #head
head -n 803 original/athens.html | tail -n 361 >> geography.html
echo '</div></body></html>' >> geography.html

#create administration.html; 804 --> 960 = 157
head -n 59 original/athens.html > administration.html #head
head -n 960 original/athens.html | tail -n 157 >> administration.html
echo '</div></body></html>' >> administration.html

#create cityscape.html; 961 --> 1166 = 206
head -n 59 original/athens.html > cityscape.html #head
head -n 1166 original/athens.html | tail -n 206 >> cityscape.html
echo '</div></body></html>' >> cityscape.html

#create economy.html; 1167 --> 1181 = 15
head -n 59 original/athens.html > economy.html #head
head -n 1181 original/athens.html | tail -n 14 >> economy.html
echo '</div></body></html>' >> economy.html

#create demographics.html; 1182 --> 1302 = 121
head -n 59 original/athens.html > demographics.html #head
head -n 1302 original/athens.html | tail -n 120 >> demographics.html
echo '</div></body></html>' >> demographics.html

#create culture_and_contemporary_life.html; 1303 --> 1537 = 235
head -n 59 original/athens.html > culture_and_contemporary_life.html #head
head -n 1537 original/athens.html | tail -n 234 >> culture_and_contemporary_life.html
echo '</div></body></html>' >> culture_and_contemporary_life.html

#create education.html; 1538 --> 1573 = 36
head -n 59 original/athens.html > education.html #head
head -n 1573 original/athens.html | tail -n 36 >> education.html
echo '</div></body></html>' >> education.html

#create environment.html; 1574 --> 1598 = 25
head -n 59 original/athens.html > environment.html #head
head -n 1598 original/athens.html | tail -n 25 >> environment.html
echo '</div></body></html>' >> environment.html

#create transport.html; 1599 --> 1752 = 154
head -n 59 original/athens.html > transport.html #head
head -n 1752 original/athens.html | tail -n 154 >> transport.html
echo '</div></body></html>' >> transport.html

#create olympic_games.html; 1753 --> 1831 = 79
head -n 59 original/athens.html > olympic_games.html #head
head -n 1831 original/athens.html | tail -n 79 >> olympic_games.html
echo '</div></body></html>' >> olympic_games.html

#create special_olympics.html; 1832 --> 1837 = 6
head -n 59 original/athens.html > special_olympics.html #head
head -n 1837 original/athens.html | tail -n 6 >> special_olympics.html
echo '</div></body></html>' >> special_olympics.html

#create international_relations.html; 1838 --> 1868 = 31
head -n 59 original/athens.html > international_relations.html #head
head -n 1868 original/athens.html | tail -n 31 >> international_relations.html
echo '</div></body></html>' >> international_relations.html

#create other_locations_named_after_athens.html; 1869 --> 1974 = 106
head -n 59 original/athens.html > other_locations_named_after_athens.html #head
head -n 1974 original/athens.html | tail -n 106 >> other_locations_named_after_athens.html
echo '</div></body></html>' >> other_locations_named_after_athens.html

#create see_also.html; 1975 --> 2015 = 41
head -n 59 original/athens.html > see_also.html #head
head -n 2015 original/athens.html | tail -n 41 >> see_also.html
echo '</div></body></html>' >> see_also.html

#create references.html; 2016 --> 2205 = 190
head -n 59 original/athens.html > references.html #head
head -n 2205 original/athens.html | tail -n 190 >> references.html
echo '</div></body></html>' >> references.html

#create external_links.html; 2206 --> 5557 = 3352
head -n 59 original/athens.html > external_links.html #head
head -n 5557 original/athens.html | tail -n 3352 >> external_links.html
echo '</div></body></html>' >> external_links.html