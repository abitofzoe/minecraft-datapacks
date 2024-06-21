tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 300 Team Points (Instant Spawn Teleport)","color":"yellow"}]
tp @s[tag=TC_inminigame] @e[tag=TC_inminigame,type=villager,team=blue,tag=TC_spawn,limit=1]
scoreboard players remove TeamPoints TC_bpoints 300