tag @e[type=#vanillaguns2:hostile,distance=..1,sort=nearest,tag=!VG_autoturretskip,tag=!VG_autoturhit] add VG_autoturcasted
execute as @s[tag=!VG_autoturretblocked] run tag @e[type=#vanillaguns2:hostile,distance=..1,sort=nearest,tag=VG_autoturcasted,tag=!VG_autoturretskip,tag=!VG_autoturhit] add VG_autoturtarget
execute as @s[tag=!VG_autoturretblocked] run tag @e[type=#vanillaguns2:hostile,distance=..1,sort=nearest,tag=VG_autoturcasted,tag=!VG_autoturretskip,tag=!VG_autoturhit] add VG_autoturhit
execute as @s[tag=!VG_autoturretblocked] run scoreboard players operation @e[type=#vanillaguns2:hostile,distance=..1,sort=nearest,tag=!VG_autoturretskip,tag=VG_autoturhit,tag=VG_autoturtarget] VG_autoturid = @s VG_autoturid
scoreboard players set @s VG_autoturcastt 98