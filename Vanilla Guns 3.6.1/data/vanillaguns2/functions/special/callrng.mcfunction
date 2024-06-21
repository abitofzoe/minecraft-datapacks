scoreboard players operation VG_system VG_rng = @e[type=armor_stand,tag=VG_rng,limit=1,sort=random] VG_rng
scoreboard players operation VG_system VG_rng *= VG_10mult VG_10mult
scoreboard players operation VG_system VG_rng += @e[type=armor_stand,tag=VG_rng,limit=1,sort=random] VG_rng
scoreboard players add VG_system VG_rng 1
scoreboard players add VG_system VG_bulletid 1