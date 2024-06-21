execute if score TC_system TC_players matches 2.. run bossbar set minecraft:pausedgame color purple
execute if score TC_system TC_players matches 2.. run bossbar set minecraft:pausedgame max 200
execute if score TC_system TC_players matches 2.. run bossbar set minecraft:pausedgame style notched_10
execute if score TC_system TC_players matches 2.. run bossbar set minecraft:pausedgame name {"text":"Waiting up to 10 seconds for everything to load in...","color":"dark_purple"}

execute unless score TC_system TC_players matches 2.. run bossbar set minecraft:pausedgame color yellow
execute unless score TC_system TC_players matches 2.. run bossbar set minecraft:pausedgame max 
execute unless score TC_system TC_players matches 2.. run bossbar set minecraft:pausedgame style progress
execute unless score TC_system TC_players matches 2.. run bossbar set minecraft:pausedgame name {"text":"This minigame requires 2 (two) players to start!","color":"yellow"}

bossbar set minecraft:rcoalextract visible false
bossbar set minecraft:rironextract visible false
bossbar set minecraft:rgoldextract visible false
bossbar set minecraft:rdiamextract visible false
bossbar set minecraft:rtpointsreduc visible false
bossbar set minecraft:rrampageenemy visible false
bossbar set minecraft:rtpointsboost visible false
bossbar set minecraft:rrampage visible false

bossbar set minecraft:bcoalextract visible false
bossbar set minecraft:bironextract visible false
bossbar set minecraft:bgoldextract visible false
bossbar set minecraft:bdiamextract visible false
bossbar set minecraft:btpointsreduc visible false
bossbar set minecraft:brampageenemy visible false
bossbar set minecraft:btpointsboost visible false
bossbar set minecraft:brampage visible false

bossbar set minecraft:trucetime visible false

bossbar set minecraft:pausedgame players @a[tag=TC_inminigame]
bossbar set minecraft:pausedgame visible true
execute store result bossbar minecraft:pausedgame value run scoreboard players get TC_system TC_pausegame
scoreboard players add TC_system TC_pausegame 1
effect give @e[tag=TC_inminigame,type=villager] resistance 1 127 true
effect give @a[tag=TC_inminigame] resistance 1 127 true