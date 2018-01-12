#!/bin/sh

VERSION=`cat ./README.md | grep img.shields.io | sed -e 's/^..v//g' | sed -e 's/^\([0-9.]*\).*/\1/g'`;
MINECRAFT_VERSION=`cat ./README.md | grep img.shields.io | sed -e 's/^.*MC Version \([0-9.]*\).*/\1/g'`;
MINECRAFT_LAUNCHER_VERSION=`echo $MINECRAFT_VERSION | sed -e 's/^\([0-9.]*\)\.[0-9]*$/\1/'`;
FORGE_VERSION=`cat ./README.md | grep img.shields.io | sed -e 's/^.*Forge Version \([0-9.]*\).*/\1/g'`;

MINECRAFT_JAR="minecraft_server.${MINECRAFT_VERSION}.jar";
FORGE_JAR="forge-${MINECRAFT_VERSION}-${FORGE_VERSION}-universal.jar";
LAUNCH_WRAPPER_DIR="net/minecraft/launchwrapper/${MINECRAFT_LAUNCHER_VERSION}";
LAUNCH_WRAPPER="${LAUNCH_WRAPPER_DIR}/launchwrapper-${MINECRAFT_LAUNCHER_VERSION}.jar"

rm -rf ./tmp;
mkdir -p tmp;

cp -r ./client/* ./tmp/;
cat ./tmp/manifest.tpl.json | sed -e "s/@@VERSION@@/${VERSION}/" | sed -e "s/@@MINECRAFT_VERSION@@/${MINECRAFT_VERSION}/" | sed -e "s/@@FORGE_VERSION@@/${FORGE_VERSION}/" > ./tmp/manifest.json;
rm ./tmp/manifest.tpl.json;

#mkdir -p "./tmp/libraries/${LAUNCH_WRAPPER_DIR}";
#
#curl -o "./tmp/${MINECRAFT_JAR}" "https://s3.amazonaws.com/Minecraft.Download/versions/${MINECRAFT_VERSION}/${MINECRAFT_JAR}";
#curl -o "./tmp/${FORGE_JAR}" "http://files.minecraftforge.net/maven/net/minecraftforge/forge/${MINECRAFT_VERSION}-${FORGE_VERSION}/${FORGE_JAR}";
#curl -0 "./tmp/libraries/${LAUNCH_WRAPPER}" "https://libraries.minecraft.net/${LAUNCH_WRAPPER}";
