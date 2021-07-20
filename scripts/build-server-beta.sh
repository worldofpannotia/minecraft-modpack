#!/bin/sh

VERSION=`cat ./README.md | grep "\!\[Next Version" | sed -e 's/^.*\!\[Next Version \([-a-z0-9.]*\).*/\1/g'`;
MINECRAFT_VERSION=`cat ./README.md | grep "\!\[Minecraft" | sed -e 's/^.*\!\[Minecraft \([0-9.]*\).*/\1/g'`;
FORGE_VERSION=`cat ./README.md | grep "\!\[Next Forge" | sed -e 's/^.*\!\[Next Forge \([0-9.]*\).*/\1/g'`;
MINECRAFT_LAUNCHER_VERSION=`echo $MINECRAFT_VERSION | sed -e 's/^\([0-9.]*\)\.[0-9]*$/\1/'`;

rm -rf ./tmp/server;

mkdir -p tmp/server;
cp -r ./tmp/client/overrides/* ./tmp/server/;
cp -r ./server/* ./tmp/server/;
cat ./tmp/server/start.tpl.sh | sed -e "s/@@MINECRAFT_VERSION@@/${MINECRAFT_VERSION}/" | sed -e "s/@@MINECRAFT_LAUNCHER_VERSION@@/${MINECRAFT_LAUNCHER_VERSION}/" | sed -e "s/@@FORGE_VERSION@@/${FORGE_VERSION}/" > ./tmp/server/start.sh;
rm ./tmp/server/start.tpl.sh;
cat ./tmp/server/version.tpl.json | sed -e "s/@@VERSION@@/${VERSION}/" | sed -e "s/@@MINECRAFT_VERSION@@/${MINECRAFT_VERSION}/" | sed -e "s/@@FORGE_VERSION@@/${FORGE_VERSION}/" > ./tmp/server/version.json;
rm ./tmp/server/version.tpl.json;
curl -o "./tmp/server/forge-installer.jar" "https://maven.minecraftforge.net/net/minecraftforge/forge/${MINECRAFT_VERSION}-${FORGE_VERSION}/forge-${MINECRAFT_VERSION}-${FORGE_VERSION}-installer.jar";

cd ./tmp/server
java -jar forge-installer.jar --installServer
rm forge-installer.jar
rm forge-installer.jar.log

cd ../../scripts
mkdir -p tmp/server/mods;
node download-mods.mjs

cd ..
