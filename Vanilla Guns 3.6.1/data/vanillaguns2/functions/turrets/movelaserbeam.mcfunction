#tp @s ^ ^ ^0.25

function vanillaguns2:turrets/lasercolorchange

execute positioned ~ ~1.62 ~ unless block ~ ~ ~ #vanillaguns2:lasersafeblocks run scoreboard players set @s VG_laserage 100
execute positioned ~ ~1.62 ~ if entity @e[type=#vanillaguns2:warmachineentities,tag=VG_vehiclebody,distance=..0.5] run scoreboard players set @s VG_laserage 100

scoreboard players add @s VG_laserage 1
scoreboard players add @s VG_lasertimer 1
#scoreboard players add @s VG_lasermovtimer 1 

#execute as @s[scores={VG_lasertimer=100..}] run scoreboard players operation @s VG_lasermovtimer = VG_defines VG_def_lasermspd

execute as @s[scores={VG_lasertimer=4..}] run function vanillaguns2:turrets/laserparticle
execute as @s[scores={VG_lasertimer=4..}] run scoreboard players set @s VG_lasertimer 0

execute as @s[scores={VG_laserage=2..}] positioned ~ ~1.62 ~ run function vanillaguns2:turrets/lasereffects
execute as @s[scores={VG_laserage=2..}] run function vanillaguns2:turrets/lasereffects

execute if score @s VG_laserage matches ..100 positioned ^ ^ ^1 run function vanillaguns2:turrets/movelaserbeam