execute at @s run summon fireball ^ ^ ^.1 {Fire:20s,Tags:["VG_rgunbullet","VG_bullet","VG_rocket"],CustomName:"{\"text\":\"Unknown Player using Rocket Gun\"}",ExplosionPower:3,Motion:[0.0,0.0,0.0],Owner:[]}
execute as @s[gamemode=!creative] run scoreboard players remove @s VG_rgunammo 1
execute as @s at @s run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ .1 2
#effect give @s glowing 1 0 true

execute store result score @s VG_plyrposX run data get entity @s Pos[0] 5000
execute store result score @s VG_plyrposY run data get entity @s Pos[1] 5000
execute store result score @s VG_plyrposZ run data get entity @s Pos[2] 5000

execute as @e[type=fireball,tag=VG_rgunbullet,tag=!VG_init] run function vanillaguns2:bulletinit/rgunrocket