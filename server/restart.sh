#!/bin/bash 

# Restart script linked in crontab to restart a Minecraft server.
# Originally created by asim0v

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ME=`basename $0`

cd $DIR

INSTANCE_ID=WorldOfPannotia

###################################################
# Read settings defined by local server admin
if [ -f settings-local.sh ]; then
    . ./settings-local.sh
fi

tmux send-keys -t $IDENT "say " $IDENT " server restarting in 5 minutes" C-m;
sleep 4m;

tmux send-keys -t $IDENT "say " $IDENT " server restarting in 1 minute" C-m;
sleep 55s;

tmux send-keys -t $IDENT "say " $IDENT " server now restarting" C-m;
tmux send-keys -t $IDENT "stop" C-m;
