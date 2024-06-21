data modify entity @s Rotation[0] set from entity @e[type=armor_stand,tag=VG_vehicleupdatepos,limit=1] Rotation[0]
execute at @s run function vanillaguns2:warmachines/updatepos/update_vert
execute at @s run function vanillaguns2:warmachines/updatepos/update_left
execute at @s run function vanillaguns2:warmachines/updatepos/update_forward
scoreboard players add @s VG_AECFix 1
execute if score @s VG_AECFix matches 1 run data merge entity @s {Air:0s}
execute if score @s VG_AECFix matches 2 run data merge entity @s {Air:1s}
execute if score @s VG_AECFix matches 2 run scoreboard players set @s VG_AECFix 0