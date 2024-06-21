tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 300 Team Points (Increase max Team Points)","color":"yellow"}]
scoreboard players add TeamPoints TC_bpointsmax 100
scoreboard players remove TeamPoints TC_bpoints 300