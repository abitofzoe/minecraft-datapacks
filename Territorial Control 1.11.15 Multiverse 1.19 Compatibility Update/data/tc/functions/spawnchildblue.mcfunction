scoreboard players add @e[tag=TC_inminigame,type=area_effect_cloud,limit=1,tag=TC_pulsecheck,tag=TC_pulseblue,tag=TC_pulseinit,tag=!TC_pendingimport,sort=nearest] TC_childspawned 1
scoreboard players operation @s[tag=TC_inminigame] TC_childspawned = @e[tag=TC_inminigame,type=area_effect_cloud,limit=1,tag=TC_pulsecheck,tag=TC_pulseblue,tag=TC_pulseinit,tag=!TC_pendingimport,sort=nearest] TC_childspawned
tag @s[tag=TC_inminigame] remove TC_pendingimport

execute as @e[tag=TC_inminigame,type=area_effect_cloud,limit=1,tag=TC_pendingimport,tag=TC_pulseblue] at @s[tag=TC_inminigame] run function tc:spawnchildblue