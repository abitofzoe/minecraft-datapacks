tellraw @a[tag=TC_inminigame,team=red,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 1000 Team Points (Health Boost)","color":"red"}]
effect give @s[tag=TC_inminigame] health_boost 1000000 1
scoreboard players remove TeamPoints TC_rpoints 1000