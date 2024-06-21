scoreboard players set IZr_system IZr_bosswaverng 0
scoreboard players set IZr_system IZr_bosswaverng2 0
scoreboard players operation IZr_system IZr_bosswaverng = @e[type=armor_stand,tag=IZ_inminigame,tag=IZr_rng,limit=1,sort=random] IZr_rng
#execute if score IZr_system IZr_bosswaverng matches 0 run scoreboard players operation IZr_system IZr_bosswaverng2 = @e[type=armor_stand,tag=IZ_inminigame,tag=IZr_rng,limit=1,sort=random] IZr_rng
#execute if score IZr_system IZr_bosswaverng matches 0 if score IZr_system IZr_bosswaverng2 matches 0..4 run scoreboard players add IZr_system IZr_queuedboss 1
execute if score IZr_system IZr_bosswaverng matches 0..2 run scoreboard players add IZr_system IZr_queuedboss 1
execute if score IZr_system IZr_bosswaverng matches 0..2 run scoreboard players set IZr_system IZr_lastbosswave 4
#execute unless score IZr_system IZr_queuedboss matches 4.. if score IZr_system IZr_bosswaverng matches 0 if score IZr_system IZr_bosswaverng2 matches 0..4 run function zombie:rewrite/opmode/gameloop/bossrng
execute unless score IZr_system IZr_queuedboss matches 4.. if score IZr_system IZr_bosswaverng matches 0..2 run function zombie:rewrite/opmode/gameloop/bossrng