execute unless score TC_system TC_debug matches 1 run tellraw @a[tag=TC_inminigame,team=red,scores={TC_set_notif=1}] [{"text":"Territorial Control: ","color":"green"},{"text":"Your team has been randomly given a new spawn point due to the enemy capturing your previous spawn point.","color":"white"}]

execute unless score TeamPoints TC_bKillPtsTimer matches 1.. run scoreboard players add TeamPoints TC_bpointsmodif 300
scoreboard players set TeamPoints TC_bKillPtsTimer 900
bossbar set minecraft:btpointsboost visible true
execute unless score TC_system TC_debug matches 1 run tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"text":"Territorial Control: ","color":"green"},{"text":"+300% ","color":"blue"},{"text":"Team Points gain speed from enemy spawn point capture.","color":"white"}]

execute unless score TeamPoints TC_rDthPtsTimer matches 1.. run scoreboard players remove TeamPoints TC_rpointsmodif 100
scoreboard players set TeamPoints TC_rDthPtsTimer 400
bossbar set minecraft:rtpointsreduc visible true
execute unless score TC_system TC_debug matches 1 run tellraw @a[tag=TC_inminigame,team=red,scores={TC_set_notif=1}] [{"text":"Territorial Control: ","color":"green"},{"text":"-100% ","color":"yellow"},{"text":"Team Points gain speed from spawn point capture.","color":"white"}]