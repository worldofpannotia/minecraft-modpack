advancement revoke @s only blazeandcave:technical/inventory_changed

# Every time the player's inventory changes, these advancement requirements are checked using some snazzy commands!
execute if entity @s[advancements={blazeandcave:weaponry/artillery=false}] run function blazeandcave:inv_check_artillery
execute if entity @s[advancements={blazeandcave:end/rocketman=false}] run function blazeandcave:inv_check_rocketman
execute if entity @s[advancements={blazeandcave:challenges/immortal=false}] run function blazeandcave:inv_check_immortal