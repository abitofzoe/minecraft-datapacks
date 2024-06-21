data modify entity @s Owner set from entity @a[tag=VG_temptarget,limit=1] UUID

execute as @e[type=arrow,tag=VG_fakebullet,tag=VG_fakebullet] store result score @e[type=arrow,tag=VG_bullet,tag=!VG_init,tag=VG_shotgunbullet] VG_tarrowmtnX run data get entity @s Pos[0] 10000000000
execute as @e[type=arrow,tag=VG_fakebullet,tag=VG_fakebullet] store result score @e[type=arrow,tag=VG_bullet,tag=!VG_init,tag=VG_shotgunbullet] VG_tarrowmtnY run data get entity @s Pos[1] 10000000000
execute as @e[type=arrow,tag=VG_fakebullet,tag=VG_fakebullet] store result score @e[type=arrow,tag=VG_bullet,tag=!VG_init,tag=VG_shotgunbullet] VG_tarrowmtnZ run data get entity @s Pos[2] 10000000000
execute as @e[type=arrow,tag=VG_fakebullet,tag=VG_fakebulletstraight] store result score @e[type=arrow,tag=VG_bullet,tag=!VG_init,tag=VG_shotgunbullet] VG_ftarrowmtnX run data get entity @s Pos[0] 10000000000
execute as @e[type=arrow,tag=VG_fakebullet,tag=VG_fakebulletstraight] store result score @e[type=arrow,tag=VG_bullet,tag=!VG_init,tag=VG_shotgunbullet] VG_ftarrowmtnY run data get entity @s Pos[1] 10000000000
execute as @e[type=arrow,tag=VG_fakebullet,tag=VG_fakebulletstraight] store result score @e[type=arrow,tag=VG_bullet,tag=!VG_init,tag=VG_shotgunbullet] VG_ftarrowmtnZ run data get entity @s Pos[2] 10000000000

kill @e[type=arrow,tag=VG_fakebullet]

scoreboard players set @s VG_tickdown 0

function vanillaguns2:special/getoriginaldamage