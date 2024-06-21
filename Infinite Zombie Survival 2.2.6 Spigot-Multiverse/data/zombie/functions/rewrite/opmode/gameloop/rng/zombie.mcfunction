scoreboard players set Zombie IZr_waveinfo 0

execute if score IZr_system IZr_diffselected matches 4 run scoreboard players operation Zombie IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame,scores={IZr_rng=0..1}] IZr_rng
execute if score IZr_system IZr_diffselected matches 3 run scoreboard players operation Zombie IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame,scores={IZr_rng=1..3}] IZr_rng
execute if score IZr_system IZr_diffselected matches 2 run scoreboard players operation Zombie IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame,scores={IZr_rng=2..3}] IZr_rng
execute if score IZr_system IZr_diffselected matches 1 run scoreboard players operation Zombie IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame,scores={IZr_rng=3..5}] IZr_rng
