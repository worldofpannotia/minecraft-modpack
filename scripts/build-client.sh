#!/bin/sh

VERSION=`cat ./README.md | grep img.shields.io | sed -e 's/^..v//g' | sed -e 's/^\([0-9.]*\).*/\1/g'`;
MINECRAFT_VERSION=`cat ./README.md | grep img.shields.io | sed -e 's/^.*MC Version \([0-9.]*\).*/\1/g'`;
MINECRAFT_LAUNCHER_VERSION=`echo $MINECRAFT_VERSION | sed -e 's/^\([0-9.]*\)\.[0-9]*$/\1/'`;
FORGE_VERSION=`cat ./README.md | grep img.shields.io | sed -e 's/^.*Forge Version \([0-9.]*\).*/\1/g'`;

rm -rf ./tmp/client;

mkdir -p tmp/client;
cp -r ./client/* ./tmp/client/;
cat ./tmp/client/manifest.tpl.json | sed -e "s/@@VERSION@@/${VERSION}/" | sed -e "s/@@MINECRAFT_VERSION@@/${MINECRAFT_VERSION}/" | sed -e "s/@@FORGE_VERSION@@/${FORGE_VERSION}/" > ./tmp/client/manifest.json;
rm ./tmp/client/manifest.tpl.json;
