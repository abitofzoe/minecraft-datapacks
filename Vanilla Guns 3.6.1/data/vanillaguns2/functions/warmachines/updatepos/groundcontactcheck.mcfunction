scoreboard players set @e[type=armor_stand,limit=1,tag=VG_vehicleupdatepos] VG_vehicleground 0
scoreboard players set @e[type=armor_stand,limit=1,tag=VG_vehicleupdatepos] VG_vehiclecontct 0
scoreboard players set @e[type=armor_stand,limit=1,tag=VG_vehicleupdatepos] VG_hiddenground 0
scoreboard players set @e[type=armor_stand,limit=1,tag=VG_vehicleupdatepos] VG_hiddencontct 0

execute as @e[type=area_effect_cloud,tag=VG_groundcontact,tag=VG_vehicleupdatepos,tag=VG_heavytankbody] at @s run scoreboard players add @e[type=armor_stand,sort=nearest,limit=1,tag=VG_vehicleupdatepos] VG_hiddenground 1
execute as @e[type=area_effect_cloud,tag=VG_groundcontact,tag=VG_vehicleupdatepos,tag=VG_heavytankbody] at @s unless block ~ ~-1 ~ #vanillaguns2:autoturretblocks run scoreboard players add @e[type=armor_stand,limit=1,tag=VG_vehicleupdatepos] VG_hiddencontct 1

scoreboard players operation @s[tag=VG_heavytankbody] VG_hiddencontct *= VG_100mult VG_100mult
scoreboard players operation @s[tag=VG_heavytankbody] VG_hiddencontct /= @s VG_hiddenground

execute as @e[type=area_effect_cloud,tag=VG_groundcontact,tag=VG_vehicleupdatepos] at @s run scoreboard players add @e[type=armor_stand,sort=nearest,limit=1,tag=VG_vehicleupdatepos] VG_vehicleground 1
execute as @e[type=area_effect_cloud,tag=VG_groundcontact,tag=VG_vehicleupdatepos] at @s unless block ~ ~ ~ #vanillaguns2:autoturretblocks run scoreboard players add @e[type=armor_stand,limit=1,tag=VG_vehicleupdatepos] VG_vehiclecontct 1

scoreboard players operation @s VG_vehiclecontct *= VG_100mult VG_100mult
scoreboard players operation @s VG_vehiclecontct /= @s VG_vehicleground

execute if score @s VG_vehiclecontct > VG_defines VG_def_minground run tag @s remove VG_hiddengroundtriggered

execute if score @s[tag=VG_heavytankbody,tag=!VG_hiddengroundtriggered] VG_hiddencontct <= VG_defines VG_def_hddngrnd run function vanillaguns2:warmachines/updatepos/hiddenground

execute if score @s VG_vehiclecontct <= VG_defines VG_def_minground run function vanillaguns2:warmachines/updatepos/noground
