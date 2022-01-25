particle item polished_andesite ~ ~1 ~ 0.3 0.3 0.3 0.3 50 force
particle enchanted_hit ~ ~1 ~ 0.3 0.3 0.3 0.3 50 force
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 10
execute at @s run fill ~ ~ ~ ~ ~1 ~ air
kill @e[tag=floating_message,sort=nearest,limit=1,distance=..1]
kill @s
