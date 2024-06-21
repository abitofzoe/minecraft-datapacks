execute if entity @e[tag=TC_inminigame,type=villager,tag=TC_guard] unless entity @e[tag=TC_inminigame,type=villager,tag=TC_guard,tag=TC_redguard] run tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"Game over!","color":"white"},{"text":" Blue","color":"blue"},{"text":" team has won!","color":"white"}]
execute if entity @e[tag=TC_inminigame,type=villager,tag=TC_guard] unless entity @e[tag=TC_inminigame,type=villager,tag=TC_guard,tag=TC_blueguard] run tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"Game over!","color":"white"},{"text":" Red","color":"red"},{"text":" team has won!","color":"white"}]
execute if entity @e[tag=TC_inminigame,type=villager,tag=TC_guard] unless entity @e[tag=TC_inminigame,type=villager,tag=TC_guard,tag=TC_redguard] run scoreboard players add @a[tag=TC_inminigame,tag=TC_blueguard] TC_gameswon 1
execute if entity @e[tag=TC_inminigame,type=villager,tag=TC_guard] unless entity @e[tag=TC_inminigame,type=villager,tag=TC_guard,tag=TC_blueguard] run scoreboard players add @a[tag=TC_inminigame,tag=TC_redguard] TC_gameswon 1
execute unless entity @e[tag=TC_inminigame,type=villager,tag=TC_guard] run tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"Game over!","color":"white"},{"text":" The game was ","color":"white"},{"text":"terminated","color":"yellow"},{"text":" early by commands!","color":"white"}]
clear @a[tag=TC_inminigame]
effect clear @a[tag=TC_inminigame]
team leave @a[tag=TC_inminigame]
kill @e[tag=TC_inminigame,type=!player,type=!armor_stand]
xp set @a[tag=TC_inminigame] 0 levels 
xp set @a[tag=TC_inminigame] 0 points 
gamemode adventure @a[tag=TC_inminigame]
tp @a[tag=TC_inminigame] 34.5 10 -14.5
scoreboard objectives setdisplay sidebar TC_gameswon
scoreboard players set actioncontrol TC_actioncontrol 1