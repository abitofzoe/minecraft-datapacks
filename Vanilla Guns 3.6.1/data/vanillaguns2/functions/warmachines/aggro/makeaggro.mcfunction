#effect give @s glowing 1 0 true

execute at @e[type=#vanillaguns2:hostile,distance=..24,tag=!VG_vehiclebody] run summon area_effect_cloud ~ ~ ~ {Owner:[I;1,1,1,1]}

execute at @e[type=#vanillaguns2:hostile,distance=..24,tag=!VG_vehiclebody] run data modify entity @e[type=minecraft:area_effect_cloud,distance=..0.25,sort=nearest,limit=1] Owner set from entity @s UUID
 
execute at @e[type=!#vanillaguns2:undead,tag=!VG_vehiclebody,distance=..24] run data merge entity @e[type=minecraft:area_effect_cloud,distance=..0.25,sort=nearest,limit=1] {Radius:0.1f,Effects:[{Id:11b,Amplifier:127b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:2b,Duration:1,ShowParticles:0b}],Duration:6,Age:4,WaitTime:4}
execute at @e[type=#vanillaguns2:undead,tag=!VG_vehiclebody,distance=..24] run data merge entity @e[type=minecraft:area_effect_cloud,distance=..0.25,sort=nearest,limit=1] {Radius:0.1f,Effects:[{Id:11b,Amplifier:127b,Duration:1,ShowParticles:0b},{Id:6b,Amplifier:2b,Duration:1,ShowParticles:0b}],Duration:6,Age:4,WaitTime:4}

scoreboard players set @e[type=armor_stand,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..0.1] VG_vehicleaggro 0

execute as @e[type=armor_stand,tag=VG_vehicleoccupied,limit=1,scores={VG_vehicleaggro=200..}] at @s as @e[type=shulker,tag=VG_targetaggro] if score @s VG_vehicleid = @e[type=armor_stand,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..0.1] VG_vehicleid run function vanillaguns2:warmachines/aggro/makeaggro