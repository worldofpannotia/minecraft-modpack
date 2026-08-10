tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

execute if score @s friends matches 1 run tellraw @s {"color":"gray","translate":"There is only ",extra:[{"score":{"name":"@s","objective":"friends"},"color":"green"},{"color":"gray","translate":" entity loaded in the world. \nCongrats on getting rid of all your friends"}]}
execute if score @s friends matches 2.. run tellraw @s {"color":"gray","translate":"There are ",extra:[{"score":{"name":"@s","objective":"friends"},"color":"green"},{"color":"gray","translate":" entities loaded in the world"}]}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

scoreboard players set @s te_friend_count 0
scoreboard players enable @a te_friend_count
