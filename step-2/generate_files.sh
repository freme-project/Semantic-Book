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