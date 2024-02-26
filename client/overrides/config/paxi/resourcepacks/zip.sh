#!/bin/bash

cd world-of-pannotia;7z a -tzip ../world-of-pannotia.zip .;cd ..
cd wrench-rp;7z a -tzip ../wrench-rp.zip .;cd ..

rm -rf world-of-pannotia
rm -rf wrench-rp
