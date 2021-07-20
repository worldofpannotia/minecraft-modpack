#!/bin/sh

VERSION=`cat ./README.md | grep "\!\[Next Version" | sed -e 's/^.*\!\[Next Version \([-a-z0-9.]*\).*/\1/g'`;
MINECRAFT_VERSION=`cat ./README.md | grep "\!\[Minecraft" | sed -e 's/^.*\!\[Minecraft \([0-9.]*\).*/\1/g'`;
FORGE_VERSION=`cat ./README.md | grep "\!\[Next Forge" | sed -e 's/^.*\!\[Next Forge \([0-9.]*\).*/\1/g'`;

rm -rf ./tmp/client;

mkdir -p tmp/client;
cp -r ./client/* ./tmp/client/;
cat ./tmp/client/manifest.tpl.json | sed -e "s/@@VERSION@@/${VERSION}/" | sed -e "s/@@MINECRAFT_VERSION@@/${MINECRAFT_VERSION}/" | sed -e "s/@@FORGE_VERSION@@/${FORGE_VERSION}/" > ./tmp/client/manifest.json;
rm ./tmp/client/manifest.tpl.json;
