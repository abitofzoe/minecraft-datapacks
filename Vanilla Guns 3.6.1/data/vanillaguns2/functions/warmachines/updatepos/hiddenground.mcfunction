tp @s ~ ~-1 ~
playsound minecraft:block.glass.break player @a ~ ~ ~ 1 2 0
scoreboard players add @s VG_vehiclefall 1
tag @s add VG_hiddengroundtriggered

execute at @e[type=shulker,tag=VG_vehicleupdatepos,tag=VG_heavytankbody,tag=VG_tracks] run setblock ~ ~-1 ~ air destroy
execute at @s run function vanillaguns2:warmachines/updatepos/recalculateposition