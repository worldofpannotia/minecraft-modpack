#!/bin/bash
# usage: batch-ready.sh <batchIndex> ; exits when every unit in the batch has ollama output or .failed, or runner finished
W=/c/Users/bill/AppData/Local/Temp/claude/C--Users-bill-code-minecraft-modpack/563234ff-1e9c-463b-bcbc-2eea6af867b7/scratchpad/pipeline/work
cd $W
while true; do
  missing=$(node -e "const b=require('./batches.json')[$1];const fs=require('fs');console.log(b.filter(u=>!fs.existsSync('ollama/'+u+'.json')&&!fs.existsSync('ollama/'+u+'.failed')).length)")
  [ "$missing" = "0" ] && { echo "batch $1 ready"; exit 0; }
  grep -q finished ollama/_log.txt 2>/dev/null && { echo "runner finished; batch $1 missing $missing"; exit 0; }
  sleep 60
done
