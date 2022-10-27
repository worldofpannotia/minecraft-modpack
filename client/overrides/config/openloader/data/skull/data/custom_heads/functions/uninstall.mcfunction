scoreboard objectives remove merchant
scoreboard objectives remove vdvcasttemp
scoreboard objectives remove skull

scoreboard players reset SkullFunction
scoreboard players reset merchant

datapack disable "file/Skull v1.0.zip"

tellraw @s [{"text":"'","color":"gold"},{"text":"Skull","color":"green"},{"text":"'"},{"text":" Uninstalled Succesfully.","color":"dark_green"}]

reload
