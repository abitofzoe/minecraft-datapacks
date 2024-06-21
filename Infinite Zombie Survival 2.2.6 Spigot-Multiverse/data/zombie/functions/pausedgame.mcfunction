bossbar set minecraft:iz_pausedgame color yellow
bossbar set minecraft:iz_pausedgame max 200
bossbar set minecraft:iz_pausedgame style notched_10
bossbar set minecraft:iz_pausedgame name {"text":"Waiting up to 10 seconds for everything to load in...","color":"yellow"}

#bossbar set minecraft:rcoalextract visible false
#bossbar set minecraft:rironextract visible false
#bossbar set minecraft:rgoldextract visible false
#bossbar set minecraft:rdiamextract visible false
#bossbar set minecraft:rtpointsreduc visible false
#bossbar set minecraft:rrampageenemy visible false
#bossbar set minecraft:rtpointsboost visible false
#bossbar set minecraft:rrampage visible false
#
#bossbar set minecraft:bcoalextract visible false
#bossbar set minecraft:bironextract visible false
#bossbar set minecraft:bgoldextract visible false
#bossbar set minecraft:bdiamextract visible false
#bossbar set minecraft:btpointsreduc visible false
#bossbar set minecraft:brampageenemy visible false
#bossbar set minecraft:btpointsboost visible false
#bossbar set minecraft:brampage visible false
#
#bossbar set minecraft:trucetime visible false

bossbar set minecraft:iz_pausedgame players @a[tag=IZ_inminigame]
bossbar set minecraft:iz_pausedgame visible true
execute store result bossbar minecraft:iz_pausedgame value run scoreboard players get IZ_system IZ_pausegame
scoreboard players add IZ_system IZ_pausegame 1
execute if score IZ_system IZ_mode matches 2 run function zombie:rewrite/pausecleanup

execute as @e[tag=IZ_inminigame,type=!minecraft:armor_stand,type=!player,x=0] run data merge entity @s {NoAI:1b}