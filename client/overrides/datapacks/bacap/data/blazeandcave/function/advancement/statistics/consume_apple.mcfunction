# Increases
scoreboard players add @s bac_apple_days 1

execute as @a if score @s bac_apple_days matches 30.. run advancement grant @s only blazeandcave:farming/an_apple_a_day

# This technical advancement can only be triggered once per day since it is only revoked at the start of a new day
# If it is found to not have been completed at the start of a new day, bac_apple_days is reset to 0
# (This is done in the increase_day function)
