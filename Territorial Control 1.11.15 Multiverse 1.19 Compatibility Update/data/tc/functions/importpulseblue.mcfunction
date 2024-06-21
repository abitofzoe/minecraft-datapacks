tag @s[tag=TC_inminigame] add TC_pulseinit

execute at @s[tag=TC_inminigame] if block ~ ~ ~ #minecraft:rails run function tc:simulatepulsemovementblue

execute as @e[tag=TC_inminigame,type=area_effect_cloud,tag=TC_pulsecheck,tag=TC_pulseblue,tag=!TC_pulseinit,limit=1] at @s[tag=TC_inminigame] run function tc:importpulseblue