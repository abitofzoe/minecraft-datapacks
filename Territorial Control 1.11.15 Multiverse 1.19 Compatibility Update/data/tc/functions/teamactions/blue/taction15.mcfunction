tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 200 Team Points (Haste Boost)","color":"green"}]
effect give @s[tag=TC_inminigame] haste 60 3
scoreboard players remove TeamPoints TC_bpoints 200