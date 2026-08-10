execute store result score @s bac_copper_golem_count run execute if entity @e[type=copper_golem,distance=..10]

execute if score @s bac_copper_golem_count matches 10.. run advancement grant @s[predicate=blazeandcave:equipment/full_copper_armor] only blazeandcave:mining/copper_golem_overlord
