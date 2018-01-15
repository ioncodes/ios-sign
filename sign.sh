#!/bin/bash

for file in $(find -name "*.dylib" -not -path "./.git/*")
do
	echo "Signing $file"
    ldid2 -S "$file"
done

for file in $(find -type f ! -name "*.*" -not -path "./.git/*")
do
	echo "Signing $file"
    ldid2 -S "$file"
done
