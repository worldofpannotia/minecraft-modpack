scoreboard objectives add Key dummy
scoreboard objectives add Input dummy
scoreboard objectives add Rotation dummy
scoreboard objectives add Spawns minecraft.used:minecraft.silverfish_spawn_egg

execute unless score %toAttach Key matches 0.. run scoreboard players set %toAttach Key 1
scoreboard players set %closed Key 4765872
scoreboard players set %opened Key 476587201

tellraw @a [{"text":"Enjoy your padlocks!","color":"green","bold":"true"}]

gamerule sendCommandFeedback false
