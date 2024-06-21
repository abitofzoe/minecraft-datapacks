effect give @s minecraft:blindness 1
tp @s @e[type=armor_stand,sort=nearest,limit=1,distance=..1,tag=VG_vehiclemarker]
playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 0.5 0
scoreboard players set @s VG_vehicleid 0
tag @e[type=armor_stand,sort=nearest,limit=1,distance=..1,tag=VG_vehiclemarker,tag=VG_vehicleoccupied] remove VG_vehicleoccupied

clear @s barrier{DeleteOnDrop:1}
clear @s carrot_on_a_stick{DeleteOnDrop:1}