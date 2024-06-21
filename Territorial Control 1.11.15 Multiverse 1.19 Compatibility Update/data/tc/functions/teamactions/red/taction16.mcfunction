tellraw @a[tag=TC_inminigame,team=red,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 750 Team Points (Rampage)","color":"red"}]
tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"text":"Territorial Control: ","color":"green"},{"text":"ALERT: ","color":"yellow"},{"text":"Red","color":"red"},{"text":" team is rampaging!","color":"yellow"}]
execute as @a[tag=TC_inminigame,team=blue,scores={TC_set_seffect=1}] at @s[tag=TC_inminigame] run playsound minecraft:block.note_block.pling master @s[tag=TC_inminigame] ~ ~ ~ 1 2 
scoreboard players set TC_TeamActions TC_rrampage 600
scoreboard players remove TeamPoints TC_rpoints 750