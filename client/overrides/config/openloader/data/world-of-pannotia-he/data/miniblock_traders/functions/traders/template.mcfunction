# --------------------------------------------------------------- #
#                   MINIBLOCK TRADERS DATAPACK                    #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Destroy the item used to convert the villager.
kill @e[type=item,nbt={Item:{tag:{tag:mt_tag}}},distance=..0.5]

# Fun effects to give user feedback that the transformation worked.
execute at @s run particle minecraft:happy_villager ~ ~ ~ 0.3 1 0.3 100 250
playsound minecraft:entity.experience_orb.pickup ambient @a[distance=..8] ~ ~ ~ 30

# Relevant Tags for utility and compatibility
tag @s add mt_trader
tag @s add mt_trader_tag
tag @s add global.ignore
tag @s add global.ignore.pos
tag @s add global.ignore.gui
tag @s add global.ignore.kill

# The below command split into lines to make it easier to read. It will not run unless it is a single line.
# data merge entity @s {VillagerData:{profession:nitwit,level:5,type:plains},PersistenceRequired:1,CustomName:"\"TemplateNameHere\"",Offers:{Recipes:[
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
#     {buy:{id:emerald,Count:1},sell:{id:"player_head",tag:REPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXTREPLACEMEWITHTHECOPYPASTETEXT,Count:1},rewardExp:0b,maxUses:9999999},
# ]}}

# Apply villager trades.


# Talk to me
tellraw @e[type=player,distance=..16] [{"text":"<","color":"white"},{"text":"TRADERNAMETRADERNAMETRADERNAME","color":"gold"},{"text":">","color":"white"},{"text":" TRADERTEXTTRADERTEXTTRADERTEXTTRADERTEXT","color":"green"}]