#!/bin/bash

#mysql -u isatlas -p isatlas < ./sql/slug-fix.sql

rm ./data/*.txt > /dev/null

mysql -N -B -u isatlas -p isatlas < ./sql/planet.sql > ./data/planet.txt

mysql -N -B -u isatlas -p isatlas < ./sql/factory.sql > ./data/factory.txt

mysql -N -B -u isatlas -p isatlas < ./sql/novel.sql > ./data/novel.txt

mysql -N -B -u isatlas -p isatlas < ./sql/product-type.sql > ./data/product_type.txt

mysql -N -B -u isatlas -p isatlas < ./sql/star-map.sql > ./data/star_maps.txt


mysql -N -B -u isatlas -p isatlas < ./sql/site-map.sql > ./data/site-map.txt
mysql -N -B -u isatlas -p isatlas < ./sql/home-page.sql > ./data/home-page.txt
