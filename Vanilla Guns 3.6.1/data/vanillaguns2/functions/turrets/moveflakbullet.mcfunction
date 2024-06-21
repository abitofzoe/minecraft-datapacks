execute as @s[scores={VG_flakgunage=7..}] positioned ~ ~1.62 ~ if entity @e[type=!#vanillaguns2:flak_ignore,tag=!VG_flakgunbullet,distance=..1.5] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2,CustomName:"{\"text\":\"Unknown Player using Flak Gun\",\"color\":\"red\"}"}
execute as @s[scores={VG_flakgunage=7..}] positioned ~ ~1.62 ~ if entity @e[type=!#vanillaguns2:flak_ignore,tag=!VG_flakgunbullet,distance=..1.5] run scoreboard players operation @s VG_flaktimer = VG_defines VG_def_flakspd
execute as @s[scores={VG_flakgunage=7..}] positioned ~ ~1.62 ~ if entity @e[type=!#vanillaguns2:flak_ignore,tag=!VG_flakgunbullet,distance=..1.5] run kill @s

execute as @s[scores={VG_flakgunage=7..}] if entity @e[type=!#vanillaguns2:flak_ignore,tag=!VG_flakgunbullet,distance=..1.5] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2,CustomName:"{\"text\":\"Unknown Player using Flak Gun\",\"color\":\"red\"}"}
execute as @s[scores={VG_flakgunage=7..}] if entity @e[type=!#vanillaguns2:flak_ignore,tag=!VG_flakgunbullet,distance=..1.5] run scoreboard players operation @s VG_flaktimer = VG_defines VG_def_flakspd
execute as @s[scores={VG_flakgunage=7..}] if entity @e[type=!#vanillaguns2:flak_ignore,tag=!VG_flakgunbullet,distance=..1.5] run kill @s

execute positioned ~ ~1.62 ~ unless block ~ ~ ~ air unless block ~ ~ ~ cave_air run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2,CustomName:"{\"text\":\"Unknown Player using Flak Gun\",\"color\":\"red\"}"}
execute positioned ~ ~1.62 ~ unless block ~ ~ ~ air unless block ~ ~ ~ cave_air run scoreboard players operation @s VG_flaktimer = VG_defines VG_def_flakspd
execute positioned ~ ~1.62 ~ unless block ~ ~ ~ air unless block ~ ~ ~ cave_air run kill @s

tp @s ^ ^ ^0.25

execute as @s[scores={VG_flakgunage=800..}] positioned ~ ~1.62 ~ run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2,CustomName:"{\"text\":\"Unknown Player using Flak Gun\",\"color\":\"red\"}"}
execute as @s[scores={VG_flakgunage=800..}] positioned ~ ~1.62 ~ run scoreboard players operation @s VG_flaktimer = VG_defines VG_def_flakspd
execute as @s[scores={VG_flakgunage=800..}] positioned ~ ~1.62 ~ run kill @s

scoreboard players add @s VG_flakgunage 1
scoreboard players add @s VG_flaktimer 1
execute at @s if score @s VG_flaktimer < VG_defines VG_def_flakspd run function vanillaguns2:turrets/moveflakbullet