tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 150 Team Points (Fortify Front Lines)","color":"green"}]
scoreboard players add @e[tag=TC_inminigame,team=blue,scores={front=1},type=villager] TC_addmaxhp 10
scoreboard players remove TeamPoints TC_bpoints 150