#Add objectives
scoreboard objectives add IZ_mode dummy
scoreboard players set IZ_system IZ_mode 2
## mode 1 for classic
## mode 2 for rewrite

##Mode 1 objectives
scoreboard objectives add temp dummy {"text":"Hidden Temporary Values"}
scoreboard objectives add IZ_deaths deathCount
scoreboard objectives add boom dummy
scoreboard objectives add info dummy {"text":"Wave Information"}
scoreboard objectives add health health {"text":"Half-Hearts"}
scoreboard objectives add IZ_actioncontrol dummy 
scoreboard objectives add IZ_difficulty trigger 
scoreboard objectives add IZ_adifficulty dummy
scoreboard objectives add IZS_BusterTimer dummy
scoreboard objectives add IZS_CurrentLvl trigger
scoreboard objectives add IZS_LvlSelected dummy
scoreboard objectives add IZS_lvlmarker dummy
scoreboard objectives add IZ_hubsent trigger
scoreboard objectives add IZ_hasDied deathCount
scoreboard objectives add IZ_worldtimeout dummy
scoreboard objectives add IZ_timeout dummy
scoreboard objectives add IZ_pausegame dummy
scoreboard objectives add IZ_hurttimer dummy

bossbar remove minecraft:iz_pausedgame

execute in minecraft:izs run gamerule doImmediateRespawn true

#scoreboard players set IZ_system IZ_pausegame 0

bossbar add iz_pausedgame {"text":"Waiting up to 10 seconds for everything to load in...","color":"yellow"}
bossbar set minecraft:iz_pausedgame color yellow
bossbar set minecraft:iz_pausedgame max 200
bossbar set minecraft:iz_pausedgame style notched_10

team add spawnpoint
team add IZ_info
team modify IZ_info color yellow 

execute if score IZ_system IZ_mode matches 1 run scoreboard objectives setdisplay sidebar.team.yellow info

##Filling in the lobby
execute if score IZ_system IZ_mode matches 2 in minecraft:izs run function zombie:rewrite/load

execute in minecraft:izs run time set 12600

#tellraw @a [{"text":"Infinite Zombie Survival Datapack by","color":"green"},{"text":" abitofzoe","color":"aqua"},{"text":" Version 1.3.1 Loaded.","color":"green"}]