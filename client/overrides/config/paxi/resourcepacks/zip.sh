#!/bin/bash

cd world-of-pannotia;7z a -tzip ../world-of-pannotia.zip .;cd ..
cd wyvernity;7z a -tzip ../wyvernity.zip .;cd ..

rm -rf world-of-pannotia
rm -rf wyvernity
