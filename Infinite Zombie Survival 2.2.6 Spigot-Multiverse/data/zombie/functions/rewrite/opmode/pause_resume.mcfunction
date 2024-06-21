execute unless score IZr_system IZr_ongoing matches 1 run scoreboard players set IZr_system IZr_opmode 0
execute unless score IZr_system IZr_ongoing matches 1 run scoreboard players set IZr_system IZr_lvlselected 0
scoreboard players set IZr_system IZr_clearblocks 1

execute if score IZr_system IZr_ongoing matches 1 run scoreboard players set IZr_system IZr_opmode 9
execute if score IZr_system IZr_ongoing matches 1 run tp @a[tag=IZ_inminigame] -193.50 4 51.50 180 0