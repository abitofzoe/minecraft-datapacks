execute as @e[type=shulker,tag=VG_vehiclebody,scores={VG_vehiclehurt=1..}] if score @s VG_vehicleid = @e[type=armor_stand,tag=VG_vehiclebody,scores={VG_vehicleid=1..},limit=1,tag=VG_calculatinghp,tag=!VG_skiphealth] VG_vehicleid run tag @s add VG_calculatinghp

execute as @e[type=shulker,tag=VG_vehiclebody,tag=VG_calculatinghp] at @s run function vanillaguns2:warmachines/gethpdifference

execute as @e[type=armor_stand,tag=VG_vehiclebody,tag=VG_calculatinghp,tag=!VG_skiphealth] if score @s VG_vehiclehp matches ..0 run scoreboard players set @s VG_vehiclehp 0
execute as @e[type=armor_stand,tag=VG_vehiclebody,tag=VG_calculatinghp,tag=!VG_skiphealth] if score @s VG_vehiclehp matches ..0 as @e[type=shulker,tag=VG_vehiclebody] if score @s VG_vehicleid = @e[type=armor_stand,tag=VG_vehiclebody,scores={VG_vehicleid=1..},limit=1,tag=VG_calculatinghp,tag=!VG_skiphealth] VG_vehicleid run tag @s add VG_calculatinghp
execute as @e[type=armor_stand,tag=VG_vehiclebody,tag=VG_calculatinghp,tag=!VG_skiphealth] if score @s VG_vehiclehp matches ..0 as @e[type=area_effect_cloud,tag=VG_vehiclebody] if score @s VG_vehicleid = @e[type=armor_stand,tag=VG_vehiclebody,scores={VG_vehicleid=1..},limit=1,tag=VG_calculatinghp,tag=!VG_skiphealth] VG_vehicleid run tag @s add VG_calculatinghp
execute as @e[type=armor_stand,tag=VG_vehiclebody,tag=VG_calculatinghp,scores={VG_vehiclehp=1..},tag=!VG_skiphealth] run function vanillaguns2:warmachines/dohpoperations
execute as @e[type=armor_stand,tag=VG_vehiclebody,tag=VG_calculatinghp,scores={VG_vehiclehp=..0},tag=!VG_skiphealth] at @s run function vanillaguns2:warmachines/explode

tag @e[type=#vanillaguns2:warmachineentities,tag=VG_vehiclebody] remove VG_calculatinghp
tag @s add VG_skiphealth

execute as @e[type=armor_stand,tag=VG_vehiclebody,scores={VG_vehicleid=1..},limit=1,tag=!VG_skiphealth] run function vanillaguns2:warmachines/hpcalc