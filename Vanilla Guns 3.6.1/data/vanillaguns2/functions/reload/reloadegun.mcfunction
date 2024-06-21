#Reloading egun
execute as @a[nbt={OnGround:1b,Inventory:[{Slot:-106b,id:"minecraft:spectral_arrow"}]},scores={VG_sneak=1..},tag=VG_hasfighterelytra,gamemode=!creative] if score @s VG_egunammo < VG_defines VG_def_egunammo run tag @s add VG_reloadingegun

execute as @a[tag=VG_reloadingegun] run scoreboard players add @s VG_egunammo 1
execute as @a[tag=VG_reloadingegun] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1.5
execute as @a[tag=VG_reloadingegun,gamemode=!creative] run clear @s spectral_arrow 1
execute as @a[tag=VG_reloadingegun] run tag @s remove VG_reloadingegun