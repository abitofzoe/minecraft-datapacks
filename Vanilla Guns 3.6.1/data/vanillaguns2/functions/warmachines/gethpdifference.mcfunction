execute store result score @s VG_bodyhp run data get entity @s Health 10
scoreboard players remove @s VG_bodyhp 10000
scoreboard players operation @e[type=armor_stand,sort=nearest,limit=1,tag=VG_calculatinghp] VG_vehiclehp += @s VG_bodyhp
data modify entity @s Health set value 1000.0f