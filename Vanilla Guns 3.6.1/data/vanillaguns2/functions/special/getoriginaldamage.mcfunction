execute store result score @s VG_bulletdamage run data get entity @s damage 1000
scoreboard players operation @s VG_bulletdamage *= VG_defines VG_def_dmgmult
execute store result entity @s damage double 0.00001 run scoreboard players get @s VG_bulletdamage
execute store result score @s VG_fall_start run data get entity @s damage 1000
#scoreboard players operation @s VG_fall_temp = VG_defines VG_def_dcaybase
scoreboard players operation @s VG_fall_calc = @s VG_fall_start

tag @s add VG_init