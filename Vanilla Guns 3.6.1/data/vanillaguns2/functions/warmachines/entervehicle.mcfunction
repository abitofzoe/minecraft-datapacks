effect give @s minecraft:blindness 1
tag @s add VG_ignoresneak
tp @s @e[type=armor_stand,sort=nearest,limit=1,distance=..1,tag=VG_vehiclemarker]
scoreboard players set @s VG_entering 0
playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 0.5 0
scoreboard players operation @s VG_vehicleid = @e[type=armor_stand,sort=nearest,limit=1,distance=..1,tag=VG_vehiclemarker] VG_vehicleid
tag @e[type=armor_stand,sort=nearest,limit=1,distance=..1,tag=VG_vehiclemarker] add VG_vehicleoccupied
scoreboard players set @e[type=armor_stand,sort=nearest,limit=1,distance=..1,tag=VG_vehiclemarker,tag=VG_vehicleoccupied] VG_vehiclemovmod 1
execute as @e[type=armor_stand,sort=nearest,limit=1,distance=..1,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,tag=VG_lighttankbody] run function vanillaguns2:warmachines/flakcalculate
execute as @e[type=armor_stand,sort=nearest,limit=1,distance=..1,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,tag=VG_heavytankbody] run function vanillaguns2:warmachines/flakcalculate
execute as @e[type=armor_stand,sort=nearest,limit=1,distance=..1,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,tag=VG_heavytankbody] run function vanillaguns2:warmachines/fragcalculate

execute if data entity @s Inventory[0] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[0]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[1] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[1]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[2] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[2]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[3] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[3]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[4] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[4]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[5] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[5]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[6] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[6]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[7] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[7]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[8] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[8]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[9] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[9]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[10] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[10]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[11] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[11]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[12] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[12]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[13] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[13]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[14] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[14]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[15] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[15]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[16] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[16]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[17] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[17]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[18] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[18]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[19] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[19]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[20] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[20]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[21] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[21]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[22] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[22]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[23] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[23]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[24] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[24]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[25] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[25]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[26] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[26]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[27] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[27]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[28] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[28]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[29] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[29]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[30] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[30]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[31] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[31]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[32] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[32]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[33] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[33]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[34] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[34]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[35] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[35]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[36] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[36]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[37] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[37]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[38] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[38]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[39] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[39]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[40] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[40]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

execute if data entity @s Inventory[41] run summon item ~ ~ ~ {PickupDelay:2,Item:{id:"minecraft:bedrock",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] Item set from entity @s Inventory.[41]
tag @e[type=item,sort=nearest,limit=1,tag=!VG_vehicleitemspawned] add VG_vehicleitemspawned

clear @s 

