#> pk_be_it:packages/damage_item/run
# @input
#   $slot (string): slot of item to damage
#   $damage (int): amount of damage to deal
#   $ignore_unbreaking (boolean): if it should take the unbreaking enchant into account or not
# Example:
#   function pk_be_it:packages/damage_item/run {slot:"weapon.mainhand",damage:1,ignore_unbreaking:true}

# Store params
$data modify storage pk:common params.slot set value $(slot)
$data modify storage pk:common params.damage set value $(damage)
$data modify storage pk:common params.ignore_unbreaking set value $(ignore_unbreaking)

# Store item
tag @s add pk.packages.damage_item.current.entity
execute at @s summon item_display run function pk_be_it:packages/damage_item/store with storage pk:common params
tag @s remove pk.packages.damage_item.current.entity
#   If item not found in provided slot, stop the process
execute unless data storage pk:common temp.item run return fail

# @continue Check if the item has an enchantment level, and if the chance of triggering it passed
execute if function pk_be_it:packages/damage_item/unbreaking_attempt run return fail

# @continue Check if should break
$execute if items entity @s $(slot) *[damage~{durability:{max:$(damage)}}] run return run function pk_be_it:packages/damage_item/break with storage pk:common params

# @continue Damage item
execute store result score $damage pk.temp run data get storage pk:common temp.item.components."minecraft:damage"
$scoreboard players add $damage pk.temp $(damage)
execute store result storage pk:common params.damage int 1 run scoreboard players get $damage pk.temp
function pk_be_it:packages/damage_item/damage with storage pk:common params