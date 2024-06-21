function vanillaguns2:special/callrng
execute at @s anchored eyes run summon arrow ^ ^ ^-.1 {NoGravity:1,Tags:["VG_riflebullet","VG_bullet"],Color:-1,CustomName:"{\"text\":\"Unknown Player using Rifle\"}",damage:5,life:1100,PierceLevel:10,Owner:[]}
execute at @s positioned 0 0 0 align xyz run summon arrow ^ ^ ^.1 {NoGravity:1,Tags:["VG_fakebullet"],life:0}

execute as @s[gamemode=!creative] run scoreboard players remove @s VG_rifleammo 1
execute at @s run playsound minecraft:entity.generic.explode player @s ~ ~ ~ .1 0.5
#effect give @s glowing 1 0 true
execute if score VG_defines VG_def_recoil matches 1 run scoreboard players set @s[tag=!VG_ridingvehicle] VG_recoilrifle 10

tag @s add VG_temptarget
execute as @e[type=arrow,tag=VG_riflebullet,tag=!VG_init] run function vanillaguns2:bulletinit/riflebullet

scoreboard players set @s VG_frifle 0
tag @s remove VG_temptarget
execute as @a[scores={VG_rifleammo=1..,VG_frifle=1..,VG_sneak=0},limit=1] run function vanillaguns2:guns/firerifle