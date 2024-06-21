tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 100 Team Points (Instant Teleport)","color":"green"}]
tp @s[tag=TC_inminigame] @e[tag=TC_inminigame,type=villager,team=blue,scores={front=1..},sort=random,limit=1]
scoreboard players remove TeamPoints TC_bpoints 100