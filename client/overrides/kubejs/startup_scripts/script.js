// priority: 0

console.info('Hello, World! (You will only see this line once in console, during startup)')

onEvent('item.registry', event => {
	// Register new items here
	// event.create('example_item').displayName('Example Item')
});

onEvent('block.registry', event => {
	// Register new blocks here
	// event.create('example_block').material('wood').hardness(1.0).displayName('Example Block')
});

onEvent('item.modification', event => {
	event.modify('minecraft:acacia_boat', item => item.maxStackSize = 64);
	event.modify('minecraft:acacia_sign', item => item.maxStackSize = 64);
	event.modify('minecraft:armor_stand', item => item.maxStackSize = 64);
	event.modify('minecraft:axolotl_bucket', item => item.maxStackSize = 16);
	event.modify('minecraft:beetroot_soup', item => item.maxStackSize = 16);
	event.modify('minecraft:birch_boat', item => item.maxStackSize = 64);
	event.modify('minecraft:birch_sign', item => item.maxStackSize = 64);
	event.modify('minecraft:black_banner', item => item.maxStackSize = 64);
	event.modify('minecraft:black_bed', item => item.maxStackSize = 64);
	event.modify('minecraft:black_shulker_box', item => item.maxStackSize = 16);
	event.modify('minecraft:blue_banner', item => item.maxStackSize = 64);
	event.modify('minecraft:blue_bed', item => item.maxStackSize = 64);
	event.modify('minecraft:blue_shulker_box', item => item.maxStackSize = 16);
	event.modify('minecraft:brown_banner', item => item.maxStackSize = 64);
	event.modify('minecraft:brown_bed', item => item.maxStackSize = 64);
	event.modify('minecraft:brown_shulker_box', item => item.maxStackSize = 16);
	event.modify('minecraft:bucket', item => item.maxStackSize = 64);
	event.modify('minecraft:cake', item => item.maxStackSize = 64);
	event.modify('minecraft:chest_minecart', item => item.maxStackSize = 64);
	event.modify('minecraft:cod_bucket', item => item.maxStackSize = 16);
	event.modify('minecraft:command_block_minecart', item => item.maxStackSize = 64);
	event.modify('minecraft:crimson_sign', item => item.maxStackSize = 64);
	event.modify('minecraft:cyan_banner', item => item.maxStackSize = 64);
	event.modify('minecraft:cyan_bed', item => item.maxStackSize = 64);
	event.modify('minecraft:cyan_shulker_box', item => item.maxStackSize = 16);
	event.modify('minecraft:dark_oak_boat', item => item.maxStackSize = 64);
	event.modify('minecraft:dark_oak_sign', item => item.maxStackSize = 64);
	event.modify('minecraft:egg', item => item.maxStackSize = 64);
	event.modify('minecraft:enchanted_book', item => item.maxStackSize = 64);
	event.modify('minecraft:ender_pearl', item => item.maxStackSize = 64);
	event.modify('minecraft:furnace_minecart', item => item.maxStackSize = 64);
	event.modify('minecraft:gray_banner', item => item.maxStackSize = 64);
	event.modify('minecraft:gray_bed', item => item.maxStackSize = 64);
	event.modify('minecraft:gray_shulker_box', item => item.maxStackSize = 16);
	event.modify('minecraft:green_banner', item => item.maxStackSize = 64);
	event.modify('minecraft:green_bed', item => item.maxStackSize = 64);
	event.modify('minecraft:green_shulker_box', item => item.maxStackSize = 16);
	event.modify('minecraft:honey_bottle', item => item.maxStackSize = 64);
	event.modify('minecraft:hopper_minecart', item => item.maxStackSize = 64);
	event.modify('minecraft:jungle_boat', item => item.maxStackSize = 64);
	event.modify('minecraft:jungle_sign', item => item.maxStackSize = 64);
	event.modify('minecraft:lava_bucket', item => item.maxStackSize = 16);
	event.modify('minecraft:light_blue_banner', item => item.maxStackSize = 64);
	event.modify('minecraft:light_blue_bed', item => item.maxStackSize = 64);
	event.modify('minecraft:light_blue_shulker_box', item => item.maxStackSize = 16);
	event.modify('minecraft:light_gray_banner', item => item.maxStackSize = 64);
	event.modify('minecraft:light_gray_bed', item => item.maxStackSize = 64);
	event.modify('minecraft:light_gray_shulker_box', item => item.maxStackSize = 16);
	event.modify('minecraft:lime_banner', item => item.maxStackSize = 64);
	event.modify('minecraft:lime_bed', item => item.maxStackSize = 64);
	event.modify('minecraft:lime_shulker_box', item => item.maxStackSize = 16);
	event.modify('minecraft:lingering_potion', item => item.maxStackSize = 16);
	event.modify('minecraft:magenta_banner', item => item.maxStackSize = 64);
	event.modify('minecraft:magenta_bed', item => item.maxStackSize = 64);
	event.modify('minecraft:magenta_shulker_box', item => item.maxStackSize = 16);
	event.modify('minecraft:milk_bucket', item => item.maxStackSize = 16);
	event.modify('minecraft:minecart', item => item.maxStackSize = 64);
	event.modify('minecraft:mushroom_stew', item => item.maxStackSize = 16);
	event.modify('minecraft:music_disc_11', item => item.maxStackSize = 64);
	event.modify('minecraft:music_disc_13', item => item.maxStackSize = 64);
	event.modify('minecraft:music_disc_blocks', item => item.maxStackSize = 64);
	event.modify('minecraft:music_disc_cat', item => item.maxStackSize = 64);
	event.modify('minecraft:music_disc_chirp', item => item.maxStackSize = 64);
	event.modify('minecraft:music_disc_far', item => item.maxStackSize = 64);
	event.modify('minecraft:music_disc_mall', item => item.maxStackSize = 64);
	event.modify('minecraft:music_disc_mellohi', item => item.maxStackSize = 64);
	event.modify('minecraft:music_disc_otherside', item => item.maxStackSize = 64);
	event.modify('minecraft:music_disc_pigstep', item => item.maxStackSize = 64);
	event.modify('minecraft:music_disc_stal', item => item.maxStackSize = 64);
	event.modify('minecraft:music_disc_strad', item => item.maxStackSize = 64);
	event.modify('minecraft:music_disc_wait', item => item.maxStackSize = 64);
	event.modify('minecraft:music_disc_ward', item => item.maxStackSize = 64);
	event.modify('minecraft:oak_boat', item => item.maxStackSize = 64);
	event.modify('minecraft:oak_sign', item => item.maxStackSize = 64);
	event.modify('minecraft:orange_banner', item => item.maxStackSize = 64);
	event.modify('minecraft:orange_bed', item => item.maxStackSize = 64);
	event.modify('minecraft:orange_shulker_box', item => item.maxStackSize = 16);
	event.modify('minecraft:pink_banner', item => item.maxStackSize = 64);
	event.modify('minecraft:pink_bed', item => item.maxStackSize = 64);
	event.modify('minecraft:pink_shulker_box', item => item.maxStackSize = 16);
	event.modify('minecraft:potion', item => item.maxStackSize = 16);
	event.modify('minecraft:powder_snow_bucket', item => item.maxStackSize = 16);
	event.modify('minecraft:pufferfish_bucket', item => item.maxStackSize = 16);
	event.modify('minecraft:purple_banner', item => item.maxStackSize = 64);
	event.modify('minecraft:purple_bed', item => item.maxStackSize = 64);
	event.modify('minecraft:purple_shulker_box', item => item.maxStackSize = 16);
	event.modify('minecraft:rabbit_stew', item => item.maxStackSize = 16);
	event.modify('minecraft:red_banner', item => item.maxStackSize = 64);
	event.modify('minecraft:red_bed', item => item.maxStackSize = 64);
	event.modify('minecraft:red_shulker_box', item => item.maxStackSize = 16);
	event.modify('minecraft:saddle', item => item.maxStackSize = 64);
	event.modify('minecraft:salmon_bucket', item => item.maxStackSize = 16);
	event.modify('minecraft:shield', item => item.maxStackSize = 16);
	event.modify('minecraft:shulker_box', item => item.maxStackSize = 16);
	event.modify('minecraft:snowball', item => item.maxStackSize = 64);
	event.modify('minecraft:splash_potion', item => item.maxStackSize = 16);
	event.modify('minecraft:spruce_boat', item => item.maxStackSize = 64);
	event.modify('minecraft:spruce_sign', item => item.maxStackSize = 64);
	event.modify('minecraft:suspicious_stew', item => item.maxStackSize = 16);
	event.modify('minecraft:tnt_minecart', item => item.maxStackSize = 64);
	event.modify('minecraft:totem_of_undying', item => item.maxStackSize = 16);
	event.modify('minecraft:tropical_fish_bucket', item => item.maxStackSize = 16);
	event.modify('minecraft:warped_sign', item => item.maxStackSize = 64);
	event.modify('minecraft:water_bucket', item => item.maxStackSize = 16);
	event.modify('minecraft:white_banner', item => item.maxStackSize = 64);
	event.modify('minecraft:white_bed', item => item.maxStackSize = 64);
	event.modify('minecraft:white_shulker_box', item => item.maxStackSize = 16);
	event.modify('minecraft:writable_book', item => item.maxStackSize = 64);
	event.modify('minecraft:written_book', item => item.maxStackSize = 64);
	event.modify('minecraft:yellow_banner', item => item.maxStackSize = 64);
	event.modify('minecraft:yellow_bed', item => item.maxStackSize = 64);
	event.modify('minecraft:yellow_shulker_box', item => item.maxStackSize = 16);
});
