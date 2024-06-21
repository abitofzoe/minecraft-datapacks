scoreboard players set Creeper IZr_waveinfo 0

scoreboard players operation Creeper IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
scoreboard players operation Creeper IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
scoreboard players operation Creeper IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
scoreboard players operation Creeper IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
scoreboard players operation Creeper IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
scoreboard players operation Creeper IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
scoreboard players operation Creeper IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
execute if score IZr_system IZr_diffselected matches ..3 run scoreboard players operation Creeper IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
execute if score IZr_system IZr_diffselected matches ..2 run scoreboard players operation Creeper IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
execute if score IZr_system IZr_diffselected matches ..2 run scoreboard players operation Creeper IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
execute if score IZr_system IZr_diffselected matches ..1 run scoreboard players operation Creeper IZr_waveinfo += @e[type=armor_stand,tag=IZr_rng,sort=random,limit=1,tag=IZ_inminigame] IZr_rng
scoreboard players add Creeper IZr_waveinfo 8
