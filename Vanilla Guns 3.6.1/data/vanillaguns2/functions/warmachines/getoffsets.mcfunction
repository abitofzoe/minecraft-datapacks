function vanillaguns2:warmachines/getpos
scoreboard players operation @s VG_vehicleoffX = @s VG_vehicleposX
scoreboard players operation @s VG_vehicleoffY = @s VG_vehicleposY
scoreboard players operation @s VG_vehicleoffZ = @s VG_vehicleposZ

scoreboard players operation @s VG_vehicleoffX -= @e[type=armor_stand,distance=..1,sort=nearest,limit=1,tag=VG_vehiclemarker,tag=VG_vehicleinit] VG_vehicleposX
scoreboard players operation @s VG_vehicleoffY -= @e[type=armor_stand,distance=..1,sort=nearest,limit=1,tag=VG_vehiclemarker,tag=VG_vehicleinit] VG_vehicleposY
scoreboard players operation @s VG_vehicleoffZ -= @e[type=armor_stand,distance=..1,sort=nearest,limit=1,tag=VG_vehiclemarker,tag=VG_vehicleinit] VG_vehicleposZ