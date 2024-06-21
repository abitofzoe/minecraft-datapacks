tellraw @a[tag=TC_inminigame,team=red,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 50 Team Points (1x Coal)","color":"green"}]
give @s[tag=TC_inminigame] coal 1
scoreboard players remove TeamPoints TC_rpoints 50