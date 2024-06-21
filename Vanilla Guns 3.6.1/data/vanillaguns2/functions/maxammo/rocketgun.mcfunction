execute store result score @s VG_tempgunammo run data get entity @s SelectedItem.tag.VG_gunammo
scoreboard players operation @s VG_tempgunammo = VG_defines VG_def_rgunammo
execute store result entity @s SelectedItem.tag.VG_gunammo long 1 run scoreboard players get @s VG_tempgunammo