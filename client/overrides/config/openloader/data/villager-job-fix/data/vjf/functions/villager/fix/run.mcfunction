######################### EXECUTING AS AND AT PLAYER #########################

############### DEBUG ###############
#say villager/fix/run
############### DEBUG ###############

# Single Villager
execute at @s[scores={vjf_single=1}] run function vjf:villager/fix/single

# Multiple Villagers
execute at @s[scores={vjf_multiple=1}] run function vjf:villager/fix/multiple

# Range Villagers
execute at @s[scores={vjf_range_toggle=1},tag=!vjf_range] run function vjf:villager/fix/range_on
execute at @s[scores={vjf_range_toggle=1},tag=vjf_range] run function vjf:villager/fix/range_off

execute as @s[tag=vjf_range] run function vjf:player/message_range_active

# Villagers in range
execute if score Tick vjf_clocks matches 10 run function vjf:clock/tick_at_10