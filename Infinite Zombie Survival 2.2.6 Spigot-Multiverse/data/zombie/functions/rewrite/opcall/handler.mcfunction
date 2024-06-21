##opcall table
# 1 = Start Game
# 2 = Increment Round Select
# 3 = Confirm Round
# 4 = Increment Difficulty Select
# 5 = Confirm Difficulty
# 6 = Toggle Setup Review
# 7 = Confirm Setup, start game

execute unless score IZr_system IZr_opmode matches 9 if score @s IZr_opcall matches 1 run function zombie:rewrite/opcall/1_roundselect 
execute unless score IZr_system IZr_opmode matches 9 if score @s IZr_opcall matches 2 run function zombie:rewrite/opcall/2_incrementround
execute unless score IZr_system IZr_opmode matches 9 if score @s IZr_opcall matches 3 run function zombie:rewrite/opcall/3_confirmround
execute unless score IZr_system IZr_opmode matches 9 if score @s IZr_opcall matches 4 run function zombie:rewrite/opcall/4_incrementdifficulty
execute unless score IZr_system IZr_opmode matches 9 if score @s IZr_opcall matches 5 run function zombie:rewrite/opcall/5_confirmdifficulty
execute unless score IZr_system IZr_opmode matches 9 if score @s IZr_opcall matches 6 run function zombie:rewrite/opcall/6_togglesetupreview
execute unless score IZr_system IZr_opmode matches 9 if score @s IZr_opcall matches 7 run function zombie:rewrite/opcall/7_confirmsetup
execute if score IZr_system IZr_opmode matches 9 run tellraw @s {"text":"System does not accept opcalls at this stage!"}

scoreboard players set @s IZr_opcall 0
execute as @e[scores={IZr_opcall=1..},limit=1,tag=IZ_inminigame] at @s run function zombie:rewrite/opcall/handler