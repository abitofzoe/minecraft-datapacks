execute if score IZr_system IZr_confirmsetup matches 1 if score IZr_system IZr_lvlselected matches 1 run function zombie:rewrite/setup/classic
execute if score IZr_system IZr_confirmsetup matches 1 unless score IZr_system IZr_lvlselected matches 1 run function zombie:rewrite/error/unknown_round

execute if score IZr_system IZr_confirmsetup matches 0 run scoreboard players set IZr_system IZr_clearblocks 1
execute if score IZr_system IZr_confirmsetup matches 0 run scoreboard players set IZr_system IZr_opmode 1

scoreboard players add IZr_system IZr_gameid 1
execute as @a[tag=IZ_inminigame] run scoreboard players operation @s IZr_gameid = IZr_system IZr_gameid