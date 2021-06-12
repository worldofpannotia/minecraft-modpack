#!/bin/sh

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ME=`basename $0`

cd $DIR

###################################################
# Default arguments for JVM

JAVACMD="java"
MIN_RAM="3072M"       # -Xms
MAX_RAM="6144M"       # -Xmx
JAVA_PARAMETERS="-XX:+CMSClassUnloadingEnabled -XX:ParallelGCThreads=4 -XX:MinHeapFreeRatio=5 -XX:MaxHeapFreeRatio=10"

###################################################
# Default arguments for the server

INSTANCE_ID=WorldOfPannotia

###################################################
# Pack specific settings
# Only edit this section if you know what you are doing

MCVER="@@MINECRAFT_VERSION@@"
JARFILE="minecraft_server.${MCVER}.jar"
FORGEJAR="forge-@@MINECRAFT_VERSION@@-@@FORGE_VERSION@@.jar"

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
    "$JAVACMD" -server -Xms${MIN_RAM} -Xmx${MAX_RAM} ${JAVA_PARAMETERS} -jar ${FORGEJAR}
}

start_server_nogui() {
    "$JAVACMD" -server -Xms${MIN_RAM} -Xmx${MAX_RAM} ${JAVA_PARAMETERS} -jar ${FORGEJAR} nogui
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

if [ "$1" = "--watchdog" ]; then
    # Watchdog loop; to debug, call `start.sh watchdog` 
    while true; do
        echo -e "*** Starting ${IDENT} ..."
        if [ "$2" = "--nogui" ]; then
            start_server_nogui
        else
            start_server
        fi
        echo -e "*** Server exited with code $?. Restarting in 5 seconds (or press CTRL+C NOW to exit)..."
        sleep 5
    done
else
    # Ignition
    tmux has-session -t $IDENT 2> /dev/null
    if [ "$?" -eq "0" ]; then
        echo -e "$IDENT is already running under a tmux session (have you tried 'tmux attach -t ${IDENT}'?)"
        exit 1
    else
        if [ "$1" = "--nogui" ]; then
            tmux new -d -s $IDENT "$DIR/$ME --watchdog --nogui"
            echo -e "$IDENT starting server under watchdog script. Use 'tmux attach -t ${IDENT}' for console."
        else
            tmux new -d -s $IDENT "$DIR/$ME --watchdog"
        fi
    fi
fi
