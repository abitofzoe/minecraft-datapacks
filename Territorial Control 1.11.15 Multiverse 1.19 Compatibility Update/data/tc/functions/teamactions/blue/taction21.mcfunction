execute if score TC_guards TC_bguardhpups matches 10.. run tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control:","color":"green"},{"text":" You have already upgraded your maximum guard health to the maximum.","color":"white"}]
execute if score TC_guards TC_bguardhpups matches ..9 run scoreboard players remove TeamPoints TC_bpoints 1000
execute if score TC_guards TC_bguardhpups matches ..9 run tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"selector":"@s"},{"text":": used 1000 Team Points (Guard max health increase)","color":"red"}]
execute if score TC_guards TC_bguardhpups matches ..9 run scoreboard players add TC_guards TC_bmaxguardhp 25
execute if score TC_guards TC_bguardhpups matches ..9 run scoreboard players add TC_guards TC_bguardhpups 1