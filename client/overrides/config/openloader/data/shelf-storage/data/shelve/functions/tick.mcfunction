#give shelves
#execute as @a at @s if entity @s[nbt={Inventory: [{id: "minecraft:knowledge_book"}]}] run function shelve:block/shelf/give_item
#execute as @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}}] run function shelve:item/convert_item

#create blocks
execute as @e[type=minecraft:armor_stand,tag=oak_shelve] at @s unless score @s block_status matches 1 run function shelve:block/shelf/summon
execute as @e[type=minecraft:armor_stand,tag=drawer] at @s unless score @s block_status matches 1 run function shelve:block/drawer/summon
execute as @e[type=minecraft:armor_stand,tag=display_case] at @s unless score @s block_status matches 1 run function shelve:block/display_case/summon
execute as @e[type=minecraft:armor_stand,tag=clay_pot] at @s unless score @s block_status matches 1 run function shelve:block/clay_pot/summon
execute as @e[type=minecraft:armor_stand,tag=crate] at @s unless score @s block_status matches 1 run function shelve:block/crate/summon
execute as @e[type=minecraft:armor_stand,tag=eldritch_shelf] at @s unless score @s block_status matches 1 run function shelve:block/eldritch_shelf/summon
execute as @e[type=minecraft:armor_stand,tag=soul_shrine] at @s unless score @s block_status matches 1 run function shelve:block/soul_shrine/summon

#destroy blocks
execute as @e[type=minecraft:armor_stand,tag=oak_shelve] at @s if score @s block_status matches 1 unless block ~ ~ ~ minecraft:hopper run function shelve:block/shelf/kill_block
execute as @e[type=minecraft:armor_stand,tag=drawer] at @s if score @s block_status matches 1 unless block ~ ~ ~ minecraft:hopper run function shelve:block/drawer/kill_block
execute as @e[type=minecraft:armor_stand,tag=display_case] at @s if score @s block_status matches 1 unless block ~ ~ ~ minecraft:hopper run function shelve:block/display_case/kill_block
execute as @e[type=minecraft:armor_stand,tag=clay_pot] at @s if score @s block_status matches 1 unless block ~ ~ ~ minecraft:hopper run function shelve:block/clay_pot/kill_block
execute as @e[type=minecraft:armor_stand,tag=crate] at @s if score @s block_status matches 1 unless block ~ ~ ~ minecraft:hopper run function shelve:block/crate/kill_block
execute as @e[type=minecraft:armor_stand,tag=eldritch_shelf] at @s if score @s block_status matches 1 unless block ~ ~ ~ minecraft:hopper run function shelve:block/eldritch_shelf/kill_block
execute as @e[type=minecraft:armor_stand,tag=soul_shrine] at @s if score @s block_status matches 1 unless block ~ ~ ~ minecraft:hopper run function shelve:block/soul_shrine/kill_block

#run tick functions
function shelve:block/shelf/block_tick
function shelve:block/drawer/block_tick
function shelve:block/display_case/block_tick
function shelve:block/clay_pot/block_tick
function shelve:block/crate/block_tick
function shelve:block/eldritch_shelf/block_tick
function shelve:block/soul_shrine/block_tick

#debug
#execute as @e[type=minecraft:armor_stand,tag=oak_shelve] at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0 1

#execute as @a[y_rotation=-135..-44.999999] run title @s actionbar "East"
#execute as @a[y_rotation=-45..44.999999] run title @s actionbar "South"
#execute as @a[y_rotation=45..134.999999] run title @s actionbar "West"
#execute as @a[y_rotation=135..224.999999] run title @s actionbar "North"