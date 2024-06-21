tag @e[tag=TC_inminigame,type=villager,tag=TC_guard,scores={TC_resources=1..},tag=TC_redguard] remove TC_pulseconnected
tag @s[tag=TC_inminigame] add TC_pulseconnected

execute as @s[tag=TC_inminigame,tag=TC_redguard] at @s[tag=TC_inminigame] if block ~ ~ ~-1 #minecraft:rails[shape=north_south] run summon minecraft:area_effect_cloud ~ ~ ~-1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,NoAI:1,Invisible:1,NoGravity:1,Invulnerable:1,Tags:["TC_inminigame","TC_pulsecheck","TC_pulsered"],Rotation:[180.0f,0.0f]}
execute as @s[tag=TC_inminigame,tag=TC_redguard] at @s[tag=TC_inminigame] if block ~ ~ ~1 #minecraft:rails[shape=north_south] run summon minecraft:area_effect_cloud ~ ~ ~1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,NoAI:1,Invisible:1,NoGravity:1,Invulnerable:1,Tags:["TC_inminigame","TC_pulsecheck","TC_pulsered"],Rotation:[0.0f,0.0f]}
execute as @s[tag=TC_inminigame,tag=TC_redguard] at @s[tag=TC_inminigame] if block ~-1 ~ ~ #minecraft:rails[shape=east_west] run summon minecraft:area_effect_cloud ~-1 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,NoAI:1,Invisible:1,NoGravity:1,Invulnerable:1,Tags:["TC_inminigame","TC_pulsecheck","TC_pulsered"],Rotation:[90.0f,0.0f]}
execute as @s[tag=TC_inminigame,tag=TC_redguard] at @s[tag=TC_inminigame] if block ~1 ~ ~ #minecraft:rails[shape=east_west] run summon minecraft:area_effect_cloud ~1 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,NoAI:1,Invisible:1,NoGravity:1,Invulnerable:1,Tags:["TC_inminigame","TC_pulsecheck","TC_pulsered"],Rotation:[-90.0f,0.0f]}

execute as @e[tag=TC_inminigame,type=area_effect_cloud,tag=TC_pulsecheck,tag=TC_pulsered,tag=!TC_pulseinit,limit=1] at @s[tag=TC_inminigame] run function tc:importpulsered

kill @e[tag=TC_inminigame,type=area_effect_cloud,tag=TC_pulsecheck]