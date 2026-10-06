execute if score #fail autotest matches 0 run return run tellraw @a {"text":"[autotest] no failures recorded","color":"green"}
tellraw @a [{"text":"[autotest] failures:\n","color":"red"},{"nbt":"failures[].id","storage":"autotest:out","separator":"\n","color":"white"}]
