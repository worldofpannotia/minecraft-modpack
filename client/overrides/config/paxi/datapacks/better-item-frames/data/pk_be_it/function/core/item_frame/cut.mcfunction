#> pk_be_it:core/item_frame/cut

# Mark item frame as invisible
tag @s add pk.be_it.invisible

# Update item frame's data
data modify entity @s Invisible set value 1b
execute store result entity @s ItemRotation short 1 run scoreboard players get @s pk.be_it.item_rotation

# Try to reduce the durability of the tool
execute as @a[tag=pk.current.player,gamemode=!creative,distance=..30,limit=1] run function pk_be_it:packages/damage_item/run {slot:"weapon.mainhand",damage:1,ignore_unbreaking:false}

# Animations
playsound block.beehive.shear player @a[distance=..30] ~ ~ ~
particle item{item:"item_frame"} ~ ~ ~ 0.2 0.2 0.2 0.001 10