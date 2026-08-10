tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

execute unless score @s bac_dvd matches 1 unless score @s bac_dvd2eb matches 1 unless score @s bac_dveps matches 1 run tellraw @s {"color":"red","translate":"You are currently not eligible for any Dragon vs Dragon advancements."}
execute unless score @s bac_dvd matches 1 unless score @s bac_dvd2eb matches 1 unless score @s bac_dveps matches 1 run tellraw @s {"color":"gray","italic":true,"translate":"If you are currently in the midst of summoning the Ender Dragon or Wither, make sure to take flight before the boss becomes fightable!"}

execute if score @s bac_dveps matches 1 if score @s bac_withercool matches 1.. run tellraw @s {"color":"red","translate":"You are currently not eligible for any Dragon vs Dragon advancements."}
execute if score @s bac_dveps matches 1 if score @s bac_withercool matches 1.. run tellraw @s {"color":"gray","italic":true,"translate":"If you are currently in the midst of summoning the Ender Dragon or Wither, make sure to take flight before the boss becomes fightable!"}

execute if score @s bac_dvd matches 1 unless score @s bac_dvd2eb matches 1 run tellraw @s {"color":"green","translate":"You are currently eligible for Dragon vs Dragon. Defeat the Ender Dragon without taking off your Dragon Head to achieve it!"}
execute if score @s bac_dvd2eb matches 1 run tellraw @s {"color":"green","translate":"You are currently eligible for Dragon vs Dragon II: Electric Boogaloo. Defeat the Ender Dragon without taking off your Dragon Head or touching the ground to achieve it!"}
execute if score @s bac_dveps matches 1 unless score @s bac_withercool matches 1.. run tellraw @s {"color":"green","translate":"You are currently eligible for Dragon vs Wither: The Pre-Sequel. Defeat the Wither without taking off your Dragon Head or touching the ground to achieve it!"}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

scoreboard players set @s bac_dragon 0
