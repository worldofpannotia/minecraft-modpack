#look
execute if score SkullFunction merchant matches 1 as @a[scores={skull=1..}] at @s run function merchant:merchant/check
execute if score SkullFunction merchant matches 1 run scoreboard players enable @a skull
