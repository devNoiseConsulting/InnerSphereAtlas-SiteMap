#!/bin/bash

cd ./data

perl -pe 's/^([0-9]*)\t(.*)\t(.*)$/\[ "id" => \1, "name" => "\2", "slug" => "\3" ],/g' home-page.txt > home-page.php
perl -pe 's/^([0-9]*)\t(.*)\t(.*)$/[ "id" => \1, "name" => "\2", "slug" => "\3" ],/g' site-map.txt > site-map.php
