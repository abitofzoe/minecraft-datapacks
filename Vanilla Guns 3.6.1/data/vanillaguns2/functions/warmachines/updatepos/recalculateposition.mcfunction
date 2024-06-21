tp @e[type=area_effect_cloud,tag=VG_vehicleupdatepos] ~ ~-1 ~
#execute as @e[type=shulker,tag=VG_vehicleupdatepos] at @s run data modify entity @s Rotation[0] set from entity @e[type=armor_stand,tag=VG_vehicleupdatepos,limit=1] Rotation[0]
execute as @e[type=area_effect_cloud,tag=VG_vehicleupdatepos] at @s run function vanillaguns2:warmachines/updatepos/offsets
execute as @e[type=shulker,tag=VG_vehiclefloor,tag=VG_vehicleupdatepos] at @s run function vanillaguns2:warmachines/updatepos/entitycrush
execute as @e[type=shulker,tag=VG_vehiclefloor,tag=VG_vehicleupdatepos] at @s if block ~ ~ ~ lava run effect give @s instant_damage 1 0 true