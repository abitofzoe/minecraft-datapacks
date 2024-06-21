scoreboard players set Skeleton IZr_waveinfo 0

scoreboard players operation Skeleton IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
scoreboard players operation Skeleton IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
scoreboard players operation Skeleton IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
scoreboard players operation Skeleton IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
scoreboard players operation Skeleton IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
execute if score IZr_system IZr_diffselected matches ..3 run scoreboard players operation Skeleton IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
execute if score IZr_system IZr_diffselected matches ..2 run scoreboard players operation Skeleton IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
execute if score IZr_system IZr_diffselected matches ..1 run scoreboard players operation Skeleton IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
scoreboard players add Skeleton IZr_waveinfo 4
