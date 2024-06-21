tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 300 Team Points (Last Stand)","color":"yellow"}]
scoreboard players add @e[tag=TC_inminigame,team=blue,tag=back,type=villager] TC_addmaxhp 25
scoreboard players remove TeamPoints TC_bpoints 300