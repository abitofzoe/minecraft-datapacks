summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,NoGravity:1,Invulnerable:1,Tags:["VG_autoturstands"]}
scoreboard players operation @e[type=armor_stand,distance=..0.1,limit=1,sort=nearest,tag=VG_autoturstands] VG_autoturid = @s VG_autoturid
