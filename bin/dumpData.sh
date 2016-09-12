#!/bin/bash

rm ./data/*.txt > /dev/null

mysql -N -B -u isatlas -p isatlas < ./sql/planet.sql > ./data/planet.txt

mysql -N -B -u isatlas -p isatlas < ./sql/factory.sql > ./data/factory.txt

mysql -N -B -u isatlas -p isatlas < ./sql/novel.sql > ./data/novel.txt

mysql -N -B -u isatlas -p isatlas < ./sql/product-type.sql > ./data/product_type.txt

mysql -N -B -u isatlas -p isatlas < ./sql/star-map.sql > ./data/star_maps.txt
