bossbar set minecraft:iz_pausedgame visible false
scoreboard players enable @a[tag=IZ_inminigame] IZr_opcall

execute as @e[scores={IZr_opcall=1..},limit=1,tag=IZ_inminigame] at @s run function zombie:rewrite/opcall/handler

##Opmode table
# -1 = resuming from pause
# 0 = idle
# 1 = level select
# 2 = difficulty select
# 3 = confirm game setup
# 4 = start game
# 5 = kill entities
# 6 = clear arena
# 7 = place entities
# 8 = final touches
# 9 = continuous operation
# 10 = game over

execute if score IZr_system IZr_clearblocks matches 1 run function zombie:rewrite/clearblocks 

execute if score IZr_system IZr_opmode matches -1 run function zombie:rewrite/opmode/pause_resume
execute unless score IZr_system IZr_opmode matches 1.. run function zombie:rewrite/idle
execute if score IZr_system IZr_opmode matches 1 run function zombie:rewrite/opmode/round_select
execute if score IZr_system IZr_opmode matches 2 run function zombie:rewrite/opmode/difficulty_select
execute if score IZr_system IZr_opmode matches 3 run function zombie:rewrite/opmode/confirm_setup
execute if score IZr_system IZr_opmode matches 4 run function zombie:rewrite/opmode/startgame
execute if score IZr_system IZr_opmode matches 5 run function zombie:rewrite/opmode/clearentities
execute if score IZr_system IZr_opmode matches 6 run function zombie:rewrite/opmode/cleararena
execute if score IZr_system IZr_opmode matches 7 run function zombie:rewrite/opmode/placeentities
execute if score IZr_system IZr_opmode matches 8 run function zombie:rewrite/opmode/finaltouches
execute if score IZr_system IZr_opmode matches 9 run function zombie:rewrite/opmode/gameloop/tick
execute if score IZr_system IZr_opmode matches 10 run function zombie:rewrite/opmode/gameover