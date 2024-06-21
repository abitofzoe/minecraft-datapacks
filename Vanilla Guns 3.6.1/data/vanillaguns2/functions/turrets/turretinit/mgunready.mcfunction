function vanillaguns2:special/callrng
execute at @s anchored eyes run summon arrow ^ ^ ^-.1 {NoGravity:1,Tags:["VG_mgunbullet","VG_bullet"],Color:-1,CustomName:"{\"text\":\"Unknown Player using Machine Gun\"}",damage:0.1,life:1100,PierceLevel:1,Owner:[]}
execute if score VG_system VG_rng matches 1..10 at @s positioned 0 0 0 align xyz run summon arrow ^ ^ ^.1 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 11..20 at @s positioned 0 0 0 align xyz run summon arrow ^0.0003 ^-0.0005 ^.1 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 21..30 at @s positioned 0 0 0 align xyz run summon arrow ^0.0007 ^-0.0002 ^.1 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 31..40 at @s positioned 0 0 0 align xyz run summon arrow ^-0.0002 ^ ^.1 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 41..50 at @s positioned 0 0 0 align xyz run summon arrow ^0.0011 ^-0.0004 ^.1 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 51..60 at @s positioned 0 0 0 align xyz run summon arrow ^0.0013 ^ ^.1 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 61..70 at @s positioned 0 0 0 align xyz run summon arrow ^-0.001 ^0.0008 ^.1 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 71..80 at @s positioned 0 0 0 align xyz run summon arrow ^0.0013 ^-0.00092 ^.1 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 81..90 at @s positioned 0 0 0 align xyz run summon arrow ^0.0012 ^0.00041 ^.1 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 91..100 at @s positioned 0 0 0 align xyz run summon arrow ^-0.0015 ^0.0007 ^.1 {NoGravity:1,Tags:["VG_fakebullet"],life:0}

playsound minecraft:entity.generic.explode player @a ~ ~ ~ .1 2
#effect give @s glowing 1 0 true

execute as @s[gamemode=!creative] run scoreboard players remove @e[sort=nearest,limit=1,type=armor_stand,tag=VG_mgun,distance=..1] VG_mgunammo 1
execute as @s[gamemode=!creative] run scoreboard players add @e[sort=nearest,limit=1,type=armor_stand,tag=VG_mgun,distance=..1] VG_mguntemp 3

tag @s add VG_temptarget
execute as @e[type=arrow,tag=VG_mgunbullet,tag=!VG_init] run function vanillaguns2:bulletinit/mgunbullet

tag @s remove VG_mgunready
tag @s remove VG_temptarget

execute as @a[tag=VG_mgunready,limit=1] at @s run function vanillaguns2:turrets/turretinit/mgunready