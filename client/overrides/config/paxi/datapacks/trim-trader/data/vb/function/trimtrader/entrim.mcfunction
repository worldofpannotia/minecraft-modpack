# Set Netherite Upgrade as default
data modify entity @s Offers.Recipes prepend value {maxUses: 1, buy: {id: "minecraft:diamond", count: 8}, buyB: {id: "minecraft:netherrack", count: 1}, sell: {id:"minecraft:netherite_upgrade_smithing_template",count:1,}, xp: 1, uses: 0, priceMultiplier: 0.05f, specialPrice: 0, demand: 0, rewardExp: 1b}

# Generate Random Number from Loot Table
execute at @s store result storage vb:trimtrader trim int 1 run loot spawn ~ ~ ~ loot vb:trimtrader/chance

# Set Smithing Template Trades
execute if data storage vb:trimtrader {trim:2} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:netherrack"}, sell: {id: "minecraft:rib_armor_trim_smithing_template"}}
execute if data storage vb:trimtrader {trim:3} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:cobbled_deepslate"}, sell: {id: "minecraft:ward_armor_trim_smithing_template"}}
execute if data storage vb:trimtrader {trim:4} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:cobbled_deepslate"}, sell: {id: "minecraft:silence_armor_trim_smithing_template"}}
execute if data storage vb:trimtrader {trim:5} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:sandstone"}, sell: {id: "minecraft:dune_armor_trim_smithing_template"}}
execute if data storage vb:trimtrader {trim:6} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:end_stone"}, sell: {id: "minecraft:eye_armor_trim_smithing_template"}}
execute if data storage vb:trimtrader {trim:7} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:blackstone"}, sell: {id: "minecraft:snout_armor_trim_smithing_template"}}
execute if data storage vb:trimtrader {trim:8} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:purpur_block"}, sell: {id: "minecraft:spire_armor_trim_smithing_template"}}
execute if data storage vb:trimtrader {trim:9} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:prismarine"}, sell: {id: "minecraft:tide_armor_trim_smithing_template"}}
execute if data storage vb:trimtrader {trim:10} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:mossy_cobblestone"}, sell: {id: "minecraft:wild_armor_trim_smithing_template"}}
execute if data storage vb:trimtrader {trim:11} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:cobblestone"}, sell: {id: "minecraft:sentry_armor_trim_smithing_template"}}
execute if data storage vb:trimtrader {trim:12} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:cobblestone"}, sell: {id: "minecraft:vex_armor_trim_smithing_template"}}
execute if data storage vb:trimtrader {trim:13} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:cobblestone"}, sell: {id: "minecraft:coast_armor_trim_smithing_template"}}
execute if data storage vb:trimtrader {trim:14} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:terracotta"}, sell: {id: "minecraft:wayfinder_armor_trim_smithing_template"}}
execute if data storage vb:trimtrader {trim:15} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:terracotta"}, sell: {id: "minecraft:raiser_armor_trim_smithing_template"}}
execute if data storage vb:trimtrader {trim:16} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:terracotta"}, sell: {id: "minecraft:shaper_armor_trim_smithing_template"}}
execute if data storage vb:trimtrader {trim:17} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:terracotta"}, sell: {id: "minecraft:host_armor_trim_smithing_template"}}
execute if data storage vb:trimtrader {trim:18} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:breeze_rod"}, sell: {id: "minecraft:flow_armor_trim_smithing_template"}}
execute if data storage vb:trimtrader {trim:19} run data modify entity @s Offers.Recipes[0] merge value {buyB:{id: "minecraft:copper_block"}, sell: {id: "minecraft:bolt_armor_trim_smithing_template"}}

# Clean up and tag
data remove storage vb:trimtrader trim
tag @s add entrimmed