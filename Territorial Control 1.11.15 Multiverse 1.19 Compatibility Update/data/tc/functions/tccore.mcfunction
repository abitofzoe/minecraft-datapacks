scoreboard players enable @a TC_hubsent

tag @a[tag=TC_inminigame,scores={TC_hubsent=1}] remove TC_inminigame
scoreboard players reset @a[scores={TC_hubsent=1}] TC_hubsent 

scoreboard players set @a[scores={death=1..},tag=!TC_inminigame] death 0
scoreboard players set @a[scores={TC_hasDied=1..},tag=!TC_inminigame] TC_hasDied 0

execute in minecraft:voidhub as @a[tag=TC_inminigame,x=0,scores={TC_hasDied=1..},team=red] in minecraft:minigame run tp @s @e[type=villager,sort=nearest,limit=1,tag=TC_redguard,tag=TC_spawn]
execute in minecraft:voidhub as @a[tag=TC_inminigame,x=0,scores={TC_hasDied=1..},team=blue] in minecraft:minigame run tp @s @e[type=villager,sort=nearest,limit=1,tag=TC_blueguard,tag=TC_spawn]

tag @e[tag=TC_inminigame,type=#tc:minigameentities,type=!player] remove TC_inminigame

execute in minecraft:minigame as @a[x=0,tag=TC_inminigame] run scoreboard players set @s TC_worldtimeout 0
scoreboard players add @a[tag=TC_inminigame] TC_worldtimeout 1

tag @a[tag=TC_inminigame,scores={TC_worldtimeout=10..}] remove TC_inminigame
scoreboard players set @a[scores={TC_worldtimeout=10..}] TC_worldtimeout 0

execute in minecraft:minigame as @e[type=#tc:minigameentities,x=0] run tag @s add TC_inminigame

execute in minecraft:minigame positioned 34.5 10 -14.5 run tp @a[distance=..2,gamemode=!spectator,gamemode=!creative] 34.5 4 -14.5 0 0
execute in minecraft:minigame positioned 34.5 10 -14.5 run gamemode adventure @a[distance=..10,gamemode=!creative,gamemode=!spectator]

execute as @a[team=red,tag=TC_inminigame] run scoreboard players set @s TC_lastteam 1
execute as @a[team=blue,tag=TC_inminigame] run scoreboard players set @s TC_lastteam 2

team leave @a[team=red,tag=!TC_inminigame]
team leave @a[team=blue,tag=!TC_inminigame]

execute as @a[scores={TC_lastteam=1}] if score actioncontrol TC_actioncontrol matches 5 run team join red @a[team=,tag=TC_inminigame]
execute as @a[scores={TC_lastteam=2}] if score actioncontrol TC_actioncontrol matches 5 run team join blue @a[team=,tag=TC_inminigame]

execute store result score TC_system TC_players if entity @a[tag=TC_inminigame]
execute if score TC_system TC_debug matches 1 run scoreboard players add TC_system TC_players 1

execute if score TC_system TC_players matches 2.. run scoreboard players set TC_system TC_timeout 0
execute if score TC_system TC_players matches 2.. if score TC_system TC_pausegame matches 199 run scoreboard players set TC_system TC_timeout -1
#execute if score TC_system TC_timeout matches ..-1 if score actioncontrol TC_actioncontrol matches 5 run say The minigame has resumed!
#execute if score TC_system TC_timeout matches ..-1 unless score actioncontrol TC_actioncontrol matches 5 run say A minigame is about to start!
execute if score TC_system TC_timeout matches ..-1 run scoreboard players set TC_system TC_timeout 0
execute unless score TC_system TC_players matches 2.. unless score TC_system TC_timeout matches 10.. run scoreboard players add TC_system TC_timeout 1

execute if score TC_system TC_timeout matches 9 run say The minigame has been paused due to a lack of players.
execute if score TC_system TC_timeout matches 10.. run scoreboard players set TC_system TC_pausegame 0
execute unless score TC_system TC_pausegame matches 199.. run gamemode spectator @a[gamemode=!creative,tag=TC_inminigame]
execute if score TC_system TC_pausegame matches 199 in minecraft:minigame run tp @a[gamemode=spectator,team=red,tag=TC_inminigame] @e[type=villager,sort=nearest,limit=1,tag=TC_redguard,tag=TC_spawn]
execute if score TC_system TC_pausegame matches 199 in minecraft:minigame run tp @a[gamemode=spectator,team=blue,tag=TC_inminigame] @e[type=villager,sort=nearest,limit=1,tag=TC_blueguard,tag=TC_spawn]
execute if score TC_system TC_pausegame matches 199 run gamemode survival @a[gamemode=spectator,tag=TC_inminigame]

execute if score TC_system TC_pausegame matches 199 run bossbar set minecraft:rcoalextract visible true
execute if score TC_system TC_pausegame matches 199 run bossbar set minecraft:rironextract visible true
execute if score TC_system TC_pausegame matches 199 run bossbar set minecraft:rgoldextract visible true
execute if score TC_system TC_pausegame matches 199 run bossbar set minecraft:rdiamextract visible true
execute if score TC_system TC_pausegame matches 199 run bossbar set minecraft:rtpointsreduc visible true
execute if score TC_system TC_pausegame matches 199 run bossbar set minecraft:rrampageenemy visible true
execute if score TC_system TC_pausegame matches 199 run bossbar set minecraft:rtpointsboost visible true
execute if score TC_system TC_pausegame matches 199 run bossbar set minecraft:rrampage visible true

execute if score TC_system TC_pausegame matches 199 run bossbar set minecraft:bcoalextract visible true
execute if score TC_system TC_pausegame matches 199 run bossbar set minecraft:bironextract visible true
execute if score TC_system TC_pausegame matches 199 run bossbar set minecraft:bgoldextract visible true
execute if score TC_system TC_pausegame matches 199 run bossbar set minecraft:bdiamextract visible true
execute if score TC_system TC_pausegame matches 199 run bossbar set minecraft:btpointsreduc visible true
execute if score TC_system TC_pausegame matches 199 run bossbar set minecraft:brampageenemy visible true
execute if score TC_system TC_pausegame matches 199 run bossbar set minecraft:btpointsboost visible true
execute if score TC_system TC_pausegame matches 199 run bossbar set minecraft:brampage visible true

execute if score TC_system TC_pausegame matches 199 run bossbar set minecraft:trucetime visible true

execute if score TC_system TC_pausegame matches 200.. in minecraft:minigame run function tc:normaloperation
execute unless score TC_system TC_pausegame matches 200.. in minecraft:minigame run function tc:pausedgame