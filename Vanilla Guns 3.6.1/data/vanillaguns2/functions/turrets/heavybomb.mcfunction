#Heavy bomb
execute at @s run summon armor_stand ~ ~ ~ {Invulnerable:1,Invisible:1,Tags:["VG_heavyBomb"],ArmorItems:[{},{},{},{id:"minecraft:fire_charge",Count:1}],Motion:[0.0,-1.5,0.0]}
scoreboard players set @s VG_heavyBomb 0
