#!bin/bash

if [[ ! -e "releases" ]]; then
    mkdir -p "releases"
fi

zip -j --must-match  "releases/GodotSharePlugin-${1}.zip" ../config/GodotShare.gdap ../share-plugin/godotshare/build/outputs/aar/GodotShare.release.aar