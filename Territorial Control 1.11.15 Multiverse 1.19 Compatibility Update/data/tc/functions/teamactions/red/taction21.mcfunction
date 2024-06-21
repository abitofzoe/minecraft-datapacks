execute if score TC_guards TC_rguardhpups matches 10.. run tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control:","color":"green"},{"text":" You have already upgraded your maximum guard health to the maximum.","color":"white"}]
execute if score TC_guards TC_rguardhpups matches ..9 run scoreboard players remove TeamPoints TC_rpoints 1000
execute if score TC_guards TC_rguardhpups matches ..9 run tellraw @a[tag=TC_inminigame,team=red,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 1000 Team Points (Guard max health increase)","color":"red"}]
execute if score TC_guards TC_rguardhpups matches ..9 run scoreboard players add TC_guards TC_rmaxguardhp 25
execute if score TC_guards TC_rguardhpups matches ..9 run scoreboard players add TC_guards TC_rguardhpups 1