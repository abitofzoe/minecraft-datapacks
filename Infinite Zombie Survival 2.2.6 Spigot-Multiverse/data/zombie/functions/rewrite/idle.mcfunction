function zombie:rewrite/lobbylock
setblock -18 7 -9 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":">> Right Click <<","clickEvent":{"action":"run_command","value":"trigger IZr_opcall set 1"},"color":"aqua"}','[""]','{"text":"To start the","color":"gold"}','{"text":"game!","color":"gold"}']}}

scoreboard players reset Creeper IZr_waveinfo
scoreboard players reset Skeleton IZr_waveinfo
scoreboard players reset Buster IZr_waveinfo
scoreboard players reset Zombie IZr_waveinfo
scoreboard players set IZr_system IZr_ongoing 0
scoreboard players set @a[tag=IZ_inminigame] IZr_deaths 0
execute as @a[tag=IZ_inminigame] run attribute @s minecraft:generic.max_health base set 20

bossbar set minecraft:izr_waveprogress visible false 
bossbar set minecraft:izr_resourceconverter visible false 
bossbar set minecraft:izr_foodmerchant visible false 
bossbar set minecraft:izr_weaponsexpert visible false 
bossbar set minecraft:izr_blocktrader visible false 
bossbar set minecraft:izr_boss1 visible false 
bossbar set minecraft:izr_boss2 visible false 
bossbar set minecraft:izr_boss3 visible false 
bossbar set minecraft:izr_boss4 visible false 
