data modify entity @s Owner set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=VG_autoturret] ArmorItems[3].tag.Owner

execute as @e[type=arrow,tag=VG_fakebullet] store result score @e[type=arrow,tag=VG_bullet,tag=!VG_init] VG_tarrowmtnX run data get entity @s Pos[0] 10000000000
execute as @e[type=arrow,tag=VG_fakebullet] store result score @e[type=arrow,tag=VG_bullet,tag=!VG_init] VG_tarrowmtnY run data get entity @s Pos[1] 10000000000
execute as @e[type=arrow,tag=VG_fakebullet] store result score @e[type=arrow,tag=VG_bullet,tag=!VG_init] VG_tarrowmtnZ run data get entity @s Pos[2] 10000000000

#execute as @e[type=arrow,tag=VG_fakebullet] run data merge entity @s {Pos:[0.0d,0.0d,-0.1d]}

#execute as @e[type=arrow,tag=VG_fakebullet] run tellraw @a {"nbt":"Pos","entity":"@s"}

#tellraw @a ["",{"score":{"name":"@s","objective":"VG_tarrowmtnX"}}," ",{"score":{"name":"@s","objective":"VG_tarrowmtnX"}}," ",{"score":{"name":"@s","objective":"VG_tarrowmtnX"}}," ",{"nbt":"Owner","entity":"@s"}]

kill @e[type=arrow,tag=VG_fakebullet]

scoreboard players set @s VG_tickdown 0

function vanillaguns2:special/getoriginaldamage