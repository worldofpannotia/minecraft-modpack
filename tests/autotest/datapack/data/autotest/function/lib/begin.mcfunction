scoreboard objectives add autotest dummy "Autotest"
scoreboard players set #pass autotest 0
scoreboard players set #fail autotest 0
scoreboard players set #skip autotest 0
scoreboard players set #done autotest 0
data modify storage autotest:out failures set value []
data modify storage autotest:out skipped set value []
tag @a remove autotest.runner
tag @s[type=player] add autotest.runner
tellraw @a {"text":"[autotest] preparing the lab (Overworld, 40000 280 40000)...","color":"gray"}
execute in minecraft:overworld run forceload add 39984 39952 40064 40100
schedule function autotest:lib/await_lab 20t
