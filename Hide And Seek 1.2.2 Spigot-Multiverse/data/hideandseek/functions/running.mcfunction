execute store result score HS_system HS_ingame if entity @a[tag=HS_inminigame]
execute if score HS_system HS_debug matches 1 run scoreboard players add HS_system HS_ingame 1

execute unless score HS_system HS_debug matches 1 unless entity @a[tag=HS_inminigame,team=HS_seeker] if score HS_system HS_opmode matches 2..4 run function hideandseek:terminate

execute if score HS_system HS_ingame matches 2.. unless score HS_system HS_opmode matches 1.. run scoreboard players set HS_system HS_opmode 1

execute unless score HS_system HS_debug matches 1 unless score HS_system HS_ingame matches 2.. run scoreboard players set HS_system HS_opmode 0

execute as @a[tag=HS_inminigame,scores={HS_opcall=1}] if score HS_system HS_opmode matches 1 run scoreboard players set HS_system HS_opmode 2

execute if score HS_system HS_opmode matches 1 run function hideandseek:idle
execute if score HS_system HS_opmode matches 2 run function hideandseek:startgame
execute if score HS_system HS_opmode matches 3 run function hideandseek:prep
execute if score HS_system HS_opmode matches 4 run function hideandseek:gameloop
execute if score HS_system HS_opmode matches 5 run function hideandseek:seekers_win
execute if score HS_system HS_opmode matches 6 run function hideandseek:hiders_win

execute unless score HS_system HS_ingame matches 2.. run bossbar set minecraft:hs_globalstatus visible true
execute unless score HS_system HS_ingame matches 2.. run bossbar set minecraft:hs_seekstatus visible false
execute unless score HS_system HS_ingame matches 2.. run bossbar set minecraft:hs_hidestatus visible false
execute unless score HS_system HS_ingame matches 2.. run bossbar set minecraft:hs_torture_s visible false
execute unless score HS_system HS_ingame matches 2.. run bossbar set minecraft:hs_torture_h visible false
execute unless score HS_system HS_ingame matches 2.. run bossbar set minecraft:hs_globalstatus players @a[tag=HS_inminigame]
execute unless score HS_system HS_ingame matches 2.. run bossbar set minecraft:hs_globalstatus name {"text":"This minigame requires at least two (2) players to start!","color":"yellow"}
execute unless score HS_system HS_ingame matches 2.. run gamemode spectator @a[tag=HS_inminigame,gamemode=!creative]

scoreboard players set @a[tag=HS_inminigame] HS_sprinting 0
scoreboard players set @a[tag=HS_inminigame] HS_jumping 0
scoreboard players set @a[tag=HS_inminigame] HS_hasDied 0