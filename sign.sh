#!/bin/bash

echo "Signing *.dylib files..."
for file in $(find -name "*.dylib")
do
    ldid2 -S file
done

echo "Signing binaries..."
for file in $(find . -type f ! -name "*.*")
do
    ldid2 -S file
done