# Reset Success
scoreboard players reset %Success eplus.temp

# Check Owner
execute on owner store success score %Success eplus.temp if entity @s[tag=eplus.toxic_reaction_user]

# Owner Matches
execute if score %Success eplus.temp matches 1 run tag @s add eplus.toxic_reaction_exclude
