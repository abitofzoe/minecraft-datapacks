execute at @e[type=armor_stand,tag=VG_rturret,limit=1,distance=..1,sort=nearest] run tp @s ~ ~ ~ 
summon fireball ^ ^ ^.1 {Fire:20s,Tags:["VG_rturretbullet","VG_bullet","VG_rocket"],CustomName:"{\"text\":\"Unknown Player using Rocket Turret\"}",ExplosionPower:6,direction:[0.0,0.0,0.0]}
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ .1 1
#effect give @s glowing 1 0 true

execute store result score @s VG_plyrposX run data get entity @s Pos[0] 5000
execute store result score @s VG_plyrposY run data get entity @s Pos[1] 5000
execute store result score @s VG_plyrposZ run data get entity @s Pos[2] 5000

execute as @s[gamemode=!creative] run scoreboard players remove @e[sort=nearest,limit=1,type=armor_stand,tag=VG_rturret,distance=..1] VG_rturretammo 1