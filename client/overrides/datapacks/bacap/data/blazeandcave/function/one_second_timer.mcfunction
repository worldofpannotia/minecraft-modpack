# Function runs once per second

# # Trigger commands

# An Apple a Day
scoreboard players enable @a bac_apple_a_day
execute as @a at @s if score @s bac_apple_a_day matches 1.. run function blazeandcave:trigger/apple_a_day

# Dragon (advises whether you are eligible for Dragon vs Dragon, Dragon vs Dragon II, and Dragon vs Dragon: The Pre-Sequel)
scoreboard players enable @a[advancements={blazeandcave:challenges/root=true}] bac_dragon
execute as @a at @s if score @s bac_dragon matches 1.. run function blazeandcave:trigger/dragon

# The Perfect Run
scoreboard players enable @a[advancements={blazeandcave:challenges/root=true}] bac_perfect_run
execute as @a at @s if score @s bac_perfect_run matches 1.. run function blazeandcave:trigger/perfect_run

# Progress
scoreboard players enable @a bac_progress
execute as @a at @s if score @s bac_progress matches 1.. run function blazeandcave:trigger/progress

# Statistics
scoreboard players enable @a bac_statistics
execute as @a at @s if score @s bac_statistics matches 1.. run function blazeandcave:trigger/statistics

# Timers
scoreboard players enable @a bac_timers
execute as @a at @s if score @s bac_timers matches 1.. run function blazeandcave:trigger/timers


# # Llama Festival (progress resets if the player has not completed the advancement and is not sitting on a llama)
execute as @a at @s unless entity @s[predicate=blazeandcave:vehicle/llama] if entity @s[advancements={blazeandcave:animal/llama_festival=false}] run advancement revoke @s only blazeandcave:animal/llama_festival


# # Whole Horse (checks the armor the Horse you are riding is wearing every second)
execute as @a at @s if entity @s[predicate=blazeandcave:vehicle/horse,advancements={blazeandcave:animal/whole_horse=false}] run function blazeandcave:advancement/check/whole_horse

# # Submarine Fleet (checks the armor the Nautilus you are riding is wearing every second)
execute as @a at @s if entity @s[predicate=blazeandcave:vehicle/nautilus,advancements={blazeandcave:biomes/submarine_fleet=false}] run function blazeandcave:advancement/check/submarine_fleet


# # Unwanted Passenger
execute as @a[gamemode=!spectator] at @s run function blazeandcave:advancement/unwanted_passenger


# # Free Diver and Sleep with the Fishes (stay underwater)
execute as @a[gamemode=!spectator] at @s run function blazeandcave:advancement/stay_underwater

# # Captain America (stay in powder snow)
execute as @a[gamemode=!spectator] at @s run function blazeandcave:advancement/captain_america

# # If leashing a boat, bac_leashing_boat score is set to 1 (used for Lead Zeppelin)
scoreboard players set @a bac_leashing_boat 0
execute as @e[type=#blazeandcave:all_boats] on leasher run scoreboard players set @s[type=player] bac_leashing_boat 1


# # On A Rail
execute as @a at @s if score @s bac_oar_eligible_x matches 1 run function blazeandcave:advancement/check/on_a_rail
execute as @a at @s unless score @s bac_oar_eligible_x matches 1 if score @s bac_oar_eligible_z matches 1 run function blazeandcave:advancement/check/on_a_rail


# # Chestful of Cobblestone
execute as @a[advancements={blazeandcave:mining/chestful_of_cobblestone=false}] at @s run function blazeandcave:advancement/check/inventory_chestful_of_cobblestone


# All mobs with Wave set to 1 or higher (part of a raid) get given a special tag for being detected by advancements
# THESE COMMANDS HAVE BEEN COMMENTED OUT - AS OF MC 1.20.5, THE HAS_RAID TYPE_SPECIFIC RAIDER SUB-PREDICATE HAS BEEN ADDED AND ACCOMPLISHES WHAT THIS ONCE DID
#execute as @e[type=#minecraft:raiders] store result score @s bac_part_of_raid run data get entity @s Wave
#tag @e[type=#minecraft:raiders,scores={bac_part_of_raid=1..}] add part_of_raid

# # Full Stomach
advancement grant @a[nbt={foodLevel:20,foodSaturationLevel:20.0f},gamemode=!spectator] only blazeandcave:farming/full_stomach

# # Castaway
# If the player eats dried kelp their score begins to go up once per second
execute as @a[gamemode=!spectator,advancements={blazeandcave:technical/castaway_start=true}] run scoreboard players add @s bac_castaway 1

# After three days they obtain the advancement
advancement grant @a[gamemode=!spectator,scores={bac_castaway=3600..}] only blazeandcave:farming/castaway

# If the player eats anything other than dried kelp they lose their progress and castaway_start is cleared
execute as @a[advancements={blazeandcave:technical/castaway_fail=true}] run function blazeandcave:advancement/castaway_fail


# # Just Keeps Going
# If the player eats rabbit stew their score begins to go up once per second
scoreboard players add @a[gamemode=!spectator,scores={bac_just_keep=1..}] bac_just_keep 1
execute as @a[gamemode=!spectator,advancements={blazeandcave:technical/just_keeps_going_start=true}] run function blazeandcave:advancement/just_keeps_going

# After three days they obtain the advancement
advancement grant @a[scores={bac_just_keep=3600..}] only blazeandcave:animal/just_keeps_going

# If the player eats anything while in progress they lose their progress and just_keeps_going_start is cleared
execute as @a[advancements={blazeandcave:technical/just_keeps_going_fail=true}] run function blazeandcave:advancement/just_keeps_going_fail


# # A Wizard's Breakfast
# If the player eats chorus fruit their timer score begins to go down
scoreboard players remove @a[scores={bac_wiz_break=1..,bac_chorus_reset=1..}] bac_chorus_reset 1
execute as @a[advancements={blazeandcave:technical/a_wizards_breakfast=true}] run function blazeandcave:advancement/a_wizards_breakfast

# If the player reaches 64 chorus fruit they obtain the advancement
advancement grant @a[scores={bac_wiz_break=64..}] only blazeandcave:end/a_wizards_breakfast

# If the player eats anything while in progress OR the time runs out they lose their progress
execute as @a[advancements={blazeandcave:technical/a_wizards_breakfast_fail=true}] run function blazeandcave:advancement/a_wizards_breakfast_fail
execute as @a[scores={bac_chorus_reset=0}] run function blazeandcave:advancement/a_wizards_breakfast_fail


# # I yearned for the mines
# If the player is below y-level 32 in the overworld, their score goes up once per second
scoreboard players add @a[gamemode=!spectator,predicate=blazeandcave:i_yearned_for_the_mines] bac_i_yearned_for_the_mines 1

# After five days (one hour and forty minutes) they obtain the advancement
advancement grant @a[scores={bac_i_yearned_for_the_mines=6000..}] only blazeandcave:mining/i_yearned_for_the_mines

# If the player is not below y-level 32 they lose their progress
execute as @a unless entity @s[predicate=blazeandcave:i_yearned_for_the_mines] run scoreboard players set @s bac_i_yearned_for_the_mines 0

# # Let Me Out!
# If the player is in the Nether their score goes up once per second
scoreboard players add @a[gamemode=!spectator,predicate=blazeandcave:in_the_nether] bac_let_me_out 1

# After twenty days (six hours and forty minutes) they obtain the advancement
advancement grant @a[scores={bac_let_me_out=24000..}] only blazeandcave:nether/let_me_out

# If the player is not in the Nether they lose their progress
execute as @a unless entity @s[predicate=blazeandcave:in_the_nether] run scoreboard players set @s bac_let_me_out 0


# # Loser!
# Counts up once per second
scoreboard players add @a bac_loser 1

# If a player dies the count is reset. If less than 10 seconds are on the count, the "Loser!" advancement is granted
execute as @a[gamemode=!spectator,scores={bac_loser_death=1..}] run function blazeandcave:advancement/loser_death


# # Loser! (Hardcore version) (loser_hurt function is only in Hardcore version)
# If the player has taken damage they have a score added
execute as @a[gamemode=!spectator,scores={bac_loser_hurt=1..}] run function blazeandcave:advancement/loser_hurt


# # Half-Heart Life
# If the player is on half a heart of health they have a score added. Once this score reaches 60 they get the advancement
execute as @a[gamemode=!spectator] if score @s bac_health matches 1 run function blazeandcave:advancement/half_heart_life

# If the player is not on half a heart the score is reset
execute as @a unless score @s bac_health matches 1 run scoreboard players set @s bac_hh_life 0


# # Art Gallery
# If a player places a painting, it checks all paintings within 8 blocks
execute as @a[scores={bac_painting=1..}] at @s run function blazeandcave:advancement/check/paintings


# # A Piglin's Best Friend
# If a player gives gold to a piglin, a score goes up
execute as @a[advancements={blazeandcave:technical/give_piglin_gold=true}] at @s run function blazeandcave:advancement/count/give_piglin_gold


# # Reunion advancements
# The Three Little Pigs
execute as @a[gamemode=!spectator] at @s if entity @e[type=pig,predicate=blazeandcave:entity_variant/pig/cold,distance=..10] if entity @e[type=pig,predicate=blazeandcave:entity_variant/pig/warm,distance=..10] if entity @e[type=pig,predicate=blazeandcave:entity_variant/pig/temperate,distance=..10] run advancement grant @s only blazeandcave:animal/the_three_little_pigs

# Beef Moover
execute as @a[gamemode=!spectator] at @s if entity @e[type=cow,predicate=blazeandcave:entity_variant/cow/cold,distance=..10] if entity @e[type=cow,predicate=blazeandcave:entity_variant/cow/warm,distance=..10] if entity @e[type=cow,predicate=blazeandcave:entity_variant/cow/temperate,distance=..10] run advancement grant @s only blazeandcave:animal/beef_moover

# Chick Buffet
execute as @a[gamemode=!spectator] at @s if entity @e[type=chicken,predicate=blazeandcave:entity_variant/chicken/cold,distance=..10] if entity @e[type=chicken,predicate=blazeandcave:entity_variant/chicken/warm,distance=..10] if entity @e[type=chicken,predicate=blazeandcave:entity_variant/chicken/temperate,distance=..10] run advancement grant @s only blazeandcave:animal/chick_buffet

# Family Reunion
execute as @a[gamemode=!spectator] at @s if entity @e[type=husk,predicate=!blazeandcave:is_baby,distance=..10] if entity @e[type=zombie_villager,predicate=!blazeandcave:is_baby,distance=..10] if entity @e[type=drowned,predicate=!blazeandcave:is_baby,distance=..10] if entity @e[type=zombified_piglin,predicate=!blazeandcave:is_baby,distance=..10] if entity @e[type=zombie,predicate=!blazeandcave:is_baby,distance=..10] if entity @e[type=husk,predicate=blazeandcave:is_baby,distance=..10] if entity @e[type=zombie_villager,predicate=blazeandcave:is_baby,distance=..10] if entity @e[type=drowned,predicate=blazeandcave:is_baby,distance=..10] if entity @e[type=zombified_piglin,predicate=blazeandcave:is_baby,distance=..10] if entity @e[type=zombie,predicate=blazeandcave:is_baby,distance=..10] run advancement grant @s only blazeandcave:monsters/family_reunion

# Bone-to-Party
execute as @a[gamemode=!spectator] at @s if entity @e[type=skeleton_horse,distance=..10] if entity @e[type=wither,distance=..10] if entity @e[type=parched,distance=..10] if entity @e[type=stray,distance=..10] if entity @e[type=bogged,distance=..10] if entity @e[type=wither_skeleton,distance=..10] if entity @e[type=skeleton,distance=..10] run advancement grant @s only blazeandcave:monsters/bone_to_party

# Jockey Jamboree
execute as @a[gamemode=!spectator] at @s if entity @e[type=strider,predicate=blazeandcave:jockeys/strider,distance=..16] run function blazeandcave:advancement/check/jockey_jamboree

# Animal Kingdom
execute as @a[gamemode=!spectator] at @s if entity @e[type=mule,distance=..32] run function blazeandcave:advancement/check/animal_kingdom


# # Not Afraid of Heights
execute as @e[type=warden,predicate=blazeandcave:at_world_height] at @s run advancement grant @a[gamemode=!spectator,distance=..10] only blazeandcave:monsters/not_afraid_of_heights


# # House of Freaks & Overwarden
execute as @a[gamemode=!spectator] at @s if entity @e[type=warden,distance=..100] run function blazeandcave:advancement/count/wardens


# # Le creak, c'est chic
execute as @a[gamemode=!spectator] at @s if entity @e[type=creaking,distance=..40] run function blazeandcave:advancement/count/creaking


# # Counting Sheep
execute as @a[gamemode=!spectator] at @s if entity @e[type=sheep,distance=..16] run function blazeandcave:advancement/count/sheep


# # Splatfest
execute as @e[type=egg,tag=!splatfest_tagged] run function blazeandcave:advancement/count/eggs_tag
execute as @a[gamemode=!spectator] at @s if entity @e[type=egg,distance=..48] run function blazeandcave:advancement/count/eggs


# # Copper Golem Overlord
execute as @a at @s if entity @e[type=copper_golem,distance=..10] run function blazeandcave:advancement/count/copper_golem


# # Redemption Arc
execute as @e[type=pillager,predicate=blazeandcave:no_crossbow] at @s run advancement grant @a[gamemode=!spectator,distance=..5] only blazeandcave:adventure/redemption_arc


# # The Wicked Witch of the West
execute as @e[type=witch,predicate=blazeandcave:vehicle/chicken] at @s run advancement grant @a[gamemode=!spectator,distance=..5] only blazeandcave:monsters/the_wicked_witch_of_the_west


# # Unending Hell
execute as @a[advancements={blazeandcave:technical/unending_hell_end=true}] at @s run function blazeandcave:advancement/check/unending_hell


# # Taking the Scenic Route
execute as @a[predicate=blazeandcave:scenic_route/100] run scoreboard players set @s bac_scenic_route 1
execute as @a[scores={bac_scenic_route=1..}] at @s run function blazeandcave:advancement/check/scenic_route


# # Event Horizon
advancement revoke @a[predicate=!blazeandcave:in_the_end] only blazeandcave:technical/below_void

# A player gains the score '1' in event_horizon upon going below the void
execute as @a[gamemode=!spectator,scores={bac_health=1..},advancements={blazeandcave:technical/below_void=true}] run function blazeandcave:advancement/below_void

# If the player dies they lose the score
## Command in tick

# If the player makes it above y = 0 they gain the advancement
execute as @a[gamemode=!spectator,advancements={blazeandcave:technical/return_from_void=true},scores={bac_eventhorizon=1}] run advancement grant @s only blazeandcave:end/event_horizon


# Diver's Dozen - in liquid fail
execute as @a[scores={bac_divers_dozen_count=1..}] if predicate blazeandcave:in_liquid run scoreboard players set @s bac_divers_dozen_count 0


# # Dragon vs Dragon
# A player gains the score '1' in bac_dvd upon respawning the dragon
execute as @a[advancements={blazeandcave:technical/respawn_dragon=true}] run scoreboard players set @s bac_dvd 1

# It is set back to '0' if they are not wearing a dragon head, which will disqualify their eligibility for obtaining this advancement
execute as @a[scores={bac_dvd=1}] unless entity @s[predicate=blazeandcave:equipment/dragon_head] run scoreboard players set @s bac_dvd 0

# If the player successfully kills the Ender Dragon still with a score of '1' they will gain the advancement
execute as @a[advancements={blazeandcave:technical/kill_dragon=true},scores={bac_dvd=1}] run advancement grant @s only blazeandcave:end/dragon_vs_dragon


# # Dragon vs Dragon II: Electric Boogaloo
# A player gains the score '1' in bac_dvd2eb upon respawning the dragon
execute as @a[advancements={blazeandcave:technical/respawn_dragon=true}] run function blazeandcave:advancement/dvd2eb_start

# It is set back to '0' if they touch the ground OR are not wearing a dragon head, which will disqualify their eligibility for obtaining this advancement
# Players are also disqualified for touching water, lava, or riding any vehicle
execute as @a[scores={bac_dvd2eb=1}] run function blazeandcave:advancement/dvd2eb_fail_check

# If the player successfully kills the Ender Dragon still with a score of '1' they will gain the advancement
execute as @a[advancements={blazeandcave:technical/kill_dragon=true},scores={bac_dvd2eb=1}] run advancement grant @s only blazeandcave:challenges/dragon_vs_dragon_ii_electric_boogaloo
execute as @a[advancements={blazeandcave:technical/kill_dragon=true}] run advancement revoke @s only blazeandcave:technical/kill_dragon


# # Dragon vs Wither: The Pre-Sequel
# A player gains the score '1' in bac_dveps upon respawning the wither
execute as @a[advancements={blazeandcave:technical/respawn_wither=true}] run function blazeandcave:advancement/dveps_start

# It is set back to '0' if they touch the ground OR are not wearing a dragon head AND more than 11 seconds has passed since spawning the Wither. Failing will disqualify their eligibility for obtaining this advancement
scoreboard players remove @a[scores={bac_withercool=1..}] bac_withercool 1
execute as @a[scores={bac_dveps=1}] unless score @s bac_withercool matches 1.. run function blazeandcave:advancement/dveps_fail_check

scoreboard players set @s bac_dveps 0

# If the player successfully kills the Wither still with a score of '1' they will gain the advancement
execute as @a[advancements={blazeandcave:technical/kill_wither=true},scores={bac_dveps=1}] run advancement grant @s only blazeandcave:challenges/dragon_vs_wither_the_pre_sequel
execute as @a[advancements={blazeandcave:technical/kill_wither=true}] run advancement revoke @s only blazeandcave:technical/kill_wither


# # The Perfect Run
# When spawning a Dragon, Wither or a Raid, the player has a time limit of thirty seconds to spawn the other two
execute as @a[advancements={blazeandcave:technical/spawn_perfect_one=true}] unless score @s bac_pr_tl matches 1.. run function blazeandcave:advancement/perfect_run_start
execute as @a[advancements={blazeandcave:technical/spawn_perfect_one=false}] run advancement revoke @s only blazeandcave:technical/spawn_perfect_all

# If all three are successfully spawned before thirty seconds elapses, the countdown timer stops
execute as @a[scores={bac_pr_tl=1..}] unless entity @s[advancements={blazeandcave:technical/spawn_perfect_all=true}] run scoreboard players remove @s bac_pr_tl 1

# If the countdown timer reaches 0 then the player is disqualified
execute as @a[advancements={blazeandcave:technical/spawn_perfect_one=true},scores={bac_pr_tl=0}] run function blazeandcave:advancement/perfect_run_fail

# If the player takes damage at any stage then the player is disqualified
execute as @a[advancements={blazeandcave:technical/spawn_perfect_one=true},scores={bac_pr_dmgt=1..}] run function blazeandcave:advancement/perfect_run_fail
execute as @a[advancements={blazeandcave:technical/spawn_perfect_one=true},scores={bac_pr_dmga=1..}] run function blazeandcave:advancement/perfect_run_fail
execute as @a[advancements={blazeandcave:technical/spawn_perfect_one=true},scores={bac_pr_dmgr=1..}] run function blazeandcave:advancement/perfect_run_fail

# If the player successfully lands the killing blow on the Dragon, Wither, and wins the Raid, the advancement is granted
# Once all three are spawned, the player has unlimited time to do all of these. The only condition is that they cannot take damage


# # Riddle Me This
# For the third line, if you are NOT riding an upside-down mount the scoreboards reset
execute as @a unless predicate blazeandcave:third_line run function blazeandcave:advancement/riddle/third_line_reset

## The following were commented out as this is now handled using the technical place_warped_button advancement
# For the tenth line, it only starts counting once the player has completed the ninth line
#execute as @a if entity @s[advancements={blazeandcave:technical/riddle_ninth_line=false}] run scoreboard players set @s bac_1000th_item 0

# Once they have placed 1000 Warped Buttons, the tenth line is complete
#execute as @a if entity @s[advancements={blazeandcave:technical/riddle_ninth_line=true}] if score @s bac_1000th_item matches 1000.. run advancement grant @s only blazeandcave:technical/riddle_tenth_line


# Runs the ten_second_timer every 10 times
scoreboard players add ten_second bac_timer 1
execute if score ten_second bac_timer matches 10.. run function blazeandcave:ten_second_timer

schedule function blazeandcave:one_second_timer 1s
