# Function that grants you trophies depending on how many advancements that grant you trophies you have obtained in your world so far
# For use if you have a world that ran 1.10.2 or an earlier version of the pack and updated to 1.11 but want to get the trophies of advancements that you've already obtained
# Note: The trophy setting will remain the same as it was set previously, so even if they were turned off, they will be granted by this function and remain off afterwards


# Goes through every advancement, and grants 1 trophy if you have obtained that advancement

function #bacap_fanpacks:config/grant_trophies

# Vanilla Stuff
execute as @s[advancements={minecraft:husbandry/break_diamond_hoe=true}] run function bacap_rewards:trophy/farming/serious_dedication
execute as @s[advancements={minecraft:husbandry/bred_all_animals=true}] run function bacap_rewards:trophy/animal/two_by_two
execute as @s[advancements={minecraft:adventure/kill_all_mobs=true}] run function bacap_rewards:trophy/combat/monsters_hunted
execute as @s[advancements={minecraft:husbandry/complete_catalogue=true}] run function bacap_rewards:trophy/adventure/a_complete_catalogue
execute as @s[advancements={minecraft:adventure/bullseye=true}] run function bacap_rewards:trophy/redstone/bullseye
execute as @s[advancements={minecraft:adventure/arbalistic=true}] run function bacap_rewards:trophy/enchanting/arbalistic
execute as @s[advancements={minecraft:nether/create_full_beacon=true}] run function bacap_rewards:trophy/nether/beaconator
execute as @s[advancements={minecraft:nether/all_effects=true}] run function bacap_rewards:trophy/challenges/how_did_we_get_here

# BlazeandCave’s Advancements
execute as @s[advancements={blazeandcave:bacap/mining_milestone=true}] run function bacap_rewards:trophy/bacap/mining_milestone
execute as @s[advancements={blazeandcave:bacap/building_milestone=true}] run function bacap_rewards:trophy/bacap/building_milestone
execute as @s[advancements={blazeandcave:bacap/farming_milestone=true}] run function bacap_rewards:trophy/bacap/farming_milestone
execute as @s[advancements={blazeandcave:bacap/animal_milestone=true}] run function bacap_rewards:trophy/bacap/animal_milestone
execute as @s[advancements={blazeandcave:bacap/monsters_milestone=true}] run function bacap_rewards:trophy/bacap/monsters_milestone
execute as @s[advancements={blazeandcave:bacap/weaponry_milestone=true}] run function bacap_rewards:trophy/bacap/weaponry_milestone
execute as @s[advancements={blazeandcave:bacap/biomes_milestone=true}] run function bacap_rewards:trophy/bacap/biomes_milestone
execute as @s[advancements={blazeandcave:bacap/adventure_milestone=true}] run function bacap_rewards:trophy/bacap/adventure_milestone
execute as @s[advancements={blazeandcave:bacap/redstone_milestone=true}] run function bacap_rewards:trophy/bacap/redstone_milestone
execute as @s[advancements={blazeandcave:bacap/enchanting_milestone=true}] run function bacap_rewards:trophy/bacap/enchanting_milestone
execute as @s[advancements={blazeandcave:bacap/statistics_milestone=true}] run function bacap_rewards:trophy/bacap/statistics_milestone
execute as @s[advancements={blazeandcave:bacap/nether_milestone=true}] run function bacap_rewards:trophy/bacap/nether_milestone
execute as @s[advancements={blazeandcave:bacap/potion_milestone=true}] run function bacap_rewards:trophy/bacap/potion_milestone
execute as @s[advancements={blazeandcave:bacap/end_milestone=true}] run function bacap_rewards:trophy/bacap/end_milestone
execute as @s[advancements={blazeandcave:bacap/challenges_milestone=true}] run function bacap_rewards:trophy/bacap/challenges_milestone
execute as @s[advancements={blazeandcave:bacap/advancement_legend=true}] run function bacap_rewards:trophy/bacap/advancement_legend

# Mining
execute as @s[advancements={blazeandcave:mining/weve_broken_our_last_shovel=true}] run function bacap_rewards:trophy/mining/weve_broken_our_last_shovel
execute as @s[advancements={blazeandcave:mining/master_coal_miner=true}] run function bacap_rewards:trophy/mining/master_coal_miner
execute as @s[advancements={blazeandcave:mining/master_iron_miner=true}] run function bacap_rewards:trophy/mining/master_iron_miner
execute as @s[advancements={blazeandcave:mining/master_gold_miner=true}] run function bacap_rewards:trophy/mining/master_gold_miner
execute as @s[advancements={blazeandcave:mining/master_diamond_miner=true}] run function bacap_rewards:trophy/mining/master_diamond_miner

# Building
execute as @s[advancements={blazeandcave:building/master_logger=true}] run function bacap_rewards:trophy/building/master_logger
execute as @s[advancements={blazeandcave:building/let_there_be_light=true}] run function bacap_rewards:trophy/building/let_there_be_light
execute as @s[advancements={blazeandcave:building/fruit_of_the_looms=true}] run function bacap_rewards:trophy/building/fruit_of_the_looms
execute as @s[advancements={blazeandcave:building/harry_potter=true}] run function bacap_rewards:trophy/building/harry_potter
execute as @s[advancements={blazeandcave:building/insomniac=true}] run function bacap_rewards:trophy/building/insomniac

# Farming
execute as @s[advancements={blazeandcave:farming/a_gluttonous_diet=true}] run function bacap_rewards:trophy/farming/a_gluttonous_diet
execute as @s[advancements={blazeandcave:farming/castaway=true}] run function bacap_rewards:trophy/farming/castaway

# Animals
execute as @s[advancements={blazeandcave:animal/master_farrier=true}] run function bacap_rewards:trophy/animal/master_farrier
execute as @s[advancements={blazeandcave:animal/totally_not_an_afk_fisher=true}] run function bacap_rewards:trophy/animal/totally_not_an_afk_fisher
execute as @s[advancements={blazeandcave:animal/just_keeps_going=true}] run function bacap_rewards:trophy/animal/just_keeps_going
execute as @s[advancements={blazeandcave:animal/wheres_the_honey_lebowski=true}] run function bacap_rewards:trophy/animal/wheres_the_honey_lebowski

# Monsters
execute as @s[advancements={blazeandcave:monsters/freezing=true}] run function bacap_rewards:trophy/combat/freezing
execute as @s[advancements={blazeandcave:monsters/melting=true}] run function bacap_rewards:trophy/combat/melting
execute as @s[advancements={blazeandcave:monsters/custom_boss_fight=true}] run function bacap_rewards:trophy/combat/custom_boss_fight
execute as @s[advancements={blazeandcave:monsters/handsome_jack=true}] run function bacap_rewards:trophy/combat/handsome_jack
execute as @s[advancements={blazeandcave:monsters/camouflage=true}] run function bacap_rewards:trophy/combat/camouflage
execute as @s[advancements={blazeandcave:monsters/family_reunion=true}] run function bacap_rewards:trophy/combat/family_reunion
execute as @s[advancements={blazeandcave:monsters/bone_to_party=true}] run function bacap_rewards:trophy/combat/bone_to_party
execute as @s[advancements={blazeandcave:monsters/impossible=true}] run function bacap_rewards:trophy/combat/impossible

# Weaponry
execute as @s[advancements={blazeandcave:weaponry/demolitions_expert=true}] run function bacap_rewards:trophy/weaponry/demolitions_expert
execute as @s[advancements={blazeandcave:weaponry/master_shieldsman=true}] run function bacap_rewards:trophy/weaponry/master_shieldsman
execute as @s[advancements={blazeandcave:weaponry/the_mighty_hunter=true}] run function bacap_rewards:trophy/weaponry/the_mighty_hunter

# Biomes
execute as @s[advancements={blazeandcave:biomes/voyage=true}] run function bacap_rewards:trophy/biomes/voyage
execute as @s[advancements={blazeandcave:challenges/explorer_of_worlds=true}] run function bacap_rewards:trophy/challenges/explorer_of_worlds
execute as @s[advancements={blazeandcave:biomes/for_you_my_sweet=true}] run function bacap_rewards:trophy/biomes/for_you_my_sweet
execute as @s[advancements={blazeandcave:biomes/flower_power=true}] run function bacap_rewards:trophy/biomes/flower_power
execute as @s[advancements={blazeandcave:biomes/sleep_with_the_fishes=true}] run function bacap_rewards:trophy/biomes/sleep_with_the_fishes

# Adventure
execute as @s[advancements={blazeandcave:adventure/whats_up_doc=true}] run function bacap_rewards:trophy/adventure/whats_up_doc
execute as @s[advancements={blazeandcave:adventure/nyan_sheep=true}] run function bacap_rewards:trophy/adventure/nyan_sheep
execute as @s[advancements={blazeandcave:challenges/i_am_loot=true}] run function bacap_rewards:trophy/challenges/i_am_loot
execute as @s[advancements={blazeandcave:adventure/veteran_of_the_village=true}] run function bacap_rewards:trophy/adventure/veteran_of_the_village
execute as @s[advancements={blazeandcave:challenges/stockbroker=true}] run function bacap_rewards:trophy/challenges/stockbroker
execute as @s[advancements={blazeandcave:adventure/you_are_the_pillager=true}] run function bacap_rewards:trophy/adventure/you_are_the_pillager
execute as @s[advancements={blazeandcave:adventure/filthy_stinkin_rich=true}] run function bacap_rewards:trophy/adventure/filthy_stinkin_rich

# Redstone
#

# Enchanting
execute as @s[advancements={blazeandcave:challenges/ultimate_enchanter=true}] run function bacap_rewards:trophy/challenges/ultimate_enchanter
execute as @s[advancements={blazeandcave:mining/emerald_miner=true}] run function bacap_rewards:trophy/mining/emerald_miner

# Statistics
execute as @s[advancements={blazeandcave:statistics/this_ride_is_lit_yo=true}] run function bacap_rewards:trophy/statistics/this_ride_is_lit_yo
execute as @s[advancements={blazeandcave:statistics/elderly_enchanter=true}] run function bacap_rewards:trophy/statistics/elderly_enchanter
execute as @s[advancements={blazeandcave:statistics/i_enjoy_long_walks_and_playing_minecraft=true}] run function bacap_rewards:trophy/statistics/i_enjoy_long_walks_and_playing_minecraft
execute as @s[advancements={blazeandcave:statistics/jumping_jacks=true}] run function bacap_rewards:trophy/statistics/jumping_jacks
execute as @s[advancements={blazeandcave:statistics/overpopulation=true}] run function bacap_rewards:trophy/statistics/overpopulation
execute as @s[advancements={blazeandcave:statistics/xp_grinder=true}] run function bacap_rewards:trophy/statistics/xp_grinder
execute as @s[advancements={blazeandcave:statistics/sailor_of_the_seven_seas=true}] run function bacap_rewards:trophy/statistics/sailor_of_the_seven_seas
execute as @s[advancements={blazeandcave:statistics/frequent_flyer=true}] run function bacap_rewards:trophy/statistics/frequent_flyer
execute as @s[advancements={blazeandcave:statistics/kill_or_be_killed=true}] run function bacap_rewards:trophy/statistics/kill_or_be_killed
execute as @s[advancements={blazeandcave:statistics/scourge_of_the_west=true}] run function bacap_rewards:trophy/statistics/scourge_of_the_west
execute as @s[advancements={blazeandcave:statistics/your_legs_must_be_tired=true}] run function bacap_rewards:trophy/statistics/your_legs_must_be_tired
execute as @s[advancements={blazeandcave:statistics/olympic_gold_medallist=true}] run function bacap_rewards:trophy/statistics/olympic_gold_medallist
execute as @s[advancements={blazeandcave:statistics/happy_new_year=true}] run function bacap_rewards:trophy/statistics/happy_new_year
execute as @s[advancements={blazeandcave:statistics/lightning_mcpig=true}] run function bacap_rewards:trophy/statistics/lightning_mcpig
execute as @s[advancements={blazeandcave:statistics/global_railway_network=true}] run function bacap_rewards:trophy/statistics/global_railway_network
execute as @s[advancements={blazeandcave:statistics/ancient_kung_fu_master=true}] run function bacap_rewards:trophy/statistics/ancient_kung_fu_master

# Nether
execute as @s[advancements={blazeandcave:nether/fool_me_twice=true}] run function bacap_rewards:trophy/nether/fool_me_twice
execute as @s[advancements={blazeandcave:nether/inception=true}] run function bacap_rewards:trophy/nether/inception
execute as @s[advancements={blazeandcave:nether/electrifying_alliance=true}] run function bacap_rewards:trophy/nether/electrifying_alliance
execute as @s[advancements={blazeandcave:nether/zork_chop=true}] run function bacap_rewards:trophy/nether/zork_chop

# Potions
execute as @s[advancements={blazeandcave:potion/mad_scientist=true}] run function bacap_rewards:trophy/potion/mad_scientist
execute as @s[advancements={blazeandcave:potion/furious_ammunition=true}] run function bacap_rewards:trophy/potion/furious_ammunition
execute as @s[advancements={blazeandcave:potion/a_furious_test_subject=true}] run function bacap_rewards:trophy/potion/a_furious_test_subject

# The End
execute as @s[advancements={blazeandcave:end/no_dont_let_me_leave_murph=true}] run function bacap_rewards:trophy/end/no_dont_let_me_leave_murph
execute as @s[advancements={blazeandcave:end/a_wizards_breakfast=true}] run function bacap_rewards:trophy/end/a_wizards_breakfast
execute as @s[advancements={blazeandcave:end/anti_gravity_generator=true}] run function bacap_rewards:trophy/end/anti_gravity_generator
execute as @s[advancements={blazeandcave:end/cow_jumped_over_the_moon=true}] run function bacap_rewards:trophy/end/cow_jumped_over_the_moon
execute as @s[advancements={blazeandcave:end/ring_of_the_end=true}] run function bacap_rewards:trophy/end/ring_of_the_end
execute as @s[advancements={blazeandcave:end/event_horizon=true}] run function bacap_rewards:trophy/end/event_horizon

# Super Challenges
execute as @s[advancements={blazeandcave:challenges/im_in_space=true}] run function bacap_rewards:trophy/challenges/im_in_space
execute as @s[advancements={blazeandcave:challenges/ad_astra=true}] run function bacap_rewards:trophy/challenges/ad_astra
execute as @s[advancements={blazeandcave:challenges/dragon_vs_dragon_ii_electric_boogaloo=true}] run function bacap_rewards:trophy/challenges/dragon_vs_dragon_ii_electric_boogaloo
execute as @s[advancements={blazeandcave:challenges/dragon_vs_wither_the_pre_sequel=true}] run function bacap_rewards:trophy/challenges/dragon_vs_wither_the_pre_sequel
execute as @s[advancements={blazeandcave:challenges/hearts_of_the_stack=true}] run function bacap_rewards:trophy/challenges/hearts_of_the_stack
execute as @s[advancements={blazeandcave:challenges/abyss_lord=true}] run function bacap_rewards:trophy/challenges/abyss_lord
execute as @s[advancements={blazeandcave:challenges/the_devils_distance=true}] run function bacap_rewards:trophy/challenges/the_devils_distance
execute as @s[advancements={blazeandcave:challenges/a_million_blocks_away=true}] run function bacap_rewards:trophy/challenges/a_million_blocks_away
execute as @s[advancements={blazeandcave:challenges/dragon_army=true}] run function bacap_rewards:trophy/challenges/dragon_army
execute as @s[advancements={blazeandcave:challenges/the_world_is_ending=true}] run function bacap_rewards:trophy/challenges/the_world_is_ending
execute as @s[advancements={blazeandcave:challenges/constellation=true}] run function bacap_rewards:trophy/challenges/constellation
execute as @s[advancements={blazeandcave:challenges/warlock=true}] run function bacap_rewards:trophy/challenges/warlock
execute as @s[advancements={blazeandcave:challenges/all_the_blocks=true}] run function bacap_rewards:trophy/challenges/all_the_blocks
execute as @s[advancements={blazeandcave:challenges/all_the_items=true}] run function bacap_rewards:trophy/challenges/all_the_items
execute as @s[advancements={blazeandcave:challenges/stack_all_the_blocks=true}] run function bacap_rewards:trophy/challenges/stack_all_the_blocks
execute as @s[advancements={blazeandcave:challenges/stack_all_the_items=true}] run function bacap_rewards:trophy/challenges/stack_all_the_items
execute as @s[advancements={blazeandcave:challenges/nuclear_fusion=true}] run function bacap_rewards:trophy/challenges/nuclear_fusion
execute as @s[advancements={blazeandcave:challenges/zombie_apocalypse=true}] run function bacap_rewards:trophy/challenges/zombie_apocalypse
execute as @s[advancements={blazeandcave:challenges/rise_of_the_skeletons=true}] run function bacap_rewards:trophy/challenges/rise_of_the_skeletons
execute as @s[advancements={blazeandcave:challenges/creepergeddon=true}] run function bacap_rewards:trophy/challenges/creepergeddon
execute as @s[advancements={blazeandcave:challenges/highway_to_hell=true}] run function bacap_rewards:trophy/challenges/highway_to_hell
execute as @s[advancements={blazeandcave:challenges/endergeddon=true}] run function bacap_rewards:trophy/challenges/endergeddon
execute as @s[advancements={blazeandcave:challenges/potion_master=true}] run function bacap_rewards:trophy/challenges/potion_master
execute as @s[advancements={blazeandcave:challenges/biological_warfare=true}] run function bacap_rewards:trophy/challenges/biological_warfare
execute as @s[advancements={blazeandcave:challenges/were_in_the_endgame_now=true}] run function bacap_rewards:trophy/challenges/were_in_the_endgame_now
execute as @s[advancements={blazeandcave:challenges/immortal=true}] run function bacap_rewards:trophy/challenges/immortal
execute as @s[advancements={blazeandcave:challenges/global_vaccination=true}] run function bacap_rewards:trophy/challenges/global_vaccination
execute as @s[advancements={blazeandcave:challenges/death_from_all=true}] run function bacap_rewards:trophy/challenges/death_from_all

# Trophies added in 1.12
execute as @s[advancements={blazeandcave:mining/chestful_of_cobblestone=true}] run function bacap_rewards:trophy/mining/chestful_of_cobblestone
execute as @s[advancements={blazeandcave:mining/the_statue_of_liberty=true}] run function bacap_rewards:trophy/mining/the_statue_of_liberty
execute as @s[advancements={blazeandcave:mining/sly_copper_the_copper_heist=true}] run function bacap_rewards:trophy/mining/sly_copper_the_copper_heist
execute as @s[advancements={blazeandcave:building/armor_display=true}] run function bacap_rewards:trophy/building/armor_display
execute as @s[advancements={blazeandcave:building/happy_birthday=true}] run function bacap_rewards:trophy/building/happy_birthday
execute as @s[advancements={blazeandcave:farming/an_apple_a_day=true}] run function bacap_rewards:trophy/farming/an_apple_a_day
execute as @s[advancements={blazeandcave:farming/come_to_the_countryside=true}] run function bacap_rewards:trophy/farming/come_to_the_countryside
execute as @s[advancements={blazeandcave:farming/whats_new_with_composting=true}] run function bacap_rewards:trophy/farming/whats_new_with_composting
execute as @s[advancements={blazeandcave:animal/tropical_collection=true}] run function bacap_rewards:trophy/farming/tropical_collection
execute as @s[advancements={blazeandcave:animal/nest_quick=true}] run function bacap_rewards:trophy/farming/nest_quick
execute as @s[advancements={blazeandcave:animal/iceologer_shouldve_won=true}] run function bacap_rewards:trophy/farming/iceologer_shouldve_won
execute as @s[advancements={blazeandcave:monsters/basketblock_championship=true}] run function bacap_rewards:trophy/monsters/basketblock_championship
execute as @s[advancements={blazeandcave:monsters/pupil_poppers=true}] run function bacap_rewards:trophy/monsters/pupil_poppers
execute as @s[advancements={blazeandcave:weaponry/multiclassed=true}] run function bacap_rewards:trophy/weaponry/multiclassed
execute as @s[advancements={blazeandcave:biomes/pandamonium=true}] run function bacap_rewards:trophy/biomes/pandamonium
execute as @s[advancements={blazeandcave:biomes/edge_of_the_jungle=true}] run function bacap_rewards:trophy/biomes/edge_of_the_jungle
execute as @s[advancements={blazeandcave:adventure/justice=true}] run function bacap_rewards:trophy/adventure/justice
execute as @s[advancements={blazeandcave:redstone/master_engineer=true}] run function bacap_rewards:trophy/redstone/master_engineer
execute as @s[advancements={blazeandcave:statistics/stonks=true}] run function bacap_rewards:trophy/statistics/stonks
execute as @s[advancements={blazeandcave:nether/master_netherite_miner=true}] run function bacap_rewards:trophy/nether/master_netherite_miner
execute as @s[advancements={blazeandcave:nether/subspace_bubble=true}] run function bacap_rewards:trophy/nether/subspace_bubble
execute as @s[advancements={blazeandcave:challenges/the_perfect_run=true}] run function bacap_rewards:trophy/challenges/the_perfect_run

execute as @s[advancements={blazeandcave:mining/bulldozer=true}] run function bacap_rewards:trophy/mining/bulldozer
execute as @s[advancements={blazeandcave:mining/pixel_perfect=true}] run function bacap_rewards:trophy/mining/pixel_perfect
execute as @s[advancements={blazeandcave:mining/amethyst_miner=true}] run function bacap_rewards:trophy/mining/amethyst_miner
execute as @s[advancements={blazeandcave:mining/mr_bean=true}] run function bacap_rewards:trophy/mining/mr_bean
execute as @s[advancements={blazeandcave:biomes/birdkeeper=true}] run function bacap_rewards:trophy/biomes/birdkeeper
execute as @s[advancements={blazeandcave:animal/heavy_duty_caravan=true}] run function bacap_rewards:trophy/animal/heavy_duty_caravan
execute as @s[advancements={blazeandcave:animal/fractal=true}] run function bacap_rewards:trophy/animal/fractal
execute as @s[advancements={blazeandcave:adventure/hey_you_two_should_kiss=true}] run function bacap_rewards:trophy/adventure/hey_you_two_should_kiss
execute as @s[advancements={blazeandcave:enchanting/over_overkill=true}] run function bacap_rewards:trophy/enchanting/over_overkill
execute as @s[advancements={blazeandcave:nether/a_piglins_best_friend=true}] run function bacap_rewards:trophy/nether/a_piglins_best_friend
execute as @s[advancements={blazeandcave:nether/netherite_mad_lad=true}] run function bacap_rewards:trophy/nether/netherite_mad_lad

# Trophies added in 1.13
execute as @s[advancements={minecraft:adventure/fall_from_world_height=true}] run function bacap_rewards:trophy/mining/caves_and_cliffs
execute as @s[advancements={blazeandcave:mining/bonfire_night=true}] run function bacap_rewards:trophy/mining/bonfire_night
execute as @s[advancements={blazeandcave:mining/oresome=true}] run function bacap_rewards:trophy/mining/oresome
execute as @s[advancements={blazeandcave:building/slabs_for_days=true}] run function bacap_rewards:trophy/building/slabs_for_days
execute as @s[advancements={blazeandcave:building/ah_my_old_enemy=true}] run function bacap_rewards:trophy/building/ah_my_old_enemy
execute as @s[advancements={blazeandcave:biomes/everybody_loves_ice=true}] run function bacap_rewards:trophy/biomes/everybody_loves_ice
execute as @s[advancements={blazeandcave:biomes/captain_america=true}] run function bacap_rewards:trophy/biomes/captain_america
execute as @s[advancements={blazeandcave:redstone/travelling_bard=true}] run function bacap_rewards:trophy/redstone/travelling_bard
execute as @s[advancements={blazeandcave:redstone/on_a_rail=true}] run function bacap_rewards:trophy/redstone/on_a_rail
execute as @s[advancements={blazeandcave:statistics/65_hours_of_walking=true}] run function bacap_rewards:trophy/statistics/65_hours_of_walking
execute as @s[advancements={blazeandcave:nether/ludicrous_speed=true}] run function bacap_rewards:trophy/nether/ludicrous_speed
execute as @s[advancements={blazeandcave:potion/gas_bomb=true}] run function bacap_rewards:trophy/potion/gas_bomb
execute as @s[advancements={blazeandcave:end/good_luck_getting_this_one=true}] run function bacap_rewards:trophy/end/good_luck_getting_this_one
execute as @s[advancements={blazeandcave:challenges/telescopic=true}] run function bacap_rewards:trophy/challenges/telescopic
execute as @s[advancements={blazeandcave:challenges/riddle_me_this=true}] run function bacap_rewards:trophy/challenges/riddle_me_this

execute as @s[advancements={blazeandcave:biomes/terralithic=true}] run function bacap_rewards:trophy/biomes/terralithic

# Trophies added in 1.14
execute as @s[advancements={blazeandcave:redstone/the_block_of_eternal_screaming=true}] run function bacap_rewards:trophy/redstone/the_block_of_eternal_screaming
execute as @s[advancements={blazeandcave:redstone/cataclyst=true}] run function bacap_rewards:trophy/redstone/cataclyst
execute as @s[advancements={blazeandcave:building/and_open=true}] run function bacap_rewards:trophy/building/and_open
execute as @s[advancements={blazeandcave:building/one_pickle_two_pickle_sea_pickle_four=true}] run function bacap_rewards:trophy/building/one_pickle_two_pickle_sea_pickle_four
execute as @s[advancements={blazeandcave:building/colors_of_the_wind=true}] run function bacap_rewards:trophy/building/colors_of_the_wind
execute as @s[advancements={blazeandcave:building/elmer_mudd=true}] run function bacap_rewards:trophy/building/elmer_mudd
execute as @s[advancements={blazeandcave:animal/animal_kingdom=true}] run function bacap_rewards:trophy/animal/animal_kingdom
execute as @s[advancements={blazeandcave:animal/caprymphony=true}] run function bacap_rewards:trophy/animal/caprymphony
execute as @s[advancements={minecraft:husbandry/leash_all_frog_variants=true}] run function bacap_rewards:trophy/animal/when_the_squad_hops_into_town
execute as @s[advancements={blazeandcave:monsters/stealth_is_optional=true}] run function bacap_rewards:trophy/monsters/stealth_is_optional
execute as @s[advancements={blazeandcave:monsters/not_afraid_of_heights=true}] run function bacap_rewards:trophy/monsters/not_afraid_of_heights
execute as @s[advancements={blazeandcave:weaponry/when_pigs_finally_fly=true}] run function bacap_rewards:trophy/weaponry/when_pigs_finally_fly
execute as @s[advancements={blazeandcave:adventure/awards_ceremony=true}] run function bacap_rewards:trophy/adventure/awards_ceremony
execute as @s[advancements={blazeandcave:adventure/sponge_miner=true}] run function bacap_rewards:trophy/adventure/sponge_miner
execute as @s[advancements={blazeandcave:enchanting/a_rather_pointy_fence_post=true}] run function bacap_rewards:trophy/enchanting/a_rather_pointy_fence_post
execute as @s[advancements={blazeandcave:challenges/farlander=true}] run function bacap_rewards:trophy/challenges/farlander

# Trophies added in 1.15
execute as @s[advancements={blazeandcave:adventure/nerds_never_die=true}] run function bacap_rewards:trophy/adventure/nerds_never_die
execute as @s[advancements={blazeandcave:enchanting/master_miner=true}] run function bacap_rewards:trophy/enchanting/master_miner
execute as @s[advancements={blazeandcave:end/unending_hell=true}] run function bacap_rewards:trophy/end/unending_hell

# Trophies added in 1.16
execute as @s[advancements={blazeandcave:building/cherry_bomb=true}] run function bacap_rewards:trophy/building/cherry_bomb
execute as @s[advancements={blazeandcave:monsters/maximum_resistance=true}] run function bacap_rewards:trophy/monsters/maximum_resistance
execute as @s[advancements={blazeandcave:adventure/undying_fandom=true}] run function bacap_rewards:trophy/adventure/undying_fandom
execute as @s[advancements={blazeandcave:adventure/pottery_exhibition=true}] run function bacap_rewards:trophy/adventure/pottery_exhibition
execute as @s[advancements={blazeandcave:adventure/chromatic_armory=true}] run function bacap_rewards:trophy/adventure/chromatic_armory
execute as @s[advancements={blazeandcave:redstone/monstrous_music=true}] run function bacap_rewards:trophy/redstone/monstrous_music
execute as @s[advancements={blazeandcave:enchanting/silent_but_deadly=true}] run function bacap_rewards:trophy/enchanting/silent_but_deadly
execute as @s[advancements={blazeandcave:statistics/food_glorious_food=true}] run function bacap_rewards:trophy/statistics/food_glorious_food
execute as @s[advancements={blazeandcave:statistics/i_heart_chests=true}] run function bacap_rewards:trophy/statistics/i_heart_chests
execute as @s[advancements={blazeandcave:challenges/poglin=true}] run function bacap_rewards:trophy/challenges/poglin

# Trophies added in 1.17
execute as @s[advancements={blazeandcave:mining/where_are_all_your_clothes=true}] run function bacap_rewards:trophy/mining/where_are_all_your_clothes
execute as @s[advancements={blazeandcave:mining/master_copper_miner=true}] run function bacap_rewards:trophy/mining/master_copper_miner
execute as @s[advancements={blazeandcave:mining/blind_as_a_bat=true}] run function bacap_rewards:trophy/mining/blind_as_a_bat
execute as @s[advancements={minecraft:husbandry/whole_pack=true}] run function bacap_rewards:trophy/animal/the_whole_pack
execute as @s[advancements={blazeandcave:weaponry/there_it_goes=true}] run function bacap_rewards:trophy/weaponry/there_it_goes
execute as @s[advancements={blazeandcave:adventure/keys_to_success=true}] run function bacap_rewards:trophy/adventure/keys_to_success
execute as @s[advancements={minecraft:adventure/trim_with_all_exclusive_armor_patterns=true}] run function bacap_rewards:trophy/adventure/smithing_with_style
execute as @s[advancements={blazeandcave:enchanting/whack_a_mole=true}] run function bacap_rewards:trophy/enchanting/whack_a_mole
execute as @s[advancements={blazeandcave:statistics/giga_xp_grinder=true}] run function bacap_rewards:trophy/statistics/giga_xp_grinder
execute as @s[advancements={blazeandcave:challenges/overwarden=true}] run function bacap_rewards:trophy/challenges/overwarden

# Trophies added in 1.18
execute as @s[advancements={blazeandcave:mining/i_yearned_for_the_mines=true}] run function bacap_rewards:trophy/mining/i_yearned_for_the_mines
execute as @s[advancements={blazeandcave:adventure/vault_hunter=true}] run function bacap_rewards:trophy/adventure/vault_hunter
execute as @s[advancements={blazeandcave:weaponry/warden_extinction=true}] run function bacap_rewards:trophy/weaponry/warden_extinction
execute as @s[advancements={blazeandcave:adventure/sus=true}] run function bacap_rewards:trophy/adventure/sus

# Trophies added in 1.19
execute as @s[advancements={blazeandcave:farming/you_cant_take_the_sky_from_me=true}] run function bacap_rewards:trophy/farming/you_cant_take_the_sky_from_me
execute as @s[advancements={blazeandcave:farming/certified_spud_chomper=true}] run function bacap_rewards:trophy/farming/certified_spud_chomper
execute as @s[advancements={blazeandcave:monsters/absolute_cinema=true}] run function bacap_rewards:trophy/monsters/absolute_cinema
execute as @s[advancements={blazeandcave:adventure/all_around_the_world=true}] run function bacap_rewards:trophy/adventure/all_around_the_world
execute as @s[advancements={blazeandcave:adventure/core_keeper=true}] run function bacap_rewards:trophy/adventure/core_keeper
execute as @s[advancements={blazeandcave:statistics/big_blimp_enthusiast=true}] run function bacap_rewards:trophy/statistics/big_blimp_enthusiast
execute as @s[advancements={blazeandcave:nether/collateral_damage=true}] run function bacap_rewards:trophy/nether/collateral_damage
execute as @s[advancements={blazeandcave:challenges/at_the_rim_of_the_sky=true}] run function bacap_rewards:trophy/challenges/at_the_rim_of_the_sky
execute as @s[advancements={blazeandcave:challenges/lets_take_it_up_a_notch=true}] run function bacap_rewards:trophy/challenges/lets_take_it_up_a_notch

# Trophies added in 1.21
execute as @s[advancements={blazeandcave:mining/all_the_balls=true}] run function bacap_rewards:trophy/mining/all_the_balls
execute as @s[advancements={blazeandcave:building/cinnabar_island=true}] run function bacap_rewards:trophy/building/cinnabar_island
execute as @s[advancements={blazeandcave:monsters/the_undead_cavalry=true}] run function bacap_rewards:trophy/monsters/the_undead_cavalry
execute as @s[advancements={blazeandcave:monsters/jockey_jamboree=true}] run function bacap_rewards:trophy/monsters/jockey_jamboree
execute as @s[advancements={blazeandcave:monsters/the_wicked_witch_of_the_west=true}] run function bacap_rewards:trophy/monsters/the_wicked_witch_of_the_west
execute as @s[advancements={blazeandcave:weaponry/toasted_marshmallow=true}] run function bacap_rewards:trophy/weaponry/toasted_marshmallow
execute as @s[advancements={blazeandcave:statistics/lord_helix=true}] run function bacap_rewards:trophy/statistics/lord_helix
execute as @s[advancements={blazeandcave:end/taking_the_scenic_route=true}] run function bacap_rewards:trophy/end/taking_the_scenic_route





# Message if trophies have been granted
tellraw @s {"color":"green","text":"You have been granted trophies."}
