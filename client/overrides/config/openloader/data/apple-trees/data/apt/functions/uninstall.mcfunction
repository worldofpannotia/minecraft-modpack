#Generate intractable text#  
tellraw @a [{"text":"["},{"text":"+","color":"dark_gray","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Enable","color":"dark_green"}]},"clickEvent":{"action":"run_command","value":"/function apt:load"}},{"text":" "},{"text":"| "},{"text":"-","color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"Disable","color":"dark_red"}]},"clickEvent":{"action":"run_command","value":"/function apt:uninstall"}},{"text":"] "},{"text":"Apple Trees Datapack","color":"white","bold":false},{"text":" by ManaMage","color":"white","bold":false}]

#Kill Armor-Stand Apple Growth Timer at chunk 0#
kill @e[tag=AppleGrowth]

#Sets a azalea leaf block at all Armor-Stands with the tag APT#
execute at @e[tag=APT] as @s run setblock ~ ~ ~ minecraft:azalea_leaves

#Kill any remaining Armor-Stands with the tag APT#
kill @e[tag=APT]

#Kill any remaining Armor-Stands with the tag AppleState#
kill @e[tag=AppleState]

#Uninstall Random Apple Trees#
function rng_egolden_apple_tree:uninstall
function rng_golden_apple_tree:uninstall
function rng_apple_tree:uninstall

#Uninstall Random Apple Seeds#
function rng_egolden_apple_seed:uninstall
function rng_golden_apple_seed:uninstall
function rng_apple_seed:uninstall

#Remove Scoreboard Dummies#
scoreboard objectives remove AppleGrowth
scoreboard objectives remove AppleStages

#Remove Scoreboard Eat Apples#
scoreboard objectives remove EatAppleT
scoreboard objectives remove EatGoldenAppleT
scoreboard objectives remove EatEGoldenAppleT

#Disable Apple Tree Datapack#
datapack disable "file/Apple Trees.zip"
datapack disable "file/Apple Trees"