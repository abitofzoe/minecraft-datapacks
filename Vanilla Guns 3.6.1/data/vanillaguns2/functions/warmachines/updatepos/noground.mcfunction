tp @s ~ ~-1 ~
playsound minecraft:block.wooden_door.close player @a ~ ~ ~ 1 2 0
scoreboard players add @s VG_vehiclefall 1
execute at @s run function vanillaguns2:warmachines/updatepos/recalculateposition
execute at @s run function vanillaguns2:warmachines/updatepos/groundcontactcheck