# Reset Success
scoreboard players reset %Success eplus.temp

# Check Angry At
execute on target store success score %Success eplus.temp if entity @s[tag=eplus.swirling_user]

# Angry At Matches
execute if score %Success eplus.temp matches 1 run tag @s add eplus.swirling_angry_at
