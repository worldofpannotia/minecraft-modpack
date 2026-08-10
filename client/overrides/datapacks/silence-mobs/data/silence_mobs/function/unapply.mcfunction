# Desc: Applies silence, custom name and glowing effect
#
# Called by: silence_mobs:second

data merge entity @s {CustomName:{"text":"unsilenced"},Silent:0b}
effect give @s minecraft:glowing 3 0 true
execute at @s run playsound minecraft:block.amethyst_block.resonate ambient @a[distance=..6] ~ ~ ~ .8 2
tag @s add silence_mobs.remove_name
tag @s remove silence_mobs.silenced

schedule function silence_mobs:remove_name 3s replace
