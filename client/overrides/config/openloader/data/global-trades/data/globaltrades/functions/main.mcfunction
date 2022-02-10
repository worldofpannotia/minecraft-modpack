execute at @a as @e[type=villager,limit=10,sort=nearest,distance=..20,nbt={Gossips:[{Type:"major_positive"}]}] run function globaltrades:major
execute at @a as @e[type=villager,limit=10,sort=nearest,distance=..20,nbt={Gossips:[{Type:"minor_positive"}]}] run function globaltrades:minor
schedule function globaltrades:main 60s