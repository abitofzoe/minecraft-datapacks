function vanillaguns2:warmachines/check/armoredcar
function vanillaguns2:warmachines/check/lighttank
function vanillaguns2:warmachines/check/heavytank
tag @s remove VG_machineinitqueue
execute as @e[type=minecraft:shulker,tag=!VG_vehicleinit,tag=!VG_block_obsidian] run scoreboard players set @s VG_vehiclepkqueu 5
tag @e[type=#vanillaguns2:warmachineentities,type=!player,tag=!VG_vehicleinit] add VG_vehicleinit
execute as @e[type=armor_stand,limit=1,tag=VG_machineinitqueue] at @s run function vanillaguns2:warmachines/initialize