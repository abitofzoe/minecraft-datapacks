execute store result score @s VG_vehicleCrshY run data get entity @s Pos[1] 100
execute positioned ~ ~-1 ~ as @a[gamemode=!creative,gamemode=!spectator,distance=..0.75,tag=!VG_vehicleupdatepos] run tag @s add VG_vehiclecrushing
execute positioned ~ ~-1 ~ as @e[type=!player,type=!villager,distance=..0.75,tag=!VG_vehiclebody,type=!minecraft:falling_block,type=!item] run tag @s add VG_vehiclecrushing
execute positioned ~ ~-1 ~ as @e[type=villager,tag=VG_hpvillager,distance=..0.75] run tag @s add VG_vehiclecrushing
execute positioned ~ ~-1 ~ as @e[distance=..0.75,tag=VG_vehiclecrushing] positioned ~ ~1 ~ run function vanillaguns2:warmachines/updatepos/vehiclecrushing

kill @a[gamemode=!creative,gamemode=!spectator,distance=..0.3]
kill @e[type=!player,type=!villager,distance=..0.3,tag=!VG_vehiclebody]
effect give @e[type=villager,tag=VG_hpvillager,distance=..0.3] instant_damage 1 0 true