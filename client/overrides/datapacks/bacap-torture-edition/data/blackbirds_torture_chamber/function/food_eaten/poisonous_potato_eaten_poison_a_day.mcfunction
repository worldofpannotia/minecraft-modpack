scoreboard players add @s poison_eaten 1

execute as @s[advancements={blackbirds_torture_chamber:stuff/a_poison_a_day=false}] run advancement revoke @s only blackbirds_torture_chamber:technical/eating/poisonous_potato_eaten_poison_a_day
