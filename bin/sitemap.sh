#!/bin/bash

cd ./data

rm *.xml > /dev/null

cat << HEADER > header.xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
<url><loc>https://isatlas.teamspam.net/</loc><priority>1.0</priority></url>
HEADER

cat << FOOTER > footer.xml
</urlset>
FOOTER

perl -pe 's/^([0-9]*)\t(.*)\t([0-9\.]*)$/<url><loc>https:\/\/isatlas.teamspam.net\/planet-detail.php\/$2<\/loc><priority>$3<\/priority><\/url>\n<url><loc>https:\/\/isatlas.teamspam.net\/planet-detail.php\/$2\/amp<\/loc><priority>$3<\/priority><\/url>/g' planet.txt > planet.xml

perl -pe 's/^([0-9]*)\t(.*)$/<url><loc>https:\/\/isatlas.teamspam.net\/novel-detail.php\/$2<\/loc><priority>0.6<\/priority><\/url>/g' novel.txt > novel.xml

perl -pe 's/^([0-9]*)\t(.*)\t([0-9\.]*)$/<url><loc>https:\/\/isatlas.teamspam.net\/factory-detail.php\/$2<\/loc><priority>$3<\/priority><\/url>/g' factory.txt > factory.xml

perl -pe 's/^([0-9]*)\t(.*)\t([0-9\.]*)$/<url><loc>https:\/\/isatlas.teamspam.net\/product-type-detail.php\/$2<\/loc><priority>$3<\/priority><\/url>/g' product_type.txt > product_type.xml

perl -pe 's/^([0-9]*)\t(.*)\t([0-9\.]*)$/<url><loc>https:\/\/isatlas.teamspam.net\/system-map.php\/$2\/2575<\/loc><priority>$3<\/priority><\/url>/g' star_maps.txt > star_maps.xml
perl -pe 's/^([0-9]*)\t(.*)\t([0-9\.]*)$/<url><loc>https:\/\/isatlas.teamspam.net\/system-map.php\/$2\/2750<\/loc><priority>$3<\/priority><\/url>/g' star_maps.txt >> star_maps.xml
perl -pe 's/^([0-9]*)\t(.*)\t([0-9\.]*)$/<url><loc>https:\/\/isatlas.teamspam.net\/system-map.php\/$2\/3025<\/loc><priority>$3<\/priority><\/url>/g' star_maps.txt >> star_maps.xml
perl -pe 's/^([0-9]*)\t(.*)\t([0-9\.]*)$/<url><loc>https:\/\/isatlas.teamspam.net\/system-map.php\/$2\/3030<\/loc><priority>$3<\/priority><\/url>/g' star_maps.txt >> star_maps.xml
perl -pe 's/^([0-9]*)\t(.*)\t([0-9\.]*)$/<url><loc>https:\/\/isatlas.teamspam.net\/system-map.php\/$2\/3040<\/loc><priority>$3<\/priority><\/url>/g' star_maps.txt >> star_maps.xml
perl -pe 's/^([0-9]*)\t(.*)\t([0-9\.]*)$/<url><loc>https:\/\/isatlas.teamspam.net\/system-map.php\/$2\/3052<\/loc><priority>$3<\/priority><\/url>/g' star_maps.txt >> star_maps.xml
perl -pe 's/^([0-9]*)\t(.*)\t([0-9\.]*)$/<url><loc>https:\/\/isatlas.teamspam.net\/system-map.php\/$2\/3057<\/loc><priority>$3<\/priority><\/url>/g' star_maps.txt >> star_maps.xml
perl -pe 's/^([0-9]*)\t(.*)\t([0-9\.]*)$/<url><loc>https:\/\/isatlas.teamspam.net\/system-map.php\/$2\/3062<\/loc><priority>$3<\/priority><\/url>/g' star_maps.txt >> star_maps.xml

cat header.xml planet.xml star_maps.xml novel.xml factory.xml product_type.xml footer.xml > sitemap.xml

perl -pe 's/00+<\/priority/0<\/priority/g' -i sitemap.xml
