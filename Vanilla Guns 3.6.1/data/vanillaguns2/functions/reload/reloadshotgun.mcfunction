#Reloading
execute as @a[scores={VG_sneak=1..,VG_fshotgun=1..},gamemode=!creative] if score @s VG_shotgunammo < VG_defines VG_def_shtgnammo run tag @s add VG_reloadingshotgun
execute as @a[scores={VG_shotgunammo=0,VG_sneak=0},gamemode=!creative] run tag @s add VG_reloadingshotgun

#Reloading shotgun
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:spectral_arrow"}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Shotgun\"}"},VG_guninitialized:1b}}}] run tag @s add VG_canreloadshotgun

execute as @a[scores={VG_shotguntimer=1..},tag=!VG_canreloadshotgun] run scoreboard players set @s VG_shotguntimer 0
execute as @a[tag=VG_reloadingshotgun,tag=VG_canreloadshotgun] run scoreboard players add @s VG_shotguntimer 1
execute as @a[tag=VG_reloadingshotgun,tag=VG_canreloadshotgun,scores={VG_shotguntimer=13}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1.9
execute as @a[tag=VG_reloadingshotgun,scores={VG_shotguntimer=15..}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @a[tag=VG_reloadingshotgun,scores={VG_shotguntimer=15..},gamemode=!creative] run clear @s spectral_arrow 1
execute as @a[tag=VG_reloadingshotgun,scores={VG_shotguntimer=15..}] run scoreboard players add @s VG_shotgunammo 1
execute as @a[tag=VG_reloadingshotgun,scores={VG_shotguntimer=15..}] run scoreboard players set @s VG_shotguntimer 5