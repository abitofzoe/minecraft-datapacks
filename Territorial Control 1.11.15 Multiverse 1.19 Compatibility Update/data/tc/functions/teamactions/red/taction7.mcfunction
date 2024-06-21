tellraw @a[tag=TC_inminigame,team=red,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 90 Team Points (1x Iron Ingot)","color":"green"}]
give @s[tag=TC_inminigame] iron_ingot 1
scoreboard players remove TeamPoints TC_rpoints 90