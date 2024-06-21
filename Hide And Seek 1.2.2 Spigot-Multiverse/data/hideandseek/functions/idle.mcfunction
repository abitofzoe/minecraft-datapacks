bossbar set minecraft:hs_globalstatus visible false
bossbar set minecraft:hs_seekstatus visible false
bossbar set minecraft:hs_hidestatus visible false
bossbar set minecraft:hs_torture_s visible false
bossbar set minecraft:hs_torture_h visible false

fill -487 49 -428 -491 49 -424 glass
fill -487 52 -428 -491 52 -424 glass
fill -487 50 -428 -487 51 -424 glass
fill -491 50 -424 -491 51 -428 glass
fill -490 50 -428 -488 51 -428 glass
fill -488 50 -424 -490 51 -424 glass

fill -333 3 -545 -339 8 -539 stone_bricks outline
fill -338 4 -540 -334 7 -544 air

fill -339 3 -532 -333 8 -538 stone_bricks outline
fill -334 4 -537 -338 6 -533 air

setblock -335 4 -541 iron_bars[north=true,west=true]
setblock -335 4 -542 iron_bars[north=true,south=true]
setblock -335 4 -543 iron_bars[west=true,south=true]
setblock -336 4 -543 iron_bars[east=true,west=true]
setblock -337 4 -543 iron_bars[east=true,south=true]
setblock -337 4 -542 iron_bars[north=true,south=true]
setblock -337 4 -541 iron_bars[east=true,north=true]
setblock -336 4 -541 iron_bars[east=true,west=true]
setblock -335 5 -541 iron_bars[north=true,west=true]
setblock -335 5 -542 iron_bars[north=true,south=true]
setblock -335 5 -543 iron_bars[west=true,south=true]
setblock -336 5 -543 iron_bars[east=true,west=true]
setblock -337 5 -543 iron_bars[east=true,south=true]
setblock -337 5 -542 iron_bars[north=true,south=true]
setblock -337 5 -541 iron_bars[east=true,north=true]
setblock -336 5 -541 iron_bars[east=true,west=true]
setblock -335 7 -541 iron_bars[north=true,west=true]
setblock -335 7 -542 iron_bars[north=true,south=true]
setblock -335 7 -543 iron_bars[west=true,south=true]
setblock -336 7 -543 iron_bars[east=true,west=true]
setblock -337 7 -543 iron_bars[east=true,south=true]
setblock -337 7 -542 iron_bars[north=true,south=true]
setblock -337 7 -541 iron_bars[east=true,north=true]
setblock -336 7 -541 iron_bars[east=true,west=true]

setblock -334 4 -544 redstone_torch[lit=true]
setblock -334 4 -540 redstone_torch[lit=true]
setblock -338 4 -540 redstone_torch[lit=true]
setblock -338 4 -544 redstone_torch[lit=true]

setblock -334 4 -534 iron_bars[east=true,west=true]
setblock -335 4 -534 iron_bars[east=true,west=true]
setblock -336 4 -534 iron_bars[east=true,west=true]
setblock -337 4 -534 iron_bars[east=true,west=true]
setblock -338 4 -534 iron_bars[east=true,west=true]

setblock -334 6 -534 iron_bars[east=true,west=true]
setblock -335 6 -534 iron_bars[east=true,west=true]
setblock -336 6 -534 iron_bars[east=true,west=true]
setblock -337 6 -534 iron_bars[east=true,west=true]
setblock -338 6 -534 iron_bars[east=true,west=true]

setblock -334 7 -534 iron_bars[east=true,west=true]
setblock -335 7 -534 iron_bars[east=true,west=true]
setblock -336 7 -534 iron_bars[east=true,west=true]
setblock -337 7 -534 iron_bars[east=true,west=true]
setblock -338 7 -534 iron_bars[east=true,west=true]

setblock -338 4 -537 redstone_torch[lit=true]
setblock -334 4 -537 redstone_torch[lit=true]
setblock -338 4 -533 redstone_torch[lit=true]
setblock -334 4 -533 redstone_torch[lit=true]

team leave @a[tag=HS_inminigame]
clear @a[tag=HS_inminigame,gamemode=!creative]

scoreboard players enable @a[tag=HS_inminigame] HS_opcall

execute positioned -457 4 -421 as @a[distance=..4,gamemode=!creative] run tp @s -488.5 50 -425.50 -90 30

execute as @a[tag=HS_inminigame] run attribute @s minecraft:generic.max_health base set 20

execute in minecraft:hideandseekown run gamerule naturalRegeneration false
effect give @a[tag=HS_inminigame] instant_health 1 0 true

execute if score HS_system HS_ingame matches 2.. run gamemode adventure @a[gamemode=spectator,tag=HS_inminigame]
execute positioned -488.5 50 -425.50 as @a[gamemode=!creative,distance=4..] run tp @s ~ ~ ~ -90 30
setblock -488 50 -426 minecraft:birch_wall_sign[facing=west]{front_text:{messages:['{"text":">> Right Click <<","clickEvent":{"action":"run_command","value":"trigger HS_opcall set 1"},"color":"aqua"}','[""]','{"text":"To start the","color":"gold"}','{"text":"game!","color":"gold"}']}}