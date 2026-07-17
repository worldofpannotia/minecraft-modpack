#> pk_be_it:core/item_frame/fix_rotation

# Mark item frame as fixed rotation
tag @s add pk.be_it.rotation_fixed

# Remove one pane glass
item modify entity @a[tag=pk.current.player,gamemode=!creative,distance=..30,limit=1] weapon.mainhand [{function:"minecraft:set_count",count:-1,add:true}]

# Animations
playsound block.amethyst_block.resonate player @a[distance=..30] ~ ~ ~
particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.001 8