execute unless score VG_defines VG_def_dmgmult = VG_defines VG_lst_dmgmult run function vanillaguns2:special/watchdog/recalculatedecay
scoreboard players set VG_watchdog VG_watchdogstate 0

execute as @e[type=arrow,tag=VG_bullet,scores={VG_bullettime=2..}] run function vanillaguns2:special/watchdog/deltamotioncurrent