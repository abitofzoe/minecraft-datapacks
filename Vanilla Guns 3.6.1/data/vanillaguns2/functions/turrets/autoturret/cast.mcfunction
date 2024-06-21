scoreboard players add @s VG_autoturcastt 1
scoreboard players add @s VG_autoparticles 1

#execute as @s[tag=!VG_autoturretblocked,scores={VG_autoparticles=6..}] run particle minecraft:crit ~ ~1 ~ 0 0 0 0 0 normal
#execute as @s[tag=VG_autoturretblocked,scores={VG_autoparticles=6..}] run particle dust 1 0 0 1 ~ ~1 ~ 0 0 0 0 0 normal
#execute as @s[scores={VG_autoparticles=6..}] run scoreboard players set @s VG_autoparticles 0

execute unless block ~ ~1 ~ #vanillaguns2:autoturretblocks run tag @s add VG_autoturretblocked

execute if entity @e[type=#vanillaguns2:hostile,distance=..1,tag=!VG_autoturcasted,tag=!VG_autoturtarget,tag=!VG_autoturretskip,tag=!VG_autoturhit,sort=nearest,limit=1] run function vanillaguns2:turrets/autoturret/casted

execute if score @s VG_autoturcastt matches ..97 positioned ^ ^ ^0.33 run function vanillaguns2:turrets/autoturret/cast