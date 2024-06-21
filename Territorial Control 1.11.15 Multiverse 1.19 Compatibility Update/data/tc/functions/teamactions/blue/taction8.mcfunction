tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 150 Team Points (1x Gold Ingot)","color":"green"}]
give @s[tag=TC_inminigame] gold_ingot 1
scoreboard players remove TeamPoints TC_bpoints 150