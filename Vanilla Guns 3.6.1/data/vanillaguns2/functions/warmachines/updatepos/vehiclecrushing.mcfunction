execute store result score @s VG_vehicleCrshY run data get entity @s Pos[1] 100
execute if score @s VG_vehicleCrshY < @e[type=shulker,tag=VG_vehiclefloor,tag=VG_vehicleupdatepos,distance=..0.1,sort=nearest,limit=1] VG_vehicleCrshY at @s run function vanillaguns2:warmachines/updatepos/crusheffects
tag @s remove VG_vehiclecrushing