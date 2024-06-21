summon area_effect_cloud ~ ~ ~ {Owner:[I;1,1,1,1]}

data modify entity @e[type=minecraft:area_effect_cloud,distance=..0.25,sort=nearest,limit=1] Owner set from entity @r[gamemode=!spectator,gamemode=!adventure,tag=IZ_inminigame] UUID
 
data merge entity @e[type=minecraft:area_effect_cloud,distance=..0.25,sort=nearest,limit=1] {Radius:0.1f,Effects:[{Id:11b,Amplifier:127b,Duration:1,ShowParticles:0b},{Id:6b,Amplifier:2b,Duration:1,ShowParticles:0b}],Duration:2,Age:4,WaitTime:4}

tag @s add IZ_aggroed
tag @s add IZr_aggroed