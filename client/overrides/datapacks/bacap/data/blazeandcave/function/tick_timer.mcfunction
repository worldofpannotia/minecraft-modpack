# Function runs once per tick
execute as @a[scores={bac_event_death=1..}] run function blazeandcave:advancement/event_horizon_fail

# # Dive Bomb - stand on ground fail
execute as @a[advancements={blazeandcave:technical/dive_bomb_check=true},predicate=blazeandcave:is_on_ground] run advancement revoke @s only blazeandcave:technical/dive_bomb_check

# # Gas - Area effect clouds are checked. If they don't have dragon_breath particles, then they were created by a player
execute as @e[type=area_effect_cloud,tag=!aec_checked] run function blazeandcave:advancement/check/aec

# # Dimension Penetration
execute as @e[type=arrow] at @s run function blazeandcave:advancement/dimpen_tag

# # Whack-a-mole and Diver's Dozen counting
execute as @a[scores={bac_whack_a_mole_count=1..}] if predicate blazeandcave:is_on_ground run scoreboard players set @s bac_whack_a_mole_count 0
execute as @a[scores={bac_divers_dozen_count=1..}] unless predicate blazeandcave:is_flying run scoreboard players set @s bac_divers_dozen_count 0
