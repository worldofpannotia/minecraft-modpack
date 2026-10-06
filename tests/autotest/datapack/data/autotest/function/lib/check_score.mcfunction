$execute store success score #ok autotest if score $(who) autotest matches $(lo)..$(hi)
execute if score #ok autotest matches 1 run return run scoreboard players add #pass autotest 1
$tellraw @a [{"text":"[autotest] FAIL ","color":"red"},{"text":"$(id)","color":"white"},{"text":"  - got ","color":"gray"},{"score":{"name":"$(who)","objective":"autotest"},"color":"yellow"},{"text":", expected $(lo)..$(hi)","color":"gray"}]
$data modify storage autotest:out failures append value {id:"$(id)",why:"expected $(lo)..$(hi) on $(who)"}
$execute store result storage autotest:out failures[-1].got int 1 run scoreboard players get $(who) autotest
scoreboard players add #fail autotest 1
