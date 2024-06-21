tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 30 Team Points (1x Log)","color":"green"}]
give @s[tag=TC_inminigame] oak_log 1
scoreboard players remove TeamPoints TC_bpoints 30