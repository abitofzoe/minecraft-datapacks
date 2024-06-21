execute unless score IZr_system IZr_bosswave matches 1 run scoreboard players remove Creeper IZr_waveinfo 1
execute unless score IZr_system IZr_bosswave matches 1 run scoreboard players remove Skeleton IZr_waveinfo 1
execute unless score IZr_system IZr_bosswave matches 1 run scoreboard players remove Buster IZr_waveinfo 1

execute if score IZr_system IZr_czombies < IZr_system IZr_cspawnlimit if score IZr_system IZr_rzombies matches 1.. unless score Zombie IZr_waveinfo matches 0.. run function zombie:rewrite/opmode/gameloop/rng/zombie
execute if score IZr_system IZr_czombies < IZr_system IZr_cspawnlimit unless score IZr_system IZr_rzombies matches ..0 run scoreboard players remove Zombie IZr_waveinfo 1

scoreboard players remove IZr_system IZr_globaltimer 20

execute unless score IZr_system IZr_bosswave matches 1 if score Creeper IZr_waveinfo matches ..0 run function zombie:rewrite/opmode/gameloop/timer/creeper
execute unless score IZr_system IZr_bosswave matches 1 if score Buster IZr_waveinfo matches ..0 run function zombie:rewrite/opmode/gameloop/timer/breaker
execute unless score IZr_system IZr_bosswave matches 1 if score Skeleton IZr_waveinfo matches ..0 run function zombie:rewrite/opmode/gameloop/timer/skeleton
execute if score IZr_system IZr_czombies < IZr_system IZr_cspawnlimit unless score IZr_system IZr_rzombies matches ..0 if score Zombie IZr_waveinfo matches ..0 run function zombie:rewrite/opmode/gameloop/timer/zombie
