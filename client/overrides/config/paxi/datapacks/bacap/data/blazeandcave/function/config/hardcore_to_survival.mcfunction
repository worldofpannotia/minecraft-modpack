# This should only be used if you fail your HAL run and if you want to continue playing in that world and still be eligible for AL (role)
# If you don't know what the above line means, DON'T RUN IT!
# This function is currently NOT present in the config menu

# Disables BACAP Hardcore addon (if present)
datapack disable "file/BlazeandCave's Advancements Pack Hardcore.zip"
datapack disable "file/BlazeandCave's Advancements Pack Hardcore"

# Revokes the advancements that differ between Hardcore and Survival

advancement revoke @a only blazeandcave:adventure/rekt
advancement revoke @a only blazeandcave:adventure/this_will_be_a_breeze

advancement revoke @a only blazeandcave:animal/goat_simulator
advancement revoke @a only blazeandcave:animal/not_the_bees

advancement revoke @a only blazeandcave:biomes/kung_fu_panda
advancement revoke @a only blazeandcave:biomes/so_long_and_thanks_for_all_the_fish
advancement revoke @a only blazeandcave:biomes/were_going_on_a_bear_hunt

advancement revoke @a only blazeandcave:building/living_dummy

advancement revoke @a only blazeandcave:challenges/death_from_all

advancement revoke @a only blazeandcave:enchanting/handmade_blinding

advancement revoke @a only blazeandcave:end/the_actual_end

advancement revoke @a only blazeandcave:monsters/aww_man
advancement revoke @a only blazeandcave:monsters/now_thats_a_lot_of_damage

advancement revoke @a only blazeandcave:nether/et_tu_brute
advancement revoke @a only blazeandcave:nether/whole_hog

advancement revoke @a only blazeandcave:weaponry/loser


# Updates the scoreboard

function blazeandcave:update_score
