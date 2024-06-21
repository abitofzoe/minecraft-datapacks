#execute  run tp @e[type=armor_stand,tag=VG_autoturret,distance=..0.1,limit=1] ~ ~ ~ facing entity @s

scoreboard players set @s VG_autoturcastt 0

tag @s remove VG_autoturretblocked

execute as @e[type=#vanillaguns2:hostile,tag=!VG_autoturcasted,sort=nearest,limit=1,tag=!VG_autoturretskip,distance=1..32,tag=!VG_autoturhit] unless score @s VG_autoturid = @e[type=armor_stand,tag=VG_autoturret,distance=..0.1,limit=1] VG_autoturid facing entity @s feet as @e[type=armor_stand,tag=VG_autoturret,distance=..0.1,limit=1] run function vanillaguns2:turrets/autoturret/cast

scoreboard players remove @s VG_autoturcast 1

execute as @e[type=#vanillaguns2:hostile,distance=1..32,tag=VG_autoturtarget,tag=!VG_autoturretskip] if score @s VG_autoturid = @e[type=armor_stand,tag=VG_autoturret,distance=..0.1,limit=1] VG_autoturid run scoreboard players set @e[type=armor_stand,tag=VG_autoturret,distance=..0.1] VG_autoturcast 0

execute if score @s VG_autoturcast matches 1.. run function vanillaguns2:turrets/autoturret/castloop
