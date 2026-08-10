# Summon Multiple Orbs if Short Limit Exceeded
execute if score @s eplus.temp2 matches 32768.. run summon minecraft:experience_orb ~ ~ ~ {Value:32767s}
execute if score @s eplus.temp2 matches 32768.. run scoreboard players remove @s eplus.temp2 32767
execute if score @s eplus.temp2 matches 32768.. run function enchantmentplus:enchantments/extended/experience/summon_orb

# Remaining Value
execute if score @s eplus.temp2 matches ..32767 summon minecraft:experience_orb store result entity @s Value short 1 run scoreboard players get @n[type=minecraft:marker,tag=eplus.ex_marker,tag=eplus.ex_break] eplus.temp2
