
tag @s add VG_temptarget
function vanillaguns2:guns/fireshotgunspawn
function vanillaguns2:guns/fireshotgunspawn
function vanillaguns2:guns/fireshotgunspawn
function vanillaguns2:guns/fireshotgunspawn
function vanillaguns2:guns/fireshotgunspawn
function vanillaguns2:guns/fireshotgunspawn
function vanillaguns2:guns/fireshotgunspawn
function vanillaguns2:guns/fireshotgunspawn
function vanillaguns2:guns/fireshotgunspawn
function vanillaguns2:guns/fireshotgunspawn
function vanillaguns2:guns/fireshotgunspawn
function vanillaguns2:guns/fireshotgunspawn

execute as @s[gamemode=!creative] run scoreboard players remove @s VG_shotgunammo 1
execute at @s run playsound minecraft:entity.generic.explode player @a ~ ~ ~ .1 1

#effect give @s glowing 1 0 true
execute if score VG_defines VG_def_recoil matches 11..20 run scoreboard players set @s[tag=!VG_ridingvehicle] VG_recoilshotgun 10

scoreboard players operation @s VG_shtguncooldwn = VG_defines VG_def_stgncldwn



scoreboard players set @s VG_fshotgun 0
tag @s remove VG_temptarget
execute as @a[scores={VG_shotgunammo=1..,VG_fshotgun=1..,VG_sneak=0},limit=1] unless score @s VG_shtguncooldwn matches 1.. run function vanillaguns2:guns/fireshotgun