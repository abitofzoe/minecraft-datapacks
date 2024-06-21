function vanillaguns2:special/callrng
execute at @s anchored eyes run summon arrow ^ ^ ^-.1 {NoGravity:1,Tags:["VG_pistolbullet","VG_bullet"],Color:-1,CustomName:"{\"text\":\"Unknown Player using Pistol\"}",damage:1.3,life:1100,Owner:[]}
execute if score VG_system VG_rng matches 1..10 at @s positioned 0 0 0 align xyz run summon arrow ^ ^ ^.07 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 11..20 at @s positioned 0 0 0 align xyz run summon arrow ^0.0002 ^0.0003 ^.07 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 21..30 at @s positioned 0 0 0 align xyz run summon arrow ^0.0004 ^0.0001 ^.07 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 31..40 at @s positioned 0 0 0 align xyz run summon arrow ^-0.0001 ^ ^.07 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 41..50 at @s positioned 0 0 0 align xyz run summon arrow ^0.0006 ^-0.0007 ^.07 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 51..60 at @s positioned 0 0 0 align xyz run summon arrow ^0.0009 ^ ^.07 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 61..70 at @s positioned 0 0 0 align xyz run summon arrow ^-0.0007 ^0.004 ^.07 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 71..80 at @s positioned 0 0 0 align xyz run summon arrow ^0.0009 ^-0.00092 ^.07 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 81..90 at @s positioned 0 0 0 align xyz run summon arrow ^0.0013 ^0.00031 ^.07 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 91..100 at @s positioned 0 0 0 align xyz run summon arrow ^-0.0021 ^0.0005 ^.07 {NoGravity:1,Tags:["VG_fakebullet"],life:0}

execute as @s[gamemode=!creative] run scoreboard players remove @s VG_pistolammo 1
execute at @s run playsound minecraft:entity.generic.explode player @a ~ ~ ~ .1 2
#effect give @s glowing 1 0 true
execute if score VG_defines VG_def_recoil matches 1 run scoreboard players set @s[tag=!VG_ridingvehicle] VG_recoilpistol 10

scoreboard players operation @s VG_pistolcooldwn = VG_defines VG_def_pstlcldwn

tag @s add VG_temptarget
execute as @e[type=arrow,tag=VG_pistolbullet,tag=!VG_init] run function vanillaguns2:bulletinit/pistolbullet

scoreboard players set @s VG_fpistol 0
tag @s remove VG_temptarget
execute as @a[scores={VG_pistolammo=1..,VG_fpistol=1..,VG_sneak=0},limit=1] unless score @s VG_pistolcooldwn matches 1.. run function vanillaguns2:guns/firepistol