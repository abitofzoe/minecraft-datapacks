execute as @e[type=#vanillaguns2:hostileenhanced,distance=1..32,tag=!VG_autoturretskip,tag=!VG_autoturhit] unless score @s VG_autoturid = @e[type=armor_stand,tag=VG_autoturret,distance=..0.1,limit=1] VG_autoturid unless score @s VG_plyrid = @e[type=armor_stand,tag=VG_autoturret,distance=..0.1,limit=1] VG_autoturplyrid run scoreboard players add @e[type=armor_stand,tag=VG_autoturret,distance=..0.1] VG_autoturcast 1