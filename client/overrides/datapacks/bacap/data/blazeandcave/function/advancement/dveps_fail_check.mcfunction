execute unless entity @s[predicate=!blazeandcave:is_on_ground,predicate=blazeandcave:equipment/dragon_head] run function blazeandcave:advancement/dveps_fail
execute if entity @s[advancements={blazeandcave:technical/fail_dragon_vs=true}] run function blazeandcave:advancement/dveps_fail
execute at @s if block ~ ~ ~ #minecraft:climbable run function blazeandcave:advancement/dveps_fail
execute at @s if block ~ ~-0.25 ~ #minecraft:climbable run function blazeandcave:advancement/dveps_fail
