execute unless score TC_system TC_debug matches 1 run tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"text":"Territorial Control: ","color":"green"},{"text":"Your team has been randomly given a new spawn point due to the enemy capturing your previous spawn point.","color":"white"}]

execute unless score TeamPoints TC_rKillPtsTimer matches 1.. run scoreboard players add TeamPoints TC_rpointsmodif 300
scoreboard players set TeamPoints TC_rKillPtsTimer 900
bossbar set minecraft:rtpointsboost visible true
execute unless score TC_system TC_debug matches 1 run tellraw @a[tag=TC_inminigame,team=red,scores={TC_set_notif=1}] [{"text":"Territorial Control: ","color":"green"},{"text":"+300% ","color":"red"},{"text":"Team Points gain speed from enemy spawn point capture.","color":"white"}]

execute unless score TeamPoints TC_bDthPtsTimer matches 1.. run scoreboard players remove TeamPoints TC_bpointsmodif 100
scoreboard players set TeamPoints TC_bDthPtsTimer 400
bossbar set minecraft:btpointsreduc visible true
execute unless score TC_system TC_debug matches 1 run tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"text":"Territorial Control: ","color":"green"},{"text":"-100% ","color":"yellow"},{"text":"Team Points gain speed from spawn point capture.","color":"white"}]