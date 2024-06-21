scoreboard players enable @a IZ_hubsent

tag @a[tag=IZ_inminigame,scores={IZ_hubsent=1}] remove IZ_inminigame
scoreboard players reset @a[scores={IZ_hubsent=1}] IZ_hubsent 

scoreboard players set @a[scores={IZ_hasDied=1..},tag=!IZ_inminigame] IZ_hasDied 0

execute in minecraft:voidhub as @a[tag=IZ_inminigame,x=0,scores={IZ_hasDied=1..}] in minecraft:izs run tp @s -17.5 6 -11.5

execute in minecraft:izs as @a[x=0,tag=IZ_inminigame] run scoreboard players set @s IZ_worldtimeout 0
scoreboard players add @a[tag=IZ_inminigame] IZ_worldtimeout 1

tag @a[tag=IZ_inminigame,scores={IZ_worldtimeout=10..}] remove IZ_inminigame
scoreboard players set @a[scores={IZ_worldtimeout=10..}] IZ_worldtimeout 0

execute in minecraft:izs as @a[x=0] run tag @s add IZ_inminigame

team join IZr_waveinfo @a[tag=IZ_inminigame]
team leave @a[tag=!IZ_inminigame,team=IZ_info]
team leave @a[tag=!IZ_inminigame,team=IZr_waveinfo]

execute if entity @a[tag=IZ_inminigame] run scoreboard players set IZ_system IZ_timeout 0
execute if entity @a[tag=IZ_inminigame] if score IZ_system IZ_pausegame matches 199 run scoreboard players set IZ_system IZ_timeout -1
execute if score IZ_system IZ_timeout matches ..-1 run scoreboard players set IZ_system IZ_timeout 0
execute unless entity @a[tag=IZ_inminigame] unless score IZ_system IZ_timeout matches 10.. run scoreboard players add IZ_system IZ_timeout 1

execute if score IZ_system IZ_timeout matches 9 run say The minigame has been paused due to a lack of players.
execute if score IZ_system IZ_timeout matches 10.. run scoreboard players set IZ_system IZ_pausegame 0
execute unless score IZ_system IZ_pausegame matches 199.. run gamemode spectator @a[gamemode=!creative,tag=IZ_inminigame]
execute if score IZ_system IZ_pausegame matches 199 in minecraft:izs run tp @a[gamemode=spectator,tag=IZ_inminigame] -17.5 6 -11.5
execute if score IZ_system IZ_pausegame matches 199 run gamemode survival @a[gamemode=spectator,tag=IZ_inminigame]
execute if score IZ_system IZ_pausegame matches 199 as @e[tag=IZ_inminigame,type=!minecraft:armor_stand,type=!player,x=0] run data merge entity @s {NoAI:0b}

execute if score IZ_system IZ_pausegame matches 200.. in minecraft:izs run function zombie:rewrite/running

execute in minecraft:voidhub as @a[x=0,tag=!HS_inminigame,tag=!IZ_inminigame,tag=!TC_inminigame] run attribute @s minecraft:generic.max_health base set 20

execute in minecraft:izs unless score IZ_system IZ_pausegame matches 200.. in minecraft:izs run function zombie:pausedgame