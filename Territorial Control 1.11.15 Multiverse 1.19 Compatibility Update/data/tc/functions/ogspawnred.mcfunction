data merge entity @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_spawn,tag=!TC_ogspawn_red,limit=1] {CustomName:"{\"text\":\"Red Villager Guard\",\"color\":\"red\"}"} 
data merge entity @s {CustomName:"{\"text\":\"Red Villager Guard Spawn Point\",\"color\":\"gold\"}"} 
scoreboard players remove @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_spawn,tag=!TC_ogspawn_red,limit=1] TC_maxhealth 25
tag @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_spawn] remove TC_spawn
tellraw @a[tag=TC_inminigame,team=red,scores={TC_set_notif=1}] [{"text":"Territorial Control: ","color":"green"},{"text":"Your original spawn point has been restored.","color":"white"}]
tag @s[tag=TC_inminigame] add TC_spawn