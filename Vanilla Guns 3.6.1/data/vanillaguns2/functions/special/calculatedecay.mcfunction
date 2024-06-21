#scoreboard players set @s VG_fall_temptime 0
#function vanillaguns2:special/decayrecursiveexponent
#scoreboard players operation @s VG_fall_calc -= @s VG_fall_temploss

#Temporary linear decay
execute if score @s VG_fall_calc matches ..-1 run scoreboard players set @s VG_fall_calc 1
function vanillaguns2:special/bulletdecay
execute if score @s VG_fall_calc matches ..-1 run scoreboard players set @s VG_fall_calc 1
execute store result entity @s damage double 0.001 run scoreboard players get @s VG_fall_calc  
