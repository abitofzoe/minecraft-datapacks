execute at @e[distance=..0.75,tag=!VG_creeper] run summon area_effect_cloud ~ ~ ~ {Owner:[],NoGravity:1b}
execute at @e[distance=..0.75,tag=!VG_creeper] run summon area_effect_cloud ~ ~ ~ {Owner:[],NoGravity:1b}

execute at @e[distance=..0.75,tag=!VG_creeper] run data modify entity @e[type=minecraft:area_effect_cloud,distance=..0.25,sort=nearest,limit=1] Owner set from entity @s ArmorItems[3].tag.Owner
 
execute at @e[type=!#vanillaguns2:undead,distance=..0.75,tag=!VG_creeper] run data merge entity @e[type=minecraft:area_effect_cloud,distance=..0.25,sort=nearest,limit=1] {Radius:0.1f,Effects:[{Id:11b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:1b,Duration:1,ShowParticles:0b}],Duration:6,Age:4,WaitTime:4}
execute at @e[type=#vanillaguns2:undead,distance=..0.75,tag=!VG_creeper] run data merge entity @e[type=minecraft:area_effect_cloud,distance=..0.25,sort=nearest,limit=1] {Radius:0.1f,Effects:[{Id:11b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:6b,Amplifier:1b,Duration:1,ShowParticles:0b}],Duration:6,Age:4,WaitTime:4}