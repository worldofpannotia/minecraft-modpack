#!/bin/sh

# Fix work directory
# Some GUIs set wrong working directory which breaks relative paths
cd -- "$(dirname "$0")"

###################################################
# Pack specific settings
# Only edit this section if you know what you are doing

export MCVER="@@MINECRAFT_VERSION@@"
export JARFILE="minecraft_server.${MCVER}.jar"
export FORGEJAR="forge-@@MINECRAFT_VERSION@@-@@FORGE_VERSION@@.jar"

###################################################
# Default arguments for JVM

## Copy following lines into settings-local.sh to create local config file which overrides default settings given here
export JAVACMD="java"
export MIN_RAM="3072M"       # -Xms
export MAX_RAM="6144M"       # -Xmx
export JAVA_PARAMETERS="-XX:+CMSClassUnloadingEnabled -XX:ParallelGCThreads=4 -XX:MinHeapFreeRatio=5 -XX:MaxHeapFreeRatio=10"

###################################################
# Read settings defined by local server admin
if [ -f settings-local.sh ]; then
    . ./settings-local.sh
fi

eula_false() {
    grep -q 'eula=false' eula.txt
    return $?
}

start_server() {
    "$JAVACMD" -server -Xms${MIN_RAM} -Xmx${MAX_RAM} ${JAVA_PARAMETERS} -jar ${FORGEJAR} nogui
    #"$JAVACMD" -server -Xms${MIN_RAM} -Xmx${MAX_RAM} ${JAVA_PARAMETERS} -jar ${FORGEJAR} nogui -Dfml.queryResult=confirm
}

# check eula.txt
if [ -f eula.txt ] && eula_false ; then
    echo "Make sure to read eula.txt before playing!"
    echo "To exit press <enter>"
    read ignored
    exit
fi

# if eula.txt is missing inform user and start MC to create eula.txt
if [ ! -f eula.txt ]; then
    echo "Missing eula.txt. Startup will fail and eula.txt will be created"
    echo "Make sure to read eula.txt before playing!"
    echo "To continue press <enter>"
    read ignored
fi

echo "Starting server"
rm -f autostart.stamp
start_server

while [ -e autostart.stamp ] ; do
    rm -f autostart.stamp
    echo "If you want to completely stop the server process now, press Ctrl+C before the time is up!"
    for i in 5 4 3 2 1; do
        echo "Restarting server in $i"
        sleep 1
    done
    echo "Rebooting now!"
    start_server
    echo "Server process finished"
done
