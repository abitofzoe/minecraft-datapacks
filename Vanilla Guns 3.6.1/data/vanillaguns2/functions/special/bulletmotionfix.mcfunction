execute store result score @s VG_tempY run data get entity @s Motion[1] 100
execute as @s[tag=!VG_egunbullet] at @s run tp @s ~ ~1.62 ~
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s VG_tempY
tag @s add VG_init