execute store result entity @s Pos[0] double 0.1 run scoreboard players get @s VG_turretposX 
execute store result entity @s Pos[2] double 0.1 run scoreboard players get @s VG_turretposZ 

execute store result score @s VG_turretposY2 run data get entity @s Pos[1] 10

execute unless score @s VG_turretposY = @s VG_turretposY2 run kill @s 