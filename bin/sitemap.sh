#!/bin/bash

rm planet.xml novel.xml factory.xml product_type.xml star_maps.xml > /dev/null

perl -pe 's/^"([0-9]*)","([0-9\.]*)"$/<url><loc>https:\/\/isatlas.teamspam.net\/planet-detail.php?planet=$1<\/loc><priority>$2<\/priority><\/url>\n<url><loc>https:\/\/isatlas.teamspam.net\/planet-detail.php?planet=$1\&amp;amp=1<\/loc><priority>$2<\/priority><\/url>/g' planet.csv > planet.xml

perl -pe 's/^"([0-9]*)"$/<url><loc>https:\/\/isatlas.teamspam.net\/novel-detail.php?novel=\1<\/loc><priority>0.6<\/priority><\/url>/g' novel.csv > novel.xml

perl -pe 's/^"([0-9]*)","([0-9\.]*)"$/<url><loc>https:\/\/isatlas.teamspam.net\/factory-detail.php?factory=\1<\/loc><priority>\2<\/priority><\/url>/g' factory.csv > factory.xml

perl -pe 's/^"([0-9]*)","([0-9\.]*)"$/<url><loc>https:\/\/isatlas.teamspam.net\/product-type-detail.php?searchvalue=\1<\/loc><priority>\2<\/priority><\/url>/g' product_type.csv > product_type.xml

perl -pe 's/^"([0-9]*)","([0-9\.]*)"$/<url><loc>https:\/\/isatlas.teamspam.net\/system-map.php?planet=\1\&amp;era=2575<\/loc><priority>\2<\/priority><\/url>/g' star_maps.csv > star_maps.xml
perl -pe 's/^"([0-9]*)","([0-9\.]*)"$/<url><loc>https:\/\/isatlas.teamspam.net\/system-map.php?planet=\1\&amp;era=2750<\/loc><priority>\2<\/priority><\/url>/g' star_maps.csv >> star_maps.xml
perl -pe 's/^"([0-9]*)","([0-9\.]*)"$/<url><loc>https:\/\/isatlas.teamspam.net\/system-map.php?planet=\1\&amp;era=3025<\/loc><priority>\2<\/priority><\/url>/g' star_maps.csv >> star_maps.xml
perl -pe 's/^"([0-9]*)","([0-9\.]*)"$/<url><loc>https:\/\/isatlas.teamspam.net\/system-map.php?planet=\1\&amp;era=3030<\/loc><priority>\2<\/priority><\/url>/g' star_maps.csv >> star_maps.xml
perl -pe 's/^"([0-9]*)","([0-9\.]*)"$/<url><loc>https:\/\/isatlas.teamspam.net\/system-map.php?planet=\1\&amp;era=3040<\/loc><priority>\2<\/priority><\/url>/g' star_maps.csv >> star_maps.xml
perl -pe 's/^"([0-9]*)","([0-9\.]*)"$/<url><loc>https:\/\/isatlas.teamspam.net\/system-map.php?planet=\1\&amp;era=3052<\/loc><priority>\2<\/priority><\/url>/g' star_maps.csv >> star_maps.xml
perl -pe 's/^"([0-9]*)","([0-9\.]*)"$/<url><loc>https:\/\/isatlas.teamspam.net\/system-map.php?planet=\1\&amp;era=3057<\/loc><priority>\2<\/priority><\/url>/g' star_maps.csv >> star_maps.xml
perl -pe 's/^"([0-9]*)","([0-9\.]*)"$/<url><loc>https:\/\/isatlas.teamspam.net\/system-map.php?planet=\1\&amp;era=3062<\/loc><priority>\2<\/priority><\/url>/g' star_maps.csv >> star_maps.xml


cat header.xml planet.xml novel.xml factory.xml product_type.xml star_maps.xml footer.xml > sitemap.tmp.xml

#perl -pe 's/00+<\/priority/0<\/priority/g' sitemap.tmp.xml >> sitemap.xml
#rm sitemap.tmp.xml

mv sitemap.tmp.xml sitemap.xml
