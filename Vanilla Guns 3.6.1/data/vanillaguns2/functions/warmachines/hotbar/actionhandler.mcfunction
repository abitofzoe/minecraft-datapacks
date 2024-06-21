scoreboard players operation @e[type=armor_stand,distance=..1,sort=nearest,limit=1,tag=VG_vehicleoccupied] VG_vehicleaction = @s VG_vehicleaction
execute as @e[type=armor_stand,distance=..1,sort=nearest,limit=1,tag=VG_vehicleoccupied,tag=VG_armoredcarbody] at @s run function vanillaguns2:warmachines/hotbar/actionhandler/armoredcar
execute as @e[type=armor_stand,distance=..1,sort=nearest,limit=1,tag=VG_vehicleoccupied,tag=VG_lighttankbody] at @s run function vanillaguns2:warmachines/hotbar/actionhandler/lighttank
execute as @e[type=armor_stand,distance=..1,sort=nearest,limit=1,tag=VG_vehicleoccupied,tag=VG_heavytankbody] at @s run function vanillaguns2:warmachines/hotbar/actionhandler/heavytank
tag @s remove VG_actionqueue
execute as @a[tag=VG_actionqueue,limit=1] at @s run function vanillaguns2:warmachines/hotbar/actionhandler