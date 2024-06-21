tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 300 Team Points (Instant Respawn)","color":"yellow"}]
scoreboard players set @s[tag=TC_inminigame] respawnTimer 0
scoreboard players remove TeamPoints TC_bpoints 300