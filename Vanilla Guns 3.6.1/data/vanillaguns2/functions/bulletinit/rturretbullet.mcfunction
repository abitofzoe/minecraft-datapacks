execute store result score @s VG_arrowposX run data get entity @s Pos[0] 5000
execute store result score @s VG_arrowposY run data get entity @s Pos[1] 5000
execute store result score @s VG_arrowposZ run data get entity @s Pos[2] 5000

execute at @s store result score @s VG_tarrowmtnX run scoreboard players operation @s VG_arrowposX -= @p VG_plyrposX
execute at @s store result score @s VG_tarrowmtnY run scoreboard players operation @s VG_arrowposY -= @p VG_plyrposY
execute at @s store result score @s VG_tarrowmtnZ run scoreboard players operation @s VG_arrowposZ -= @p VG_plyrposZ

execute store result entity @s direction[0] double 0.02 run scoreboard players get @s VG_tarrowmtnX
execute store result entity @s direction[1] double 0.02 run scoreboard players get @s VG_tarrowmtnY
execute store result entity @s direction[2] double 0.02 run scoreboard players get @s VG_tarrowmtnZ

scoreboard players set @s VG_tickdown 0