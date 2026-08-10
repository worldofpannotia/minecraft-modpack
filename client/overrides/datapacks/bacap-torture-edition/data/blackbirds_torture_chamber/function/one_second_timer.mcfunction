# Grant 10, 50 and 100 years advancements
execute as @a[scores={bac_day_count=3650..},advancements={blackbirds_torture_chamber:stats/10_years=false}] run advancement grant @s only blackbirds_torture_chamber:stats/10_years
execute as @a[scores={bac_day_count=18250..},advancements={blackbirds_torture_chamber:stats/25_years=false}] run advancement grant @s only blackbirds_torture_chamber:stats/25_years
execute as @a[scores={bac_day_count=36500..},advancements={blackbirds_torture_chamber:stats/50_years=false}] run advancement grant @s only blackbirds_torture_chamber:stats/50_years

# Grant :startrekkin:
execute as @a[scores={startrekkin=1600},advancements={blackbirds_torture_chamber:stuff/startrekkin=false}] run advancement grant @s only blackbirds_torture_chamber:stuff/startrekkin

# Chestful of stuff
execute as @a[advancements={blackbirds_torture_chamber:stuff/chestful_of_candle=false}] run function blackbirds_torture_chamber:per_second/chestful_of_stuff
execute as @a[advancements={blackbirds_torture_chamber:stuff/chestful_of_candle=true,blackbirds_torture_chamber:stuff/chestful_of_conduit=false}] run function blackbirds_torture_chamber:per_second/chestful_of_stuff
execute as @a[advancements={blackbirds_torture_chamber:stuff/chestful_of_candle=true,blackbirds_torture_chamber:stuff/chestful_of_conduit=true,blackbirds_torture_chamber:stuff/chestful_of_dispenser=true}] run function blackbirds_torture_chamber:per_second/chestful_of_stuff
execute as @a[advancements={blackbirds_torture_chamber:stuff/chestful_of_candle=true,blackbirds_torture_chamber:stuff/chestful_of_conduit=true,blackbirds_torture_chamber:stuff/chestful_of_dispenser=true,blackbirds_torture_chamber:stuff/chestful_of_dragon_head=false}] run function blackbirds_torture_chamber:per_second/chestful_of_stuff
execute as @a[advancements={blackbirds_torture_chamber:stuff/chestful_of_candle=true,blackbirds_torture_chamber:stuff/chestful_of_conduit=true,blackbirds_torture_chamber:stuff/chestful_of_dispenser=true,blackbirds_torture_chamber:stuff/chestful_of_dragon_head=true,blackbirds_torture_chamber:stuff/chestful_of_emerald_ore=false}] run function blackbirds_torture_chamber:per_second/chestful_of_stuff
execute as @a[advancements={blackbirds_torture_chamber:stuff/chestful_of_candle=true,blackbirds_torture_chamber:stuff/chestful_of_conduit=true,blackbirds_torture_chamber:stuff/chestful_of_dispenser=true,blackbirds_torture_chamber:stuff/chestful_of_dragon_head=true,blackbirds_torture_chamber:stuff/chestful_of_emerald_ore=true,blackbirds_torture_chamber:stuff/chestful_of_netherite_blocks=false}] run function blackbirds_torture_chamber:per_second/chestful_of_stuff
execute as @a[advancements={blackbirds_torture_chamber:stuff/chestful_of_candle=true,blackbirds_torture_chamber:stuff/chestful_of_conduit=true,blackbirds_torture_chamber:stuff/chestful_of_dispenser=true,blackbirds_torture_chamber:stuff/chestful_of_dragon_head=true,blackbirds_torture_chamber:stuff/chestful_of_emerald_ore=true,blackbirds_torture_chamber:stuff/chestful_of_netherite_blocks=true,blackbirds_torture_chamber:stuff/chestful_of_rabbit_feet=false}] run function blackbirds_torture_chamber:per_second/chestful_of_stuff
execute as @a[advancements={blackbirds_torture_chamber:stuff/chestful_of_candle=true,blackbirds_torture_chamber:stuff/chestful_of_conduit=true,blackbirds_torture_chamber:stuff/chestful_of_dispenser=true,blackbirds_torture_chamber:stuff/chestful_of_dragon_head=true,blackbirds_torture_chamber:stuff/chestful_of_emerald_ore=true,blackbirds_torture_chamber:stuff/chestful_of_netherite_blocks=true,blackbirds_torture_chamber:stuff/chestful_of_rabbit_feet=true,blackbirds_torture_chamber:stuff/chestful_of_skeleton_skulls=false}] run function blackbirds_torture_chamber:per_second/chestful_of_stuff
execute as @a[advancements={blackbirds_torture_chamber:stuff/chestful_of_candle=true,blackbirds_torture_chamber:stuff/chestful_of_conduit=true,blackbirds_torture_chamber:stuff/chestful_of_dispenser=true,blackbirds_torture_chamber:stuff/chestful_of_dragon_head=true,blackbirds_torture_chamber:stuff/chestful_of_emerald_ore=true,blackbirds_torture_chamber:stuff/chestful_of_netherite_blocks=true,blackbirds_torture_chamber:stuff/chestful_of_rabbit_feet=true,blackbirds_torture_chamber:stuff/chestful_of_skeleton_skulls=true}] if entity @s[advancements={blackbirds_torture_chamber:stuff/chestful_of_bee_nest=false}] run function blackbirds_torture_chamber:per_second/chestful_of_stuff
execute as @a[advancements={blackbirds_torture_chamber:stuff/chestful_of_candle=true,blackbirds_torture_chamber:stuff/chestful_of_conduit=true,blackbirds_torture_chamber:stuff/chestful_of_dispenser=true,blackbirds_torture_chamber:stuff/chestful_of_dragon_head=true,blackbirds_torture_chamber:stuff/chestful_of_emerald_ore=true,blackbirds_torture_chamber:stuff/chestful_of_netherite_blocks=true,blackbirds_torture_chamber:stuff/chestful_of_rabbit_feet=true,blackbirds_torture_chamber:stuff/chestful_of_skeleton_skulls=true}] if entity @s[advancements={blackbirds_torture_chamber:stuff/chestful_of_bee_nest=true,blackbirds_torture_chamber:stuff/chestful_of_beacons=false}] run function blackbirds_torture_chamber:per_second/chestful_of_stuff

# Locked Position
execute as @a[advancements={blackbirds_torture_chamber:stuff/locked_position=false}] at @s if block ~ ~ ~ repeater[locked=true] run advancement grant @s only blackbirds_torture_chamber:stuff/locked_position

# Splat(2)
execute as @a[advancements={blackbirds_torture_chamber:stuff/splat2=false}] run function blackbirds_torture_chamber:per_second/splat

# Half Heart Life
execute as @a[advancements={blackbirds_torture_chamber:stuff/hardcore_hell_2=false}] run function blackbirds_torture_chamber:per_second/hardcore_hell

# The Great Flood
execute as @a[advancements={blackbirds_torture_chamber:stuff/the_great_flood=false}] run function blackbirds_torture_chamber:per_second/the_great_flood

# Must Find Land 
execute as @a[advancements={blackbirds_torture_chamber:stuff/must_find_land=false}] if predicate {condition:"entity_properties",entity:"this",predicate:{vehicle:{entity_type:"#blazeandcave:all_boats"}}} run scoreboard players add @s must_find_land 1
advancement grant @a[advancements={blackbirds_torture_chamber:stuff/must_find_land=false},scores={must_find_land=90000..}] only blackbirds_torture_chamber:stuff/must_find_land

# Apple a year
execute as @a[scores={bac_apple_days=365..}] at @s if entity @s[advancements={blackbirds_torture_chamber:stuff/an_apple_a_year=false}] run advancement grant @s only blackbirds_torture_chamber:stuff/an_apple_a_year

# The world is actually ending
execute as @a[advancements={blackbirds_torture_chamber:stuff/the_world_is_actually_ending=false}] if score @s bac_ten_withers matches 64.. run advancement grant @s only blackbirds_torture_chamber:stuff/the_world_is_actually_ending

# Starvin Marvin
scoreboard players add @a starvin_marvin 1
scoreboard players set @a[scores={starvin_marvin_cake=1..}] starvin_marvin 0
scoreboard players set @a starvin_marvin_cake 0
execute as @a[advancements={blackbirds_torture_chamber:stuff/starvin_marvin=false}] run advancement grant @a[scores={starvin_marvin=438000..}] only blackbirds_torture_chamber:stuff/starvin_marvin

# A poison a day
execute store result score time daytime run time query minecraft:day

execute as @a[scores={poison_eaten=1..99}] run scoreboard players add @s poison_day 1
execute as @a[scores={poison_eaten=1..}] run scoreboard players set @s poison_eaten 100
execute if score time daytime matches 0..20 run execute as @a[scores={poison_eaten=0}] run scoreboard players set @s poison_day 0
execute if score time daytime matches 0..20 run execute as @a[scores={poison_eaten=1..}] run scoreboard players set @s poison_eaten 0
execute as @a[scores={poison_day=365..}] at @s run advancement grant @s only blackbirds_torture_chamber:stuff/a_poison_a_day

# Poison a day trigger
scoreboard players enable @a a_poison_a_day
execute as @a[scores={a_poison_a_day=1..}] run function blackbirds_torture_chamber:per_second/a_poison_a_day
execute as @a[scores={a_poison_a_day=1..}] run scoreboard players set @s a_poison_a_day 0

# Like an Enderman
execute as @a[advancements={blackbirds_torture_chamber:stuff/like_an_enderman=false}] run scoreboard players add @a[predicate=blazeandcave:in_the_end] like_an_enderman 1
execute as @a[advancements={blackbirds_torture_chamber:stuff/like_an_enderman=false}] run advancement grant @a[scores={like_an_enderman=438000..}] only blackbirds_torture_chamber:stuff/like_an_enderman
execute as @a unless entity @s[predicate=blazeandcave:in_the_end] run scoreboard players set @s like_an_enderman 0

# I'm a pigman
execute as @a[scores={bac_let_me_out=438000..},advancements={blackbirds_torture_chamber:stuff/im_a_pigman=false}] run advancement grant @s only blackbirds_torture_chamber:stuff/im_a_pigman

# Friends?
execute as @a[scores={friends=1},advancements={blackbirds_torture_chamber:stuff/no_friends=false}] run advancement grant @s only blackbirds_torture_chamber:stuff/no_friends

# Riddle 4
execute as @a[advancements={blackbirds_torture_chamber:riddle/3=true,blackbirds_torture_chamber:riddle/4=false},scores={bac_warden_count=64..}] run advancement grant @s only blackbirds_torture_chamber:riddle/4

# Riddle 6
execute as @a[advancements={blackbirds_torture_chamber:riddle/5=true,blackbirds_torture_chamber:riddle/6=false},scores={bac_ten_withers=100..}] at @s if entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:plains"}},distance=..128] if entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:savanna"}},distance=..128] if entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:desert"}},distance=..128] if entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:snow"}},distance=..128] if entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:taiga"}},distance=..128] if entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:jungle"}},distance=..128] if entity @e[type=zombie_villager,nbt={VillagerData:{type:"minecraft:swamp"}},distance=..128] run advancement grant @s only blackbirds_torture_chamber:riddle/6

# Make elytra= statistics possible
execute as @a[advancements={blackbirds_torture_chamber:stats/fly_50k=false}] run scoreboard players add @a[scores={aviateing=1000000000..}] aviateed_10k_km 1
execute as @a[advancements={blackbirds_torture_chamber:stats/fly_50k=false}] run scoreboard players remove @a[scores={aviateing=1000000000..}] aviateing 1000000000
execute as @a[advancements={blackbirds_torture_chamber:stats/fly_50k=false}] run advancement grant @a[scores={aviateed_10k_km=5..}] only blackbirds_torture_chamber:stats/fly_50k

# Nose Wars
execute as @a[advancements={blackbirds_torture_chamber:stuff/nose_wars=false}] at @s as @e[type=sniffer,distance=..16] at @s if entity @e[type=warden,distance=..5] as @a[distance=..16] run advancement grant @s only blackbirds_torture_chamber:stuff/nose_wars

# Interactable Trophies
execute if score interactable_trophies bac_settings matches 1 run function blackbirds_torture_chamber:interactable_trophies/stackable_bow

# Update the BACandTE scoreboard
function blackbirds_torture_chamber:update_score

# Give bee with anger time of more than 0 the tag "angry_bee"
execute as @e[type=bee] store result score @s angry_state_bee run data get entity @s anger_end_time
tag @e[type=bee,tag=!calm_bee,scores={angry_state_bee=-1}] add calm_bee
tag @e[type=bee,tag=!angry_bee,scores={angry_state_bee=0..}] add angry_bee
tag @e[type=bee,tag=calm_bee,scores={angry_state_bee=0..}] remove calm_bee
tag @e[type=bee,tag=angry_bee,scores={angry_state_bee=-1}] remove angry_bee

# Give untamed wolves untamed wolf tag
tag @e[type=wolf,nbt={attributes:[{id:"minecraft:max_health", base: 40.0d}]},tag=!bac_tamed_wolf] add bac_tamed_wolf
tag @e[type=wolf,tag=!bac_tamed_wolf,tag=!bac_untamed_wolf] add bac_untamed_wolf
tag @e[type=wolf,tag=bac_tamed_wolf,tag=bac_untamed_wolf] remove bac_untamed_wolf

# Give wolf with anger time of more than 0 the tag "angry_wolf"
execute as @e[type=wolf] store result score @s angry_state_wolf run data get entity @s anger_end_time
tag @e[type=wolf,scores={angry_state_wolf=-1},tag=!calm_wolf] add calm_wolf
tag @e[type=wolf,scores={angry_state_wolf=0..},tag=!angry_wolf] add angry_wolf
tag @e[type=wolf,scores={angry_state_wolf=0..},tag=calm_wolf] remove calm_wolf
tag @e[type=wolf,scores={angry_state_wolf=-1},tag=angry_wolf] remove angry_wolf

# Give Iron Golem their broken state
execute as @e[type=iron_golem] store result score @s golem_broken_state run data get entity @s Health
tag @e[type=iron_golem,scores={golem_broken_state=0..24},tag=!very_broken] add very_broken
tag @e[type=iron_golem,scores={golem_broken_state=0..24},tag=broken] remove broken
tag @e[type=iron_golem,scores={golem_broken_state=0..24},tag=chipped] remove chipped
tag @e[type=iron_golem,scores={golem_broken_state=0..24},tag=intact] remove intact
tag @e[type=iron_golem,scores={golem_broken_state=25..49},tag=very_broken] remove very_broken
tag @e[type=iron_golem,scores={golem_broken_state=25..49},tag=!broken] add broken
tag @e[type=iron_golem,scores={golem_broken_state=25..49},tag=chipped] remove chipped
tag @e[type=iron_golem,scores={golem_broken_state=25..49},tag=intact] remove intact
tag @e[type=iron_golem,scores={golem_broken_state=50..74},tag=very_broken] remove very_broken
tag @e[type=iron_golem,scores={golem_broken_state=50..74},tag=broken] remove broken
tag @e[type=iron_golem,scores={golem_broken_state=50..74},tag=!chipped] add chipped
tag @e[type=iron_golem,scores={golem_broken_state=50..74},tag=intact] remove intact
tag @e[type=iron_golem,scores={golem_broken_state=75..100},tag=very_broken] remove very_broken
tag @e[type=iron_golem,scores={golem_broken_state=75..100},tag=broken] remove broken
tag @e[type=iron_golem,scores={golem_broken_state=75..100},tag=chipped] remove chipped
tag @e[type=iron_golem,scores={golem_broken_state=75..100},tag=!intact] add intact

#Fasty flappy
execute as @a[advancements={blackbirds_torture_chamber:stuff/fasty_flappy=false}] at @s if entity @e[type=turtle,predicate=blackbirds_torture_chamber:speed2_effect,distance=..16] run advancement grant @s only blackbirds_torture_chamber:stuff/fasty_flappy

#Tools reunion
execute as @a[advancements={blackbirds_torture_chamber:stuff/tools_reunion=false}] at @s if entity @e[type=zombified_piglin,nbt={equipment:{mainhand:{id:"minecraft:golden_sword",count:1}}},distance=..10] if entity @e[type=zombified_piglin,nbt={equipment:{mainhand:{id:"minecraft:golden_axe",count:1}}},distance=..10] if entity @e[type=zombified_piglin,nbt={equipment:{mainhand:{id:"minecraft:crossbow",count:1}}},distance=..10] if entity @e[type=zombified_piglin,nbt={equipment:{mainhand:{id:"minecraft:warped_fungus_on_a_stick",count:1}}},distance=..10] if entity @e[type=zombified_piglin,nbt=!{equipment:{mainhand:{}}},distance=..10] if entity @e[type=zombified_piglin,nbt={equipment:{mainhand:{id:"minecraft:golden_spear",count:1}}},distance=..10] run advancement grant @s only blackbirds_torture_chamber:stuff/tools_reunion

#te scoreboard trigger
execute as @a[scores={te_scoreboards=1..}] run function blackbirds_torture_chamber:te_scoreboards

#te friends trigger
execute as @a[scores={te_friend_count=1..}] run function blackbirds_torture_chamber:te_friend_count

#te food scoreboards trigger
execute as @a[scores={te_food_scoreboards=1..}] run function blackbirds_torture_chamber:te_food_scoreboards

#Legend of Hell Rider
execute as @a[advancements={blackbirds_torture_chamber:stuff/legend_of_hell_rider=false}] if predicate {condition:"entity_properties",entity:"this",predicate:{vehicle:{entity_type:"zombified_piglin"}}} run advancement grant @s only blackbirds_torture_chamber:stuff/legend_of_hell_rider

# Give Copper Golem their Waxing tag
tag @e[type=copper_golem,nbt={next_weather_age : -2L},tag=!is_waxed] add is_waxed
tag @e[type=copper_golem,nbt={next_weather_age : -2L},tag=is_not_waxed] remove is_not_waxed
tag @e[type=copper_golem,nbt=!{next_weather_age : -2L},tag=is_waxed] remove is_waxed
tag @e[type=copper_golem,nbt=!{next_weather_age : -2L},tag=!is_not_waxed] add is_not_waxed



schedule function blackbirds_torture_chamber:one_second_timer 1s
