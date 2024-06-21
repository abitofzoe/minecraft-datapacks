kill @e[type=armor_stand,tag=VG_autoturstands]
tag @e[type=#vanillaguns2:hostile,tag=VG_autoturcasted] remove VG_autoturcasted
tag @e[type=#vanillaguns2:hostile,tag=VG_autoturtarget] remove VG_autoturtarget
scoreboard players set @e[type=armor_stand,tag=VG_autoturret] VG_autoturcast 0