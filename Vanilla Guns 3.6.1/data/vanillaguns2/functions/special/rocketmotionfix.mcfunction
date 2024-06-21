execute store result score @s VG_tempY run data get entity @s direction[1] 100
execute at @s run tp @s ~ ~1.62 ~
execute store result entity @s direction[1] double 0.01 run scoreboard players get @s VG_tempY
tag @s add VG_init