kill @e[tag=IZ_inminigame,type=#zombie:hostile]
bossbar set minecraft:izr_waveprogress color green
scoreboard players set IZr_system IZr_waveprog 100
bossbar set minecraft:izr_waveprogress name [{"text":"Prepare for the next wave","color":"green"}]
scoreboard players add IZr_system IZr_currentwave 1
scoreboard players add IZr_system IZr_cspawnlimit 1
execute if score IZr_system IZr_diffselected matches 3.. run scoreboard players add IZr_system IZr_cspawnlimit 1
scoreboard players operation IZr_system IZr_cspawnlimit *= IZr_system IZr_105mult
scoreboard players operation IZr_system IZr_cspawnlimit /= IZr_system IZr_100mult
scoreboard players add IZr_system IZr_bzombies 2
execute if score IZr_system IZr_diffselected matches 3.. run scoreboard players add IZr_system IZr_bzombies 1
scoreboard players operation IZr_system IZr_bzombies *= IZr_system IZr_110mult
scoreboard players operation IZr_system IZr_bzombies /= IZr_system IZr_100mult

function zombie:rewrite/opmode/gameloop/rng/breaker
function zombie:rewrite/opmode/gameloop/rng/creeper
function zombie:rewrite/opmode/gameloop/rng/skeleton

scoreboard players operation IZr_system IZr_rzombies = IZr_system IZr_bzombies

effect give @e[type=villager,tag=IZ_inminigame] regeneration 30 1 true

#Boss wave RNG
scoreboard players set IZr_system IZr_bosswave 0
scoreboard players set IZr_system IZr_queuedboss 0
execute unless score IZr_system IZr_lastbosswave matches 1.. run function zombie:rewrite/opmode/gameloop/bossrng
execute if score IZr_system IZr_lastbosswave matches 1.. run scoreboard players remove IZr_system IZr_lastbosswave 1

execute unless score IZr_system IZr_diffselected matches 4.. if score IZr_system IZr_queuedboss matches 3.. run scoreboard players set IZr_system IZr_queuedboss 2
execute unless score IZr_system IZr_diffselected matches 3.. if score IZr_system IZr_queuedboss matches 2.. run scoreboard players set IZr_system IZr_queuedboss 1
execute unless score IZr_system IZr_diffselected matches 2.. if score IZr_system IZr_queuedboss matches 1.. run scoreboard players set IZr_system IZr_queuedboss 0

#This will be handled automatically now if a 'giant' is in the game
#execute if score IZr_system IZr_queuedboss matches 1.. run scoreboard players set IZr_system IZr_bosswave 1
execute if score IZr_system IZr_queuedboss matches 2.. run scoreboard players set IZr_system IZr_queuedboss 1

scoreboard players set IZr_system IZr_wavemode 3

#Change up who gets chased by bosses
tag @a[tag=IZ_inminigame] remove IZr_bosstracked1
tag @a[tag=IZ_inminigame] remove IZr_bosstracked2
tag @a[tag=IZ_inminigame] remove IZr_bosstracked3
tag @a[tag=IZ_inminigame] remove IZr_bosstracked4

bossbar set minecraft:izr_boss1 visible false 
bossbar set minecraft:izr_boss2 visible false 
bossbar set minecraft:izr_boss3 visible false 
bossbar set minecraft:izr_boss4 visible false 

scoreboard players operation IZr_system IZr_wavemultcalc = IZr_system IZr_currentwave
scoreboard players operation IZr_system IZr_wavemultcalc %= IZr_system IZr_5mod