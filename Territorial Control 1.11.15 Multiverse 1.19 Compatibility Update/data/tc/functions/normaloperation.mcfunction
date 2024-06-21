execute if score TC_system TC_tickfinished matches 1 run scoreboard players add TC_system TC_tickfinishedc 1
execute if score TC_system TC_tickfinished matches 1 if score TC_system TC_tickfinishedc matches 10.. run function tc:tickerror
scoreboard players set TC_system TC_tickfinished 1
bossbar set minecraft:pausedgame visible false
execute unless entity @e[tag=TC_inminigame,type=armor_stand,tag=TC_retain] run scoreboard players set actioncontrol TC_actioncontrol 7
scoreboard players add TC_gameid TC_gameid 0
scoreboard players add @a[tag=TC_inminigame] TC_gameid 0
execute if score actioncontrol TC_actioncontrol matches 1 run function tc:idle
execute if score actioncontrol TC_actioncontrol matches 2 run function tc:fillreset
execute if score actioncontrol TC_actioncontrol matches 3 run function tc:purgeentities
execute if score actioncontrol TC_actioncontrol matches 4 run function tc:startgame
execute if score actioncontrol TC_actioncontrol matches 5 run function tc:gameloop
execute if score actioncontrol TC_actioncontrol matches 6 run function tc:gameover
execute if score actioncontrol TC_actioncontrol matches 7 run function tc:error

scoreboard players enable @a[tag=TC_inminigame] TC_help
scoreboard players enable @a[tag=TC_inminigame] TC_taction
scoreboard players enable @a[tag=TC_inminigame] TC_key
scoreboard players enable @a[tag=TC_inminigame] TC_settings
execute as @a[tag=TC_inminigame,scores={TC_help=1..}] at @s[tag=TC_inminigame] run function tc:help
#gamerule doDaylightCycle false
scoreboard players set TC_system TC_tickfinished 0