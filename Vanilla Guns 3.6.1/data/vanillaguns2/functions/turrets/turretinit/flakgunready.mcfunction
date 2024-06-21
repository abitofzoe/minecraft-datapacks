summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1,Invulnerable:1,Invisible:1,Tags:["VG_flakgunbullet","VG_bullet","VG_rocket"],ArmorItems:[{},{},{},{id:"minecraft:fire_charge",Count:1}]}
playsound minecraft:entity.generic.explode player @a ^ ^ ^1 .1 1.25
#effect give @s glowing 1 0 true

tp @e[type=armor_stand,distance=..0.5,limit=1,sort=nearest,tag=VG_flakgunbullet] @s

execute as @s[gamemode=!creative] run scoreboard players remove @e[sort=nearest,limit=1,type=armor_stand,tag=VG_flakgun,distance=..1] VG_flakgunammo 1
execute as @s[gamemode=!creative] run scoreboard players add @e[sort=nearest,limit=1,type=armor_stand,tag=VG_flakgun,distance=..1] VG_flakguntemp 15