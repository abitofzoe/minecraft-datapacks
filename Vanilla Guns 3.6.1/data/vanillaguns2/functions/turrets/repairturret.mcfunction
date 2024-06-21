execute as @e[type=item,nbt={Item:{id:"minecraft:flint"}},distance=..1,sort=nearest,limit=1] run function vanillaguns2:special/decrementitem
effect give @s instant_health 1 0
playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 0.5 2
particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 0 100 normal