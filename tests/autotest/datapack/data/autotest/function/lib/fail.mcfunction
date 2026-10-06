$tellraw @a [{"text":"[autotest] FAIL ","color":"red"},{"text":"$(id)","color":"white"},{"text":"  - $(why)","color":"gray"}]
$data modify storage autotest:out failures append value {id:"$(id)",why:"$(why)"}
scoreboard players add #fail autotest 1
