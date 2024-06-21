tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 100 Team Points (Give Experience)","color":"green"}]
xp add @s[tag=TC_inminigame] 20 points
scoreboard players remove TeamPoints TC_bpoints 100