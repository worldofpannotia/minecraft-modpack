# Creates all scores required by the datapack

team add ss_red
team modify ss_red color red
team add ss_orange
team modify ss_orange color gold

team add ss_green
team modify ss_green color dark_green
team add ss_lime
team modify ss_lime color green

team add ss_cyan
team modify ss_cyan color blue
team add ss_light_blue
team modify ss_light_blue color aqua

scoreboard objectives add ss_isRed dummy
scoreboard players add #ss_isRed ss_isRed 0

scoreboard objectives add ss_isGreen dummy
scoreboard players add #ss_isGreen ss_isGreen 0

scoreboard objectives add ss_isBlue dummy
scoreboard players add #ss_isBlue ss_isBlue 0

scoreboard objectives add ss_removeRed dummy
scoreboard objectives add ss_removeGreen dummy
scoreboard objectives add ss_removeBlue dummy

scoreboard objectives add ss_x dummy
scoreboard objectives add ss_y dummy
scoreboard objectives add ss_z dummy
scoreboard objectives add ss_dim dummy

scoreboard players add #ss_xRed ss_x 0
scoreboard players add #ss_yRed ss_y 0
scoreboard players add #ss_zRed ss_z 0

scoreboard players add #ss_xBlue ss_x 0
scoreboard players add #ss_yBlue ss_y 0
scoreboard players add #ss_zBlue ss_z 0

scoreboard players add #ss_xGreen ss_x 0
scoreboard players add #ss_yGreen ss_y 0
scoreboard players add #ss_zGreen ss_z 0
