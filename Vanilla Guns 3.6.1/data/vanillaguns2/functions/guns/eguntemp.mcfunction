#Cooling down
execute as @a[scores={VG_eguntemp=31..}] run scoreboard players remove @s VG_eguntemp 1
execute as @a[scores={VG_eguntemp=31..}] at @s if block ~ ~ ~ water run scoreboard players remove @s VG_eguntemp 1
execute as @a[scores={VG_eguntemp=30}] run tag @s remove VG_overheat

#Overheat
execute as @a if score @s VG_eguntemp >= VG_defines VG_def_eguntemp at @s run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 1
execute as @a if score @s VG_eguntemp >= VG_defines VG_def_eguntemp at @s run particle minecraft:smoke ~ ~ ~ 1 1 1 0 500 normal
execute as @a if score @s VG_eguntemp >= VG_defines VG_def_eguntemp at @s run tag @s add VG_overheat