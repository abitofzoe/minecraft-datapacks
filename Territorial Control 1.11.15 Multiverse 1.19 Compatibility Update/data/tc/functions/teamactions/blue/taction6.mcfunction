tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 50 Team Points (1x Coal)","color":"green"}]
give @s[tag=TC_inminigame] coal 1
scoreboard players remove TeamPoints TC_bpoints 50