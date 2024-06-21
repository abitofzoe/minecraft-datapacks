execute if score TeamPoints TC_bpointsups matches 10.. run tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control:","color":"green"},{"text":" You have already upgraded your Team Points gain to the maximum.","color":"white"}]
execute if score TeamPoints TC_bpointsups matches ..9 run scoreboard players remove TeamPoints TC_bpoints 1000
execute if score TeamPoints TC_bpointsups matches ..9 run tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 1000 Team Points (Increase Team Points gain)","color":"red"}]
execute if score TeamPoints TC_bpointsups matches ..9 run scoreboard players add TeamPoints TC_bpointsmodif 15
execute if score TeamPoints TC_bpointsups matches ..9 run scoreboard players add TeamPoints TC_bpointsups 1