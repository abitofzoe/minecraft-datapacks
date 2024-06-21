execute store result score @s VG_curknwnmtnX run data get entity @s Motion[0] 10000
execute store result score @s VG_curknwnmtnY run data get entity @s Motion[1] 10000
execute store result score @s VG_curknwnmtnZ run data get entity @s Motion[2] 10000

scoreboard players operation @s[scores={VG_lstknwnmtnX=..-1}] VG_lstknwnmtnX *= gunsReworked VG_flipsigns
scoreboard players operation @s[scores={VG_lstknwnmtnY=..-1}] VG_lstknwnmtnY *= gunsReworked VG_flipsigns
scoreboard players operation @s[scores={VG_lstknwnmtnZ=..-1}] VG_lstknwnmtnZ *= gunsReworked VG_flipsigns
scoreboard players operation @s[scores={VG_curknwnmtnX=..-1}] VG_curknwnmtnX *= gunsReworked VG_flipsigns
scoreboard players operation @s[scores={VG_curknwnmtnY=..-1}] VG_curknwnmtnY *= gunsReworked VG_flipsigns
scoreboard players operation @s[scores={VG_curknwnmtnZ=..-1}] VG_curknwnmtnZ *= gunsReworked VG_flipsigns

scoreboard players operation @s VG_deltamtnX = @s VG_curknwnmtnX
scoreboard players operation @s VG_deltamtnY = @s VG_curknwnmtnY
scoreboard players operation @s VG_deltamtnZ = @s VG_curknwnmtnZ

scoreboard players operation @s VG_deltamtnX -= @s VG_lstknwnmtnX
scoreboard players operation @s VG_deltamtnY -= @s VG_lstknwnmtnY
scoreboard players operation @s VG_deltamtnZ -= @s VG_lstknwnmtnZ
scoreboard players operation @s[scores={VG_deltamtnX=..-1}] VG_deltamtnX *= gunsReworked VG_flipsigns
scoreboard players operation @s[scores={VG_deltamtnY=..-1}] VG_deltamtnY *= gunsReworked VG_flipsigns
scoreboard players operation @s[scores={VG_deltamtnZ=..-1}] VG_deltamtnZ *= gunsReworked VG_flipsigns

scoreboard players operation @s VG_deltamtnXYZ = @s VG_deltamtnX
scoreboard players operation @s VG_deltamtnXYZ += @s VG_deltamtnY
scoreboard players operation @s VG_deltamtnXYZ += @s VG_deltamtnZ

execute if score @s VG_deltamtnXYZ >= VG_defines VG_def_maxdelta run kill @s[scores={VG_bullettime=3..}]