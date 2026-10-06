execute if score #all autotest = #hits autotest run return run scoreboard players add #pass autotest 1
$tellraw @a [{"text":"[autotest] FAIL ","color":"red"},{"text":"$(id)","color":"white"},{"text":"  - rolls with any head: ","color":"gray"},{"score":{"name":"#all","objective":"autotest"},"color":"yellow"},{"text":", with this head: ","color":"gray"},{"score":{"name":"#hits","objective":"autotest"},"color":"yellow"}]
$data modify storage autotest:out failures append value {id:"$(id)",why:"another head dropped"}
scoreboard players add #fail autotest 1
