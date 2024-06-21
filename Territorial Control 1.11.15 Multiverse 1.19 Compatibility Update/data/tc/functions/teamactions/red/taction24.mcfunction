tellraw @a[tag=TC_inminigame,team=red,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 400 Team Points (Extra Supplies)","color":"yellow"}]
scoreboard players set @s[tag=TC_inminigame,scores={TC_supplygracemx=..150}] TC_supplygracemx 150
scoreboard players add @s[tag=TC_inminigame] TC_supplygrace 50
scoreboard players set @s[tag=TC_inminigame] TC_extrasupplies -2400
scoreboard players remove TeamPoints TC_rpoints 400