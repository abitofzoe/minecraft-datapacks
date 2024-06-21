execute as @e[type=#vanillaguns2:warmachineentities] if score @s VG_vehicleid = VG_vehiclecurupd VG_vehiclecurupd run tag @s add VG_vehicleupdatepos

#Physics engine
scoreboard players set @e[type=armor_stand,limit=1,tag=VG_vehicleupdatepos] VG_vehicleinscnt 0
scoreboard players set @e[type=armor_stand,limit=1,tag=VG_vehicleupdatepos] VG_vehiclefall 0
execute as @e[type=armor_stand,limit=1,tag=VG_vehicleupdatepos] at @s run function vanillaguns2:warmachines/updatepos/groundcontactcheck
execute as @e[type=armor_stand,limit=1,tag=VG_vehicleupdatepos,scores={VG_vehiclefall=2..}] run function vanillaguns2:warmachines/updatepos/falldamage

execute as @e[type=area_effect_cloud,tag=VG_groundcontact,tag=VG_vehicleupdatepos] at @s unless block ~ ~0.375 ~ #vanillaguns2:autoturretblocks run scoreboard players add @e[type=armor_stand,sort=nearest,limit=1,tag=VG_vehicleupdatepos] VG_vehicleinscnt 1
execute as @e[type=armor_stand,limit=1,tag=VG_vehicleupdatepos] at @s if score @s VG_vehicleinscnt >= @s VG_vehicleground run function vanillaguns2:warmachines/updatepos/goup

execute as @e[type=armor_stand,tag=VG_vehicleupdatepos] at @s run function vanillaguns2:warmachines/updatepos/recalculateposition
execute as @e[type=armor_stand,tag=VG_vehicleupdatepos] at @s as @a[scores={VG_vehicleid=1..},sort=nearest,limit=1,distance=0.1..] if score @s VG_vehicleid = @e[type=armor_stand,tag=VG_vehicleupdatepos,distance=..0.1,sort=nearest,limit=1] VG_vehicleid run tp @s ~ ~.1 ~
execute as @e[type=armor_stand,tag=VG_vehicleupdatepos] at @s as @a[scores={VG_vehicleid=1..},sort=nearest,limit=1,distance=0.1..] if score @s VG_vehicleid = @e[type=armor_stand,tag=VG_vehicleupdatepos,distance=..0.1,sort=nearest,limit=1] VG_vehicleid at @s run tp @s ~ ~ ~ ~ ~

execute as @e[type=shulker,tag=VG_vehicleupdatepos,tag=VG_lighttankbody,tag=!VG_tracks] at @s unless block ~ ~ ~ #vanillaguns2:lasersafeblocks run function vanillaguns2:warmachines/updatepos/lighttankdestroy
execute as @e[type=shulker,tag=VG_vehicleupdatepos,tag=VG_heavytankbody,tag=!VG_tracks] at @s unless block ~ ~ ~ #vanillaguns2:lasersafeblocks run function vanillaguns2:warmachines/updatepos/heavytankdestroy

execute as @e[type=minecraft:armor_stand,tag=VG_vehicleupdatepos,tag=VG_lighttankbody] at @s unless block ~ ~1 ~ #vanillaguns2:lasersafeblocks positioned ~ ~1 ~ run function vanillaguns2:warmachines/updatepos/lighttankdestroy
execute as @e[type=minecraft:armor_stand,tag=VG_vehicleupdatepos,tag=VG_heavytankbody] at @s unless block ~ ~1 ~ #vanillaguns2:lasersafeblocks positioned ~ ~1 ~ run function vanillaguns2:warmachines/updatepos/heavytankdestroy

execute as @e[type=#vanillaguns2:warmachineentities,tag=VG_vehicleupdatepos] run tag @s remove VG_vehicleupdatepos