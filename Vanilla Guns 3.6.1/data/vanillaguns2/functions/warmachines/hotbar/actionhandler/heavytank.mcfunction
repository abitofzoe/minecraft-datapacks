execute if score @s VG_vehicleaction matches 1 as @a[sort=nearest,limit=1,distance=..1,scores={VG_vehicleid=1..}] at @s run function vanillaguns2:warmachines/hotbar/actionhandler/heavytank/exitvehicle
execute if score @s VG_vehicleaction matches 2 at @s run function vanillaguns2:warmachines/hotbar/actionhandler/heavytank/gobackwards
execute if score @s VG_vehicleaction matches 3 at @s run function vanillaguns2:warmachines/hotbar/actionhandler/heavytank/goforwards
execute if entity @a[sort=nearest,limit=1,distance=..1,scores={VG_sneak=1..}] if score @s VG_vehicleaction matches 4 at @s run function vanillaguns2:warmachines/hotbar/actionhandler/heavytank/turnleft
execute if entity @a[sort=nearest,limit=1,distance=..1,scores={VG_sneak=1..}] if score @s VG_vehicleaction matches 5 at @s run function vanillaguns2:warmachines/hotbar/actionhandler/heavytank/turnright
execute if score @s[scores={VG_vehiclemovmod=0}] VG_vehicleaction matches 6 as @a[sort=nearest,limit=1,distance=..1,scores={VG_usecooldown=0,VG_vehicleid=1..}] at @s anchored eyes positioned ^ ^ ^1.5 unless entity @e[type=shulker,distance=..1,tag=VG_heavytankbody] run function vanillaguns2:warmachines/hotbar/actionhandler/heavytank/firehmg
execute if score @s[scores={VG_vehiclemovmod=0}] VG_vehicleaction matches 6 as @a[sort=nearest,limit=1,distance=..1,scores={VG_usecooldown=0,VG_vehicleid=1..}] at @s anchored eyes positioned ^ ^ ^1.5 if entity @e[type=shulker,distance=..1,tag=VG_heavytankbody] run playsound minecraft:block.stone_button.click_off master @s ~ ~ ~ 1 2 0
execute if score @s[scores={VG_vehiclemovmod=1..2}] VG_vehicleaction matches 6 as @a[sort=nearest,limit=1,distance=..1,scores={VG_usecooldown=0,VG_vehicleid=1..,VG_sneak=0}] at @s anchored eyes positioned ^ ^ ^1.5 unless entity @e[type=shulker,distance=..1,tag=VG_heavytankbody] run function vanillaguns2:warmachines/hotbar/actionhandler/heavytank/firehmg
execute if score @s[scores={VG_vehiclemovmod=1..2}] VG_vehicleaction matches 6 as @a[sort=nearest,limit=1,distance=..1,scores={VG_usecooldown=0,VG_vehicleid=1..,VG_sneak=0}] at @s anchored eyes positioned ^ ^ ^1.5 if entity @e[type=shulker,distance=..1,tag=VG_heavytankbody] run playsound minecraft:block.stone_button.click_off master @s ~ ~ ~ 1 2 0
execute if score @s VG_vehicleaction matches 104 at @s run function vanillaguns2:warmachines/hotbar/actionhandler/heavytank/turnleftsmall
execute if score @s VG_vehicleaction matches 105 at @s run function vanillaguns2:warmachines/hotbar/actionhandler/heavytank/turnrightsmall
execute if score @s[scores={VG_vehiclemovmod=0}] VG_vehicleaction matches 7 as @a[sort=nearest,limit=1,distance=..1,scores={VG_usecooldown=0,VG_vehicleid=1..}] at @s anchored eyes positioned ^ ^ ^1 unless entity @e[type=shulker,distance=..1,tag=VG_heavytankbody] positioned ^ ^ ^-1 anchored feet run function vanillaguns2:warmachines/hotbar/actionhandler/heavytank/launchflak
execute if score @s[scores={VG_vehiclemovmod=0}] VG_vehicleaction matches 7 as @a[sort=nearest,limit=1,distance=..1,scores={VG_usecooldown=0,VG_vehicleid=1..}] at @s anchored eyes positioned ^ ^ ^1 if entity @e[type=shulker,distance=..1,tag=VG_heavytankbody] positioned ^ ^ ^-1 anchored feet run playsound minecraft:block.stone_button.click_off master @s ~ ~ ~ 1 2 0
execute if score @s[scores={VG_vehiclemovmod=0}] VG_vehicleaction matches 8 as @a[sort=nearest,limit=1,distance=..1,scores={VG_usecooldown=0,VG_vehicleid=1..}] at @s anchored eyes positioned ^ ^ ^1.5 unless entity @e[type=shulker,distance=..1,tag=VG_heavytankbody] run function vanillaguns2:warmachines/hotbar/actionhandler/heavytank/firefrag
execute if score @s[scores={VG_vehiclemovmod=0}] VG_vehicleaction matches 8 as @a[sort=nearest,limit=1,distance=..1,scores={VG_usecooldown=0,VG_vehicleid=1..}] at @s anchored eyes positioned ^ ^ ^1.5 if entity @e[type=shulker,distance=..1,tag=VG_heavytankbody] run playsound minecraft:block.stone_button.click_off master @s ~ ~ ~ 1 2 0
execute if score @s[scores={VG_vehiclemovmod=1..2}] VG_vehicleaction matches 7 as @a[sort=nearest,limit=1,distance=..1,scores={VG_usecooldown=0,VG_vehicleid=1..,VG_sneak=0}] at @s anchored eyes positioned ^ ^ ^1 unless entity @e[type=shulker,distance=..1,tag=VG_heavytankbody] positioned ^ ^ ^-1 anchored feet run function vanillaguns2:warmachines/hotbar/actionhandler/heavytank/launchflak
execute if score @s[scores={VG_vehiclemovmod=1..2}] VG_vehicleaction matches 7 as @a[sort=nearest,limit=1,distance=..1,scores={VG_usecooldown=0,VG_vehicleid=1..,VG_sneak=0}] at @s anchored eyes positioned ^ ^ ^1 if entity @e[type=shulker,distance=..1,tag=VG_heavytankbody] positioned ^ ^ ^-1 anchored feet run playsound minecraft:block.stone_button.click_off master @s ~ ~ ~ 1 2 0
execute if score @s[scores={VG_vehiclemovmod=1..2}] VG_vehicleaction matches 8 as @a[sort=nearest,limit=1,distance=..1,scores={VG_usecooldown=0,VG_vehicleid=1..,VG_sneak=0}] at @s anchored eyes positioned ^ ^ ^1.5 unless entity @e[type=shulker,distance=..1,tag=VG_heavytankbody] run function vanillaguns2:warmachines/hotbar/actionhandler/heavytank/firefrag
execute if score @s[scores={VG_vehiclemovmod=1..2}] VG_vehicleaction matches 8 as @a[sort=nearest,limit=1,distance=..1,scores={VG_usecooldown=0,VG_vehicleid=1..,VG_sneak=0}] at @s anchored eyes positioned ^ ^ ^1.5 if entity @e[type=shulker,distance=..1,tag=VG_heavytankbody] run playsound minecraft:block.stone_button.click_off master @s ~ ~ ~ 1 2 0
execute if score @s[tag=VG_vehiclemoving] VG_vehicleaction matches 106..108 at @s run function vanillaguns2:warmachines/movement/suspendmovement
execute unless score @s[tag=VG_vehiclemoving] VG_vehicleaction matches 106..108 at @s run function vanillaguns2:warmachines/movement/resumemovement
