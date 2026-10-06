schedule function autotest:lib/next 1t
fill 39999 279 39969 40080 279 39974 minecraft:stone
fill 39999 280 39969 40080 281 39974 minecraft:air
setblock 40000 280 39970 minecraft:copper_block
execute store success score #ok autotest if block 40000 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:copper_block is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40000 280 39970 minecraft:air
setblock 40002 280 39970 minecraft:exposed_copper
execute store success score #ok autotest if block 40002 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:exposed_copper is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40002 280 39970 minecraft:air
setblock 40004 280 39970 minecraft:weathered_copper
execute store success score #ok autotest if block 40004 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:weathered_copper is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40004 280 39970 minecraft:air
setblock 40006 280 39970 minecraft:oxidized_copper
execute store success score #ok autotest if block 40006 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:oxidized_copper is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40006 280 39970 minecraft:air
setblock 40008 280 39970 minecraft:waxed_copper_block
execute store success score #ok autotest if block 40008 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:waxed_copper_block is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40008 280 39970 minecraft:air
setblock 40010 280 39970 minecraft:waxed_exposed_copper
execute store success score #ok autotest if block 40010 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:waxed_exposed_copper is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40010 280 39970 minecraft:air
setblock 40012 280 39970 minecraft:waxed_weathered_copper
execute store success score #ok autotest if block 40012 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:waxed_weathered_copper is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40012 280 39970 minecraft:air
setblock 40014 280 39970 minecraft:waxed_oxidized_copper
execute store success score #ok autotest if block 40014 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:waxed_oxidized_copper is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40014 280 39970 minecraft:air
setblock 40016 280 39970 minecraft:netherite_block
execute store success score #ok autotest if block 40016 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:netherite_block is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40016 280 39970 minecraft:air
setblock 40018 280 39970 minecraft:emerald_block
execute store success score #ok autotest if block 40018 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:emerald_block is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40018 280 39970 minecraft:air
setblock 40020 280 39970 minecraft:diamond_block
execute store success score #ok autotest if block 40020 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:diamond_block is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40020 280 39970 minecraft:air
setblock 40022 280 39970 minecraft:gold_block
execute store success score #ok autotest if block 40022 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:gold_block is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40022 280 39970 minecraft:air
setblock 40024 280 39970 minecraft:iron_block
execute store success score #ok autotest if block 40024 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:iron_block is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40024 280 39970 minecraft:air
setblock 40026 280 39970 minecraft:lapis_block
execute store success score #ok autotest if block 40026 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:lapis_block is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40026 280 39970 minecraft:air
setblock 40028 280 39970 minecraft:redstone_block
execute store success score #ok autotest if block 40028 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:redstone_block is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40028 280 39970 minecraft:air
setblock 40030 280 39970 minecraft:coal_block
execute store success score #ok autotest if block 40030 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:coal_block is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40030 280 39970 minecraft:air
setblock 40032 280 39970 minecraft:quartz_block
execute store success score #ok autotest if block 40032 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:quartz_block is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40032 280 39970 minecraft:air
setblock 40034 280 39970 minecraft:smooth_quartz
execute store success score #ok autotest if block 40034 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:smooth_quartz is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40034 280 39970 minecraft:air
setblock 40036 280 39970 minecraft:amethyst_block
execute store success score #ok autotest if block 40036 280 39970 #minecraft:beacon_base_blocks
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-8 minecraft:amethyst_block is in #minecraft:beacon_base_blocks",why:"block is not in #minecraft:beacon_base_blocks"}
setblock 40036 280 39970 minecraft:air
setblock 40038 280 39970 minecraft:beacon
execute store success score #ok autotest if block 40038 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:beacon is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40038 280 39970 minecraft:air
setblock 40040 280 39970 minecraft:black_stained_glass_pane
execute store success score #ok autotest if block 40040 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:black_stained_glass_pane is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40040 280 39970 minecraft:air
setblock 40042 280 39970 minecraft:black_stained_glass
execute store success score #ok autotest if block 40042 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:black_stained_glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40042 280 39970 minecraft:air
setblock 40044 280 39970 minecraft:blue_stained_glass_pane
execute store success score #ok autotest if block 40044 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:blue_stained_glass_pane is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40044 280 39970 minecraft:air
setblock 40046 280 39970 minecraft:blue_stained_glass
execute store success score #ok autotest if block 40046 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:blue_stained_glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40046 280 39970 minecraft:air
setblock 40048 280 39970 minecraft:brown_stained_glass_pane
execute store success score #ok autotest if block 40048 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:brown_stained_glass_pane is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40048 280 39970 minecraft:air
setblock 40050 280 39970 minecraft:brown_stained_glass
execute store success score #ok autotest if block 40050 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:brown_stained_glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40050 280 39970 minecraft:air
setblock 40052 280 39970 minecraft:creeper_head
execute store success score #ok autotest if block 40052 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:creeper_head is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40052 280 39970 minecraft:air
setblock 40054 280 39970 minecraft:creeper_wall_head
execute store success score #ok autotest if block 40054 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:creeper_wall_head is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40054 280 39970 minecraft:air
setblock 40056 280 39970 minecraft:cyan_stained_glass_pane
execute store success score #ok autotest if block 40056 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:cyan_stained_glass_pane is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40056 280 39970 minecraft:air
setblock 40058 280 39970 minecraft:cyan_stained_glass
execute store success score #ok autotest if block 40058 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:cyan_stained_glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40058 280 39970 minecraft:air
setblock 40060 280 39970 minecraft:dragon_head
execute store success score #ok autotest if block 40060 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:dragon_head is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40060 280 39970 minecraft:air
setblock 40062 280 39970 minecraft:dragon_wall_head
execute store success score #ok autotest if block 40062 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:dragon_wall_head is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40062 280 39970 minecraft:air
setblock 40064 280 39970 minecraft:frosted_ice
execute store success score #ok autotest if block 40064 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:frosted_ice is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40064 280 39970 minecraft:air
setblock 40066 280 39970 minecraft:glass_pane
execute store success score #ok autotest if block 40066 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:glass_pane is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40066 280 39970 minecraft:air
setblock 40068 280 39970 minecraft:glass
execute store success score #ok autotest if block 40068 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40068 280 39970 minecraft:air
setblock 40070 280 39970 minecraft:glowstone
execute store success score #ok autotest if block 40070 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:glowstone is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40070 280 39970 minecraft:air
setblock 40072 280 39970 minecraft:gray_stained_glass_pane
execute store success score #ok autotest if block 40072 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:gray_stained_glass_pane is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40072 280 39970 minecraft:air
setblock 40074 280 39970 minecraft:gray_stained_glass
execute store success score #ok autotest if block 40074 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:gray_stained_glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40074 280 39970 minecraft:air
setblock 40076 280 39970 minecraft:green_stained_glass_pane
execute store success score #ok autotest if block 40076 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:green_stained_glass_pane is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40076 280 39970 minecraft:air
setblock 40078 280 39970 minecraft:green_stained_glass
execute store success score #ok autotest if block 40078 280 39970 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:green_stained_glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40078 280 39970 minecraft:air
setblock 40000 280 39972 minecraft:lever
execute store success score #ok autotest if block 40000 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:lever is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40000 280 39972 minecraft:air
setblock 40002 280 39972 minecraft:light_blue_stained_glass_pane
execute store success score #ok autotest if block 40002 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:light_blue_stained_glass_pane is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40002 280 39972 minecraft:air
setblock 40004 280 39972 minecraft:light_blue_stained_glass
execute store success score #ok autotest if block 40004 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:light_blue_stained_glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40004 280 39972 minecraft:air
setblock 40006 280 39972 minecraft:light_gray_stained_glass_pane
execute store success score #ok autotest if block 40006 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:light_gray_stained_glass_pane is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40006 280 39972 minecraft:air
setblock 40008 280 39972 minecraft:light_gray_stained_glass
execute store success score #ok autotest if block 40008 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:light_gray_stained_glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40008 280 39972 minecraft:air
setblock 40010 280 39972 minecraft:lime_stained_glass_pane
execute store success score #ok autotest if block 40010 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:lime_stained_glass_pane is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40010 280 39972 minecraft:air
setblock 40012 280 39972 minecraft:lime_stained_glass
execute store success score #ok autotest if block 40012 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:lime_stained_glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40012 280 39972 minecraft:air
setblock 40014 280 39972 minecraft:magenta_stained_glass_pane
execute store success score #ok autotest if block 40014 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:magenta_stained_glass_pane is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40014 280 39972 minecraft:air
setblock 40016 280 39972 minecraft:magenta_stained_glass
execute store success score #ok autotest if block 40016 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:magenta_stained_glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40016 280 39972 minecraft:air
setblock 40018 280 39972 minecraft:ochre_froglight
execute store success score #ok autotest if block 40018 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:ochre_froglight is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40018 280 39972 minecraft:air
setblock 40020 280 39972 minecraft:orange_stained_glass_pane
execute store success score #ok autotest if block 40020 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:orange_stained_glass_pane is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40020 280 39972 minecraft:air
setblock 40022 280 39972 minecraft:orange_stained_glass
execute store success score #ok autotest if block 40022 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:orange_stained_glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40022 280 39972 minecraft:air
setblock 40024 280 39972 minecraft:pearlescent_froglight
execute store success score #ok autotest if block 40024 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:pearlescent_froglight is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40024 280 39972 minecraft:air
setblock 40026 280 39972 minecraft:piglin_head
execute store success score #ok autotest if block 40026 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:piglin_head is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40026 280 39972 minecraft:air
setblock 40028 280 39972 minecraft:piglin_wall_head
execute store success score #ok autotest if block 40028 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:piglin_wall_head is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40028 280 39972 minecraft:air
setblock 40030 280 39972 minecraft:pink_stained_glass_pane
execute store success score #ok autotest if block 40030 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:pink_stained_glass_pane is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40030 280 39972 minecraft:air
setblock 40032 280 39972 minecraft:pink_stained_glass
execute store success score #ok autotest if block 40032 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:pink_stained_glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40032 280 39972 minecraft:air
setblock 40034 280 39972 minecraft:player_head
execute store success score #ok autotest if block 40034 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:player_head is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40034 280 39972 minecraft:air
setblock 40036 280 39972 minecraft:player_wall_head
execute store success score #ok autotest if block 40036 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:player_wall_head is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40036 280 39972 minecraft:air
setblock 40038 280 39972 minecraft:purple_stained_glass_pane
execute store success score #ok autotest if block 40038 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:purple_stained_glass_pane is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40038 280 39972 minecraft:air
setblock 40040 280 39972 minecraft:purple_stained_glass
execute store success score #ok autotest if block 40040 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:purple_stained_glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40040 280 39972 minecraft:air
setblock 40042 280 39972 minecraft:red_stained_glass_pane
execute store success score #ok autotest if block 40042 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:red_stained_glass_pane is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40042 280 39972 minecraft:air
setblock 40044 280 39972 minecraft:red_stained_glass
execute store success score #ok autotest if block 40044 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:red_stained_glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40044 280 39972 minecraft:air
setblock 40046 280 39972 minecraft:redstone_lamp
execute store success score #ok autotest if block 40046 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:redstone_lamp is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40046 280 39972 minecraft:air
setblock 40048 280 39972 minecraft:sea_lantern
execute store success score #ok autotest if block 40048 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:sea_lantern is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40048 280 39972 minecraft:air
setblock 40050 280 39972 minecraft:skeleton_skull
execute store success score #ok autotest if block 40050 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:skeleton_skull is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40050 280 39972 minecraft:air
setblock 40052 280 39972 minecraft:skeleton_wall_skull
execute store success score #ok autotest if block 40052 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:skeleton_wall_skull is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40052 280 39972 minecraft:air
setblock 40054 280 39972 minecraft:tinted_glass
execute store success score #ok autotest if block 40054 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:tinted_glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40054 280 39972 minecraft:air
setblock 40056 280 39972 minecraft:verdant_froglight
execute store success score #ok autotest if block 40056 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:verdant_froglight is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40056 280 39972 minecraft:air
setblock 40058 280 39972 minecraft:white_stained_glass_pane
execute store success score #ok autotest if block 40058 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:white_stained_glass_pane is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40058 280 39972 minecraft:air
setblock 40060 280 39972 minecraft:white_stained_glass
execute store success score #ok autotest if block 40060 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:white_stained_glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40060 280 39972 minecraft:air
setblock 40062 280 39972 minecraft:wither_skeleton_skull
execute store success score #ok autotest if block 40062 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:wither_skeleton_skull is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40062 280 39972 minecraft:air
setblock 40064 280 39972 minecraft:wither_skeleton_wall_skull
execute store success score #ok autotest if block 40064 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:wither_skeleton_wall_skull is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40064 280 39972 minecraft:air
setblock 40066 280 39972 minecraft:yellow_stained_glass_pane
execute store success score #ok autotest if block 40066 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:yellow_stained_glass_pane is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40066 280 39972 minecraft:air
setblock 40068 280 39972 minecraft:yellow_stained_glass
execute store success score #ok autotest if block 40068 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:yellow_stained_glass is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40068 280 39972 minecraft:air
setblock 40070 280 39972 minecraft:zombie_head
execute store success score #ok autotest if block 40070 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:zombie_head is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40070 280 39972 minecraft:air
setblock 40072 280 39972 minecraft:zombie_wall_head
execute store success score #ok autotest if block 40072 280 39972 #minecraft:mineable/pickaxe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:zombie_wall_head is in #minecraft:mineable/pickaxe",why:"block is not in #minecraft:mineable/pickaxe"}
setblock 40072 280 39972 minecraft:air
setblock 40074 280 39972 minecraft:cactus
execute store success score #ok autotest if block 40074 280 39972 #minecraft:mineable/axe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:cactus is in #minecraft:mineable/axe",why:"block is not in #minecraft:mineable/axe"}
setblock 40074 280 39972 minecraft:air
setblock 40076 280 39972 minecraft:honeycomb_block
execute store success score #ok autotest if block 40076 280 39972 #minecraft:mineable/axe
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:honeycomb_block is in #minecraft:mineable/axe",why:"block is not in #minecraft:mineable/axe"}
setblock 40076 280 39972 minecraft:air
setblock 40078 280 39972 minecraft:cake
execute store success score #ok autotest if block 40078 280 39972 #minecraft:mineable/shovel
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"BLK-7 minecraft:cake is in #minecraft:mineable/shovel",why:"block is not in #minecraft:mineable/shovel"}
setblock 40078 280 39972 minecraft:air
