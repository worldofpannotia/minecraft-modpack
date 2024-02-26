execute as @a[scores={poison_eaten=1..99}] run scoreboard players add @s poison_day 1
execute as @a[scores={poison_eaten=1..}] run scoreboard players set @s poison_eaten 100

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

execute if score @s poison_day matches 0.. run tellraw @s {"translate":"You have eaten a poisonous potato every day for ","extra":[{"color":"gold","score":{"name":"@s","objective":"poison_day"}},{"translate":" days."}]}

execute if score @s poison_eaten matches 1.. run tellraw @s {"color":"green","text":"You have eaten a poisonous potato today."}
execute unless score @s poison_eaten matches 1.. run tellraw @s {"color":"red","text":"You have not eaten a poisonous potato today."}
tellraw @s {"color":"gray","italic":"true","text":""}
tellraw @s {"color":"gray","italic":"true","text":"If you have just slept, and it says you have eaten a poisonous potato when you actually haven't yet, try running this trigger again in 10 seconds."}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

scoreboard players set @s a_poison_a_day 0