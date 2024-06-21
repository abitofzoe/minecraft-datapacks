data modify entity @s Owner set from entity @a[tag=VG_temptarget,limit=1] UUID

execute as @e[type=arrow,tag=VG_fakebullet] store result score @e[type=arrow,tag=VG_bullet,tag=!VG_init] VG_tarrowmtnX run data get entity @s Pos[0] 10000000000
execute as @e[type=arrow,tag=VG_fakebullet] store result score @e[type=arrow,tag=VG_bullet,tag=!VG_init] VG_tarrowmtnY run data get entity @s Pos[1] 10000000000
execute as @e[type=arrow,tag=VG_fakebullet] store result score @e[type=arrow,tag=VG_bullet,tag=!VG_init] VG_tarrowmtnZ run data get entity @s Pos[2] 10000000000

kill @e[type=arrow,tag=VG_fakebullet]

scoreboard players set @s VG_tickdown 0

tag @s add VG_init
function vanillaguns2:special/getoriginaldamage