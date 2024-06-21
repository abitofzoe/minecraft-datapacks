data modify entity @e[sort=nearest,limit=1,type=armor_stand,tag=VG_laserturret,distance=..1] ArmorItems[3].tag.Owner set from entity @p UUID

#summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1,Invulnerable:1,Invisible:1,Tags:["VG_laserbeam","VG_bullet","VG_beam"]}
playsound minecraft:block.fire.extinguish player @a ~ ~ ~ .1 2
#effect give @s glowing 1 0 true

#tp @e[type=armor_stand,distance=..0.5,limit=1,sort=nearest,tag=VG_laserbeam] @s

execute as @s[gamemode=!creative] run scoreboard players remove @e[sort=nearest,limit=1,type=armor_stand,tag=VG_laserturret,distance=..1] VG_laserammo 1
execute as @s[gamemode=!creative] run scoreboard players add @e[sort=nearest,limit=1,type=armor_stand,tag=VG_laserturret,distance=..1] VG_lasertemp 7
scoreboard players set @e[sort=nearest,limit=1,type=armor_stand,tag=VG_laserturret,distance=..1] VG_lasertimer 0 
scoreboard players set @e[sort=nearest,limit=1,type=armor_stand,tag=VG_laserturret,distance=..1] VG_lasermovtimer 0
scoreboard players set @e[sort=nearest,limit=1,type=armor_stand,tag=VG_laserturret,distance=..1] VG_laserage 0

data modify entity @e[type=armor_stand,tag=VG_laserturret,distance=..1,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[type=armor_stand,tag=VG_laserturret,distance=..1,sort=nearest,limit=1] Rotation[1] set from entity @s Rotation[1]

scoreboard players set @s VG_lasercolor 0

execute as @e[sort=nearest,limit=1,type=armor_stand,tag=VG_laserturret,distance=..1] at @s run function vanillaguns2:turrets/movelaserbeam