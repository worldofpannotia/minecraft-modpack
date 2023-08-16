execute if score interactable_trophies bac_settings matches 1 run data merge entity @e[type=ender_dragon,limit=1,sort=nearest] {DeathLootTable:"blackbirds_torture_chamber:dragon_head",Health:1}
execute if score interactable_trophies bac_settings matches 1 run damage @e[type=ender_dragon,sort=nearest,limit=1] 1000 player_attack by @s
execute if score interactable_trophies bac_settings matches 1 run tellraw @a [{"selector":"@s"},{"text":" has decapitated the dragon"}]

advancement revoke @s only blackbirds_torture_chamber:technical/guillotine