#Reloading cas
execute as @a[nbt={OnGround:1b,Inventory:[{Slot:-106b,id:"minecraft:tnt"}]},scores={VG_sneak=1..},tag=VG_hascaselytra,gamemode=!creative] if score @s VG_casammo < VG_defines VG_def_casammo run tag @s add VG_reloadingcas

execute as @a[tag=VG_reloadingcas] run scoreboard players add @s VG_casammo 1
execute as @a[tag=VG_reloadingcas] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1.5
execute as @a[tag=VG_reloadingcas,gamemode=!creative] run clear @s tnt 1
execute as @a[tag=VG_reloadingcas] run tag @s remove VG_reloadingcas