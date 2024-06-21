execute if score IZr_system IZr_diffselected matches 1 run function zombie:rewrite/setup/giveitems/easy
execute if score IZr_system IZr_diffselected matches 2 run function zombie:rewrite/setup/giveitems/normal
execute if score IZr_system IZr_diffselected matches 3 run function zombie:rewrite/setup/giveitems/hard
execute if score IZr_system IZr_diffselected matches 4 run function zombie:rewrite/setup/giveitems/expert

scoreboard players operation @s IZr_gameid = IZr_system IZr_gameid
gamemode survival @s
tp @s -193.50 4 51.50 180 0