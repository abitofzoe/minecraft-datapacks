scoreboard players add @s VG_egunside 1

execute as @s[scores={VG_egunammo=0}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @s[scores={VG_egunammo=1..}] at @s run playsound minecraft:entity.generic.explode player @a ~ ~ ~ .1 2

function vanillaguns2:special/callrng
execute at @s anchored eyes run summon arrow ^0.5 ^ ^-.1 {NoGravity:1,Tags:["VG_egunbullet","VG_bullet","VG_egunbulletleft"],Color:-1,CustomName:"{\"text\":\"Unknown Player using Elytra Gun\"}",damage:0.1,life:1100,PierceLevel:1,Owner:[]}
execute at @s anchored eyes run summon arrow ^-0.5 ^ ^-.1 {NoGravity:1,Tags:["VG_egunbullet","VG_bullet","VG_egunbulletright"],Color:-1,CustomName:"{\"text\":\"Unknown Player using Elytra Gun\"}",damage:0.1,life:1100,PierceLevel:1,Owner:[]}
execute at @s positioned 0 0 0 align xyz run summon arrow ^ ^ ^.1 {NoGravity:1,Tags:["VG_fakebullet"],life:0}

execute as @s[scores={VG_fegun=1..,VG_egunammo=1..},gamemode=!creative] run scoreboard players add @s VG_eguntemp 3
execute as @s[scores={VG_egunammo=1..},gamemode=!creative] run scoreboard players remove @s VG_egunammo 1

tag @s add VG_temptarget
execute as @e[type=arrow,tag=VG_egunbullet,tag=!VG_init] run function vanillaguns2:bulletinit/egunbullet

scoreboard players set @s VG_fegun 0
scoreboard players set @s[scores={VG_egunside=2..}] VG_egunside 0
tag @s remove VG_temptarget
execute as @a[scores={VG_fegun=1..},limit=1] if score @s VG_elytradelay >= VG_defines VG_def_flydelay run function vanillaguns2:guns/fireegun