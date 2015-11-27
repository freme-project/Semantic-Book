cp ./search_tpl.html ./search.html
#sed -i -e '/<!--JQUERY-->/ r ./deps/jquery-2.1.4.min.js' -e s/\<!--JQUERY--\>// search.html
#sed -i -e '/<!--UNDERSCORE-->/ r ./deps/underscore-min.js' -e s/\<!--UNDERSCORE--\>// search.html
sed -i -e '/<!--FACET-->/ r ./deps/facetedsearch.js' -e s/\<!--FACET--\>// search.html
sed -i -e '/<!--TTL-->/ r ../step-6/all.ttl' -e s/\<!--TTL--\>// search.html
sed -i -e '/<!--N3-->/ r ./deps/n3-browser.min.js' -e s/\<!--N3--\>// search.html