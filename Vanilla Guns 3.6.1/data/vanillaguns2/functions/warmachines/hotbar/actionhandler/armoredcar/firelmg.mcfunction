function vanillaguns2:special/callrng
execute at @s run summon arrow ^ ^ ^1.5 {NoGravity:1,Tags:["VG_vehicle_lmgbullet","VG_bullet"],Color:-1,CustomName:"{\"text\":\"Unknown Player using SMG\"}",damage:0.5,life:1100,Owner:[]}
execute at @s positioned 0 0 0 align xyz run summon arrow ^ ^ ^.1 {NoGravity:1,Tags:["VG_fakebullet"],life:0}

execute at @s run playsound minecraft:entity.generic.explode player @a ~ ~ ~ .1 2
#effect give @s glowing 1 0 true
execute if score VG_defines VG_def_recoil matches 1 run scoreboard players set @s[tag=!VG_ridingvehicle] VG_recoilsmg 10

tag @s add VG_temptarget
scoreboard players set @s VG_usecooldown 4
execute as @e[type=arrow,tag=VG_vehicle_lmgbullet,tag=!VG_init] run function vanillaguns2:warmachines/hotbar/actionhandler/armoredcar/lmgbulletinit

tag @s remove VG_temptarget