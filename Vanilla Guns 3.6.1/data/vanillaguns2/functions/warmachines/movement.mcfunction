execute as @e[type=#vanillaguns2:warmachineentities,distance=..15] if score @s VG_vehicleid = @e[type=armor_stand,tag=VG_vehiclemarker,scores={VG_vehiclemovtme=1..},tag=VG_vehiclemovequeue,limit=1,sort=nearest,distance=..0.1] VG_vehicleid run tag @s add VG_vehiclemoving
scoreboard players operation VG_vehiclecurupd VG_vehiclecurupd = @s VG_vehicleid

execute as @a[tag=VG_vehiclemoving,sort=nearest,limit=1] store result score @s VG_vehicleitem run data get entity @s SelectedItem.tag.ActionOperator
execute as @a[tag=VG_vehiclemoving,sort=nearest,limit=1,scores={VG_vehicleitem=1..}] run function vanillaguns2:warmachines/movement/constant

execute as @s[tag=VG_vehiclemoving,tag=VG_armoredcarbody,scores={VG_vehiclemovmod=1}] if block ^ ^ ^1 #vanillaguns2:autoturretblocks positioned ^ ^ ^2 unless entity @e[type=shulker,tag=VG_vehiclebody,distance=..0.5] at @s run function vanillaguns2:warmachines/movement/armoredcar/forward
execute as @s[tag=VG_vehiclemoving,tag=VG_armoredcarbody,scores={VG_vehiclemovmod=2}] if block ^ ^ ^-2 #vanillaguns2:autoturretblocks positioned ^ ^ ^-3 unless entity @e[type=shulker,tag=VG_vehiclebody,distance=..0.5] at @s run function vanillaguns2:warmachines/movement/armoredcar/backwards

scoreboard players add @e[type=armor_stand,tag=VG_vehiclemoving] VG_breaktimer 0
scoreboard players remove @s[scores={VG_breaktimer=1..}] VG_breaktimer 1

execute as @s[tag=VG_vehiclemoving,tag=VG_lighttankbody,scores={VG_vehiclemovmod=1,VG_breaktimer=0}] positioned ^ ^ ^2 unless entity @e[type=shulker,tag=VG_vehiclebody,distance=..0.5] at @s run function vanillaguns2:warmachines/movement/lighttank/forward
execute as @s[tag=VG_vehiclemoving,tag=VG_lighttankbody,scores={VG_vehiclemovmod=2,VG_breaktimer=0}] positioned ^ ^ ^-6 unless entity @e[type=shulker,tag=VG_vehiclebody,distance=..0.5] at @s run function vanillaguns2:warmachines/movement/lighttank/backwards

execute as @s[tag=VG_vehiclemoving,tag=VG_heavytankbody,scores={VG_vehiclemovmod=1,VG_breaktimer=0}] positioned ^ ^ ^3 unless entity @e[type=shulker,tag=VG_vehiclebody,distance=..0.5] at @s run function vanillaguns2:warmachines/movement/heavytank/forward
execute as @s[tag=VG_vehiclemoving,tag=VG_heavytankbody,scores={VG_vehiclemovmod=2,VG_breaktimer=0}] positioned ^ ^ ^-7 unless entity @e[type=shulker,tag=VG_vehiclebody,distance=..0.5] at @s run function vanillaguns2:warmachines/movement/heavytank/backwards

execute as @a[tag=VG_vehiclemoving,sort=nearest,limit=1] run setblock ~ ~1 ~ air destroy

tag @s remove VG_vehiclemovequeue
scoreboard players set @s VG_vehiclemovtme 0
execute at @s run tag @e[type=#vanillaguns2:warmachineentities,tag=VG_vehiclemoving,distance=..15] remove VG_vehiclemoving
execute as @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehiclemovequeue,limit=1] at @s run function vanillaguns2:warmachines/movement