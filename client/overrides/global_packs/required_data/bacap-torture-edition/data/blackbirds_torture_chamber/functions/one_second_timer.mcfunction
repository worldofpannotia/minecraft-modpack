# Give turtle with age of less than 0 the tag "baby_turtle"
scoreboard objectives add turtle_age dummy
execute as @e[type=turtle] store result score @s turtle_age run data get entity @s Age
tag @e[scores={turtle_age=-2147483648..-1}] add baby_turtle
tag @e[scores={turtle_age=0..}] remove baby_turtle

# Give villagers with age of less than 0 the tag "baby_villager"
scoreboard objectives add villager_age dummy
execute as @e[type=villager] store result score @s villager_age run data get entity @s Age
tag @e[scores={villager_age=-2147483648..-1}] add baby_villager
tag @e[scores={villager_age=0..}] remove baby_villager

# Give all other animals with age of less than 0 the tag "is_baby"
scoreboard objectives add baby_age dummy
execute as @e store result score @s baby_age run data get entity @s Age
tag @e[scores={baby_age=-2147483648..-1}] add is_baby
tag @e[scores={baby_age=0..}] remove is_baby

# Grant 10, 50 and 100 years advancements
execute as @e[scores={bac_day_count=3650..}] run advancement grant @s only blackbirds_torture_chamber:stats/10_years
execute as @e[scores={bac_day_count=18250..}] run advancement grant @s only blackbirds_torture_chamber:stats/50_years
execute as @e[scores={bac_day_count=36500..}] run advancement grant @s only blackbirds_torture_chamber:stats/100_years

# Grant food advancements
execute as @e[scores={bac_stat_food=10000..}] run advancement grant @s only blackbirds_torture_chamber:stats/eat_10k
execute as @e[scores={bac_stat_food=25000..}] run advancement grant @s only blackbirds_torture_chamber:stats/eat_25k
execute as @e[scores={bac_stat_food=50000..}] run advancement grant @s only blackbirds_torture_chamber:stats/eat_50k

# Grant loot chest advancements
execute as @e[scores={bac_stat_loot_chest=1000..}] run advancement grant @s only blackbirds_torture_chamber:stats/loot_1000
execute as @e[scores={bac_stat_loot_chest=5000..}] run advancement grant @s only blackbirds_torture_chamber:stats/loot_5000
execute as @e[scores={bac_stat_loot_chest=10000..}] run advancement grant @s only blackbirds_torture_chamber:stats/loot_10000

# Grant :startrekkin:
scoreboard objectives add startrekkin minecraft.used:minecraft.ender_pearl
execute as @e[scores={startrekkin=1600}] run advancement grant @s only blackbirds_torture_chamber:stuff/startrekkin

# Chestful of stuff
function blackbirds_torture_chamber:per_second/chestful_of_stuff

# Splat(2)
function blackbirds_torture_chamber:per_second/splat

# Half Heart Life
function blackbirds_torture_chamber:per_second/hardcore_hell

# The Great Flood
function blackbirds_torture_chamber:per_second/the_great_flood

# Must Find Land 
scoreboard objectives add must_find_land dummy
execute as @a if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] run scoreboard players add @s must_find_land 1

# Totem statistic
scoreboard objectives add use_totem minecraft.used:minecraft.totem_of_undying
execute as @e[scores={use_totem=10..}] run advancement grant @s only blackbirds_torture_chamber:stats/10_totems
execute as @e[scores={use_totem=100..}] run advancement grant @s only blackbirds_torture_chamber:stats/100_totems
execute as @e[scores={use_totem=1000..}] run advancement grant @s only blackbirds_torture_chamber:stats/1000_totems
execute as @e[scores={use_totem=10000..}] run advancement grant @s only blackbirds_torture_chamber:stats/10000_totems
execute as @e[scores={use_totem=100000..}] run advancement grant @s only blackbirds_torture_chamber:stats/100000_totems
execute as @e[scores={use_totem=250000..}] run advancement grant @s only blackbirds_torture_chamber:stats/250000_totems

# Apple a year
execute as @a[scores={bac_apple_days=365..}] at @s run advancement grant @s only blackbirds_torture_chamber:stuff/an_apple_a_year

# The world is actually ending
execute as @a if score @s bac_ten_withers matches 64.. run advancement grant @s only blackbirds_torture_chamber:stuff/the_world_is_actually_ending

# Starvin Marvin
scoreboard objectives add starvin_marvin dummy
scoreboard objectives add starvin_marvin_cake minecraft.custom:minecraft.eat_cake_slice
scoreboard players add @a starvin_marvin 1
scoreboard players set @a[scores={starvin_marvin_cake=1..}] starvin_marvin 0
scoreboard players set @a starvin_marvin_cake 0
advancement grant @a[scores={starvin_marvin=438000..}] only blackbirds_torture_chamber:stuff/starvin_marvin

# Washing Statistic
scoreboard objectives add washing_total dummy
scoreboard objectives add washing_shulker minecraft.custom:minecraft.clean_shulker_box
scoreboard objectives add washing_banner minecraft.custom:minecraft.clean_banner
scoreboard objectives add washing_armor minecraft.custom:minecraft.clean_armor

execute as @a run scoreboard players set @s washing_total 0
execute as @a run scoreboard players operation @s washing_total += @s washing_shulker
execute as @a run scoreboard players operation @s washing_total += @s washing_banner
execute as @a run scoreboard players operation @s washing_total += @s washing_armor
execute as @a[scores={washing_total=100..}] run advancement grant @s only blackbirds_torture_chamber:stats/wash_100
execute as @a[scores={washing_total=500..}] run advancement grant @s only blackbirds_torture_chamber:stats/wash_500
execute as @a[scores={washing_total=2500..}] run advancement grant @s only blackbirds_torture_chamber:stats/wash_2500
execute as @a[scores={washing_total=5000..}] run advancement grant @s only blackbirds_torture_chamber:stats/wash_5000
execute as @a[scores={washing_total=10000..}] run advancement grant @s only blackbirds_torture_chamber:stats/wash_10000
execute as @a[scores={washing_total=25000..}] run advancement grant @s only blackbirds_torture_chamber:stats/wash_25000

# Al Gore's Redemption
execute as @a unless data entity @s {Inventory:[{Slot:100b}]} unless data entity @s {Inventory:[{Slot:101b}]} unless data entity @s {Inventory:[{Slot:103b}]} if entity @s[predicate=blackbirds_torture_chamber:al_gore_armor_check] run tag @s add al_gore_check
tag @a[nbt={Inventory:[{Slot:100b}]}] remove al_gore_check
tag @a[nbt={Inventory:[{Slot:101b}]}] remove al_gore_check
tag @a[nbt={Inventory:[{Slot:103b}]}] remove al_gore_check
tag @a[predicate=!blackbirds_torture_chamber:al_gore_armor_check] remove al_gore_check

# Florida Man
execute as @a unless data entity @s {Inventory:[{}]} run tag @s add florida_man
execute as @a if data entity @s {Inventory:[{}]} run tag @s remove florida_man

# A poison a day
scoreboard objectives add poison_eaten minecraft.used:minecraft.poisonous_potato
scoreboard objectives add poison_day dummy
scoreboard objectives add daytime dummy
execute store result score time daytime run time query daytime

execute as @a[scores={poison_eaten=1..99}] run scoreboard players add @s poison_day 1
execute as @a[scores={poison_eaten=1..}] run scoreboard players set @s poison_eaten 100
execute if score time daytime matches 0..20 run execute as @a[scores={poison_eaten=0}] run scoreboard players set @s poison_day 0
execute if score time daytime matches 0..20 run execute as @a[scores={poison_eaten=1..}] run scoreboard players set @s poison_eaten 0
execute as @a[scores={poison_day=365..}] at @s run advancement grant @s only blackbirds_torture_chamber:stuff/a_poison_a_day

# Poison a day trigger
scoreboard objectives add a_poison_a_day trigger
scoreboard players enable @a a_poison_a_day
execute as @a[scores={a_poison_a_day=1..}] run function blackbirds_torture_chamber:per_second/a_poison_a_day
execute as @a[scores={a_poison_a_day=1..}] run scoreboard players set @s a_poison_a_day 0



# Like an Enderman
scoreboard objectives add like_an_enderman dummy

scoreboard players add @a[predicate=blazeandcave:in_the_end] like_an_enderman 1
advancement grant @a[scores={like_an_enderman=438000..}] only blackbirds_torture_chamber:stuff/like_an_enderman
execute as @a unless entity @s[predicate=blazeandcave:in_the_end] run scoreboard players set @s like_an_enderman 0

# I'm a pigman
advancement grant @a[scores={bac_let_me_out=438000..}] only blackbirds_torture_chamber:stuff/im_a_pigman

# Friends?
advancement grant @a[scores={friends=1}] only blackbirds_torture_chamber:stuff/no_friends


# Because I'm batman
scoreboard objectives add drop_spyglass minecraft.dropped:minecraft.spyglass
scoreboard objectives add pick_up_spyglass minecraft.picked_up:minecraft.spyglass
scoreboard objectives add spyglass_math dummy

scoreboard players set @a spyglass_math 0
execute as @a run scoreboard players operation @s spyglass_math -= @s drop_spyglass
execute as @a run scoreboard players operation @s spyglass_math += @s pick_up_spyglass

advancement grant @a[scores={spyglass_math=100..}] only blackbirds_torture_chamber:stuff/because_im_batman

# Riddle 4
advancement grant @a[advancements={blackbirds_torture_chamber:riddle/3=true},scores={bac_warden_count=64..}] only blackbirds_torture_chamber:riddle/4

# Riddle 6
execute as @a at @s if entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:plains"}},distance=..128] run tag @s add zil_pla
execute as @a at @s if entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:savanna"}},distance=..128] run tag @s add zil_sav
execute as @a at @s if entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:desert"}},distance=..128] run tag @s add zil_des
execute as @a at @s if entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:snow"}},distance=..128] run tag @s add zil_sno
execute as @a at @s if entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:taiga"}},distance=..128] run tag @s add zil_tai
execute as @a at @s if entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:jungle"}},distance=..128] run tag @s add zil_jun
execute as @a at @s if entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:swamp"}},distance=..128] run tag @s add zil_swa
execute as @a at @s unless entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:plains"}},distance=..128] run tag @s remove zil_pla
execute as @a at @s unless entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:savanna"}},distance=..128] run tag @s remove zil_sav
execute as @a at @s unless entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:desert"}},distance=..128] run tag @s remove zil_des
execute as @a at @s unless entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:snow"}},distance=..128] run tag @s remove zil_sno
execute as @a at @s unless entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:taiga"}},distance=..128] run tag @s remove zil_tai
execute as @a at @s unless entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:jungle"}},distance=..128] run tag @s remove zil_jun
execute as @a at @s unless entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:swamp"}},distance=..128] run tag @s remove zil_swa
advancement grant @a[advancements={blackbirds_torture_chamber:riddle/5=true},scores={bac_ten_withers=100..},tag=zil_pla,tag=zil_sav,tag=zil_des,tag=zil_sno,tag=zil_tai,tag=zil_jun,tag=zil_swa] only blackbirds_torture_chamber:riddle/6

# Riddle 8
execute as @a at @s if entity @e[type=item_frame,distance=..10,nbt={Item:{id:"minecraft:white_banner",Count:1b,tag:{HideFlags:32,BlockEntityTag:{Patterns:[{Pattern:"mr",Color:9},{Pattern:"bs",Color:8},{Pattern:"cs",Color:7},{Pattern:"bo",Color:8},{Pattern:"ms",Color:15},{Pattern:"hh",Color:8},{Pattern:"mc",Color:8},{Pattern:"bo",Color:15}],id:"minecraft:banner"},display:{Name:'{"color":"gold","translate":"block.minecraft.ominous_banner"}'}}}}] run tag @s add framed_ominous
execute as @a at @s if entity @e[type=item_frame,distance=..10,nbt={Item:{id:"minecraft:dragon_egg",Count:1b}}] run tag @s add framed_dragon
execute as @a at @s if entity @e[type=item_frame,distance=..10,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run tag @s add framed_star
advancement grant @a[advancements={blackbirds_torture_chamber:riddle/7=true},tag=framed_ominous,tag=framed_dragon,tag=framed_star] only blackbirds_torture_chamber:riddle/8

# Make walk, elytra and sprint statistics possible
scoreboard objectives add walking minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add walked_10k_km dummy
scoreboard players add @a[scores={walking=1000000000..}] walked_10k_km 1
scoreboard players remove @a[scores={walking=1000000000..}] walking 1000000000
advancement grant @a[scores={walked_10k_km=10..}] only blackbirds_torture_chamber:stats/walk_100_mil
advancement grant @a[scores={walked_10k_km=100..}] only blackbirds_torture_chamber:stats/walk_1000_mil

scoreboard objectives add sprinting minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add sprinted_10k_km dummy
scoreboard players add @a[scores={sprinting=1000000000..}] sprinted_10k_km 1
scoreboard players remove @a[scores={sprinting=1000000000..}] sprinting 1000000000
advancement grant @a[scores={sprinted_10k_km=10..}] only blackbirds_torture_chamber:stats/sprint_100_mil
advancement grant @a[scores={sprinted_10k_km=100..}] only blackbirds_torture_chamber:stats/sprint_1000_mil

scoreboard objectives add aviateing minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add aviateed_10k_km dummy
scoreboard players add @a[scores={aviateing=1000000000..}] aviateed_10k_km 1
scoreboard players remove @a[scores={aviateing=1000000000..}] aviateing 1000000000
advancement grant @a[scores={aviateed_10k_km=10..}] only blackbirds_torture_chamber:stats/fly_100_mil
advancement grant @a[scores={aviateed_10k_km=100..}] only blackbirds_torture_chamber:stats/fly_1000_mil

# Nose Wars
execute as @a at @s as @e[type=sniffer,distance=..16] at @s if entity @e[type=warden,distance=..5] as @a[distance=..16] run advancement grant @s only blackbirds_torture_chamber:stuff/nose_wars

# Scoreboards
scoreboard objectives add torture_advancements dummy "TE Advancements"
scoreboard objectives add bac_and_torture_advancements dummy "BAC and TE Advancements"

# Interactable Trophies
execute if score interactable_trophies bac_settings matches 1 run function blackbirds_torture_chamber:interactable_trophies/stackable_bow




schedule function blackbirds_torture_chamber:one_second_timer 1s