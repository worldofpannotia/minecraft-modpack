#> pk_be_it:core/item_frame/repair

# Mark item frame as visible
tag @s remove pk.be_it.invisible

# Update item frame's data
data modify entity @s Invisible set value 0b
execute store result entity @s ItemRotation short 1 run scoreboard players get @s pk.be_it.item_rotation

# Try to reduce the durability of the tool
execute as @a[tag=pk.current.player,gamemode=!creative,distance=..30,limit=1] run function pk_be_it:packages/damage_item/run {slot:"weapon.mainhand",damage:1,ignore_unbreaking:false}

# Animations
playsound block.slime_block.place player @a[distance=..30] ~ ~ ~ 1 0.8
particle poof ~ ~ ~ 0.2 0.2 0.2 0.001 4