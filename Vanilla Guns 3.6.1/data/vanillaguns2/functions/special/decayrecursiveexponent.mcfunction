#scoreboard players add @s VG_fall_temptime 1
#scoreboard players operation @s VG_fall_temploss = VG_defines VG_def_pstldcay
#scoreboard players operation @s VG_fall_temploss /= @s VG_bullettime
##say test
#execute if score @s VG_fall_temptime < @s VG_bullettime run function vanillaguns2:special/decayrecursiveexponent

#Temp
scoreboard players operation @s VG_fall_start -= VG_defines VG_def_pstldcay