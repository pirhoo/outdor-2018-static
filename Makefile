mirror:
	httrack --mirror 2018.outdor.fr -O . "d2gde5ic41h9mc.cloudfront.net/*" -N100 -I


rebuild: mirror
	find . -type f -name '*.html' -exec sed -i 's/index-2.html/index.html/g' {} \;
	mv index-2.html index.html
	rm index????.html
