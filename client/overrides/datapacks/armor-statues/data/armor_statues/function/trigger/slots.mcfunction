#
# Description:	Exchange items between equipment slots
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
# Creates temporary storage
#
#data modify storage customizable_armor_stands:slot_storage {} set value {Slots:[{}, {}]}
#
# Copy item from main hand to temporary storage
#
data remove storage customizable_armor_stands:slot_storage Slot
data modify storage customizable_armor_stands:slot_storage Slot set from entity @s equipment.mainhand
#
# Copy item from off hand or head to main hand
#
data remove entity @s equipment.mainhand
execute if entity @s[scores={as_trigger=161}] run data modify entity @s equipment.mainhand set from entity @s equipment.offhand
execute if entity @s[scores={as_trigger=162}] run data modify entity @s equipment.mainhand set from entity @s equipment.head
#
# Copy item from temporary storage to off hand or head
#
execute if entity @s[scores={as_trigger=161}] run data remove entity @s equipment.offhand
execute if entity @s[scores={as_trigger=162}] run data remove entity @s equipment.head
execute if entity @s[scores={as_trigger=161}] run data modify entity @s equipment.offhand set from storage customizable_armor_stands:slot_storage Slot
execute if entity @s[scores={as_trigger=162}] run data modify entity @s equipment.head set from storage customizable_armor_stands:slot_storage Slot
