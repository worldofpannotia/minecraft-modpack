execute if score REconfig REMaxHeads matches -1 run scoreboard players set REconfig REMaxHeads 65

scoreboard objectives add RE0 dummy
scoreboard players set REconfig RE0 0

execute if score REconfig REMaxHeads > REconfig RE0 run scoreboard players remove REconfig REMaxHeads 1

scoreboard objectives remove RE0
function crafting:config/config