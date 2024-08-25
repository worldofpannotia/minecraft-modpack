execute if data storage x_marks_the_spot:curr {HasInMainHand:1b} run item replace entity @s contents from entity @a[tag=x_marks_the_spot_curr_player,limit=1] weapon.mainhand
function x_marks_the_spot:process_item_entity_map
execute if data storage x_marks_the_spot:curr {HasInOffHand:1b} run item replace entity @s contents from entity @a[tag=x_marks_the_spot_curr_player,limit=1] weapon.offhand
function x_marks_the_spot:process_item_entity_map
kill @s
