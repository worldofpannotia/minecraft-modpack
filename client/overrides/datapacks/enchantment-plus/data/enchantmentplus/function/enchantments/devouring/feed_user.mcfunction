# Feed User
effect give @s minecraft:saturation 1 1 true

# Sound
playsound minecraft:entity.generic.eat player @a ~ ~ ~ 1 0.5

# Particles
execute anchored eyes run particle minecraft:item{item:"minecraft:rotten_flesh"} ^ ^ ^2.5 0.5 0.5 0.5 0 15
execute anchored eyes run particle minecraft:block{block_state:"minecraft:brown_concrete_powder"} ^ ^ ^2.5 0.5 0.5 0.5 0 15
