#Light bomb
execute at @s run summon armor_stand ~ ~ ~ {Invulnerable:1,Invisible:1,Tags:["VG_lightBomb"],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1}],Motion:[0.0,-1.5,0.0]}
scoreboard players set @s VG_lightBomb 0

