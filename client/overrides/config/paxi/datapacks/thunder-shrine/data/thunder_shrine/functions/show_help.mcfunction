# Toggles the trigger on and off

# Toggles the trigger on and off

tellraw @s ["",{"text":"Thunder Shrine help:","color":"yellow","bold":"true"}]
tellraw @s ["",{"text":"1. ","color":"green"},{"text":"Place down any normal armor stand","color":"gold"}]
tellraw @s ["",{"text":"2. ","color":"green"},{"text":"Run ","color":"gold"},{"text":"/function thunder_shrine:create","color":"green"}]
tellraw @s ["",{"text":"3. ","color":"green"},{"text":"The nearest armor stand within 3 blocks will be converted","color":"gold"}]
tellraw @s ["",{"text":"4. ","color":"green"},{"text":"To delete a shrine, stand within 3 blocks of the shrine and run ","color":"gold"},{"text":"/function thunder_shrine:remove","color":"green"}]

scoreboard players set @s ts_help 0
