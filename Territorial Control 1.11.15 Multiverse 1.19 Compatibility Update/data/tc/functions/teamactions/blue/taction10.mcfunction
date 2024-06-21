tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 300 Team Points (Absorption Boost)","color":"yellow"}]
effect give @s[tag=TC_inminigame] absorption 180 4
scoreboard players remove TeamPoints TC_bpoints 300