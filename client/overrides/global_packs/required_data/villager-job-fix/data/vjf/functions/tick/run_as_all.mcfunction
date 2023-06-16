######################### EXECUTING AS PLAYER #########################

################## DEBUG ##################
#say Tick - Run as All
#scoreboard objectives setdisplay sidebar vjf_single
#scoreboard objectives setdisplay sidebar vjf_vil_linked
################## DEBUG ##################

# Enables the triggers for all players
scoreboard players enable @s vjf_single
scoreboard players enable @s vjf_multiple
scoreboard players enable @s vjf_range_toggle

# Fix villagers
function vjf:villager/fix/run

# Decrease the timer for glowing entities
execute if score Tick vjf_clocks matches 0 run execute at @s as @e[tag=vjf_entity,distance=..160] run function vjf:entity/decrease_life_timer
execute if score Tick vjf_clocks matches 0 run execute as @a[tag=vjf_source,tag=vjf_range] run function vjf:player/range_increase_timer