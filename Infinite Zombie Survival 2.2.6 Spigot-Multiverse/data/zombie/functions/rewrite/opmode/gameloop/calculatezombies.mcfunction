scoreboard players add IZr_system IZr_czombies 1
scoreboard players remove IZr_system IZr_rzombies 1

tag @s add IZr_init
execute as @e[type=zombie,tag=IZ_inminigame,tag=!IZr_init,limit=1] run function zombie:rewrite/opmode/gameloop/calculatezombies