execute as @e[type=item,nbt={Item:{id:"minecraft:obsidian"}},distance=..1,sort=nearest,limit=1] run function vanillaguns2:special/decrementitem
function vanillaguns2:turrets/newturreteffects

fill ^-1 ^ ^-2 ^1 ^2 ^1 air destroy
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air

summon armor_stand ~ ~1 ~ {Invisible:1,NoAI:1,Marker:1b,Invulnerable:1,NoGravity:1,CustomName:"{\"text\":\"Armored Car\",\"color\":\"aqua\"}",Invulnerable:1,NoAI:1,PersistenceRequired:1b,CanPickUpLoot:0b,Health:1000,Attributes:[{Name:"generic.maxHealth",Base:1000},{Name:"generic.followRange",Base:0},{Name:"generic.knockbackResistance",Base:1f},{Name:"generic.movementSpeed",Base:0f}],Silent:1,Tags:["VG_armoredcarbody","VG_vehiclemarker","VG_vehiclebody","VG_notaturret"]}
execute as @e[type=armor_stand,distance=..2,sort=nearest,limit=1,tag=VG_vehiclemarker,tag=!VG_vehicleinit,tag=VG_vehiclebody,tag=VG_armoredcarbody] run function vanillaguns2:warmachines/make/spawn/armoredcar

kill @s