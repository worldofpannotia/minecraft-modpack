execute unless entity @s[predicate=!blazeandcave:is_on_ground,predicate=blazeandcave:wear_dragon_head] run function blazeandcave:dvd2eb_fail
execute if entity @s[advancements={blazeandcave:technical/fail_dragon_vs=true}] run function blazeandcave:dvd2eb_fail
execute at @s if block ~ ~ ~ #minecraft:climbable run function blazeandcave:dvd2eb_fail
execute at @s if block ~ ~-0.25 ~ #minecraft:climbable run function blazeandcave:dvd2eb_fail