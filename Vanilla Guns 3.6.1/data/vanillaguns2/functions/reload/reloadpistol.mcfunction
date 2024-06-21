#Reloading
execute as @a[scores={VG_sneak=1..,VG_fpistol=1..},gamemode=!creative] if score @s VG_pistolammo < VG_defines VG_def_pstlammo run tag @s add VG_reloadingpistol
execute as @a[scores={VG_pistolammo=0,VG_sneak=0},gamemode=!creative] run tag @s add VG_reloadingpistol

#Reloading pistol
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:spectral_arrow"}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Pistol\"}"},VG_guninitialized:1b}}}] run tag @s add VG_canreloadpistol

execute as @a[scores={VG_pistoltimer=1..},tag=!VG_canreloadpistol] run scoreboard players set @s VG_pistoltimer 0
execute as @a[tag=VG_reloadingpistol,tag=VG_canreloadpistol] run scoreboard players add @s VG_pistoltimer 1
execute as @a[tag=VG_reloadingpistol,scores={VG_pistoltimer=1},tag=VG_canreloadpistol] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @a[tag=VG_reloadingpistol,scores={VG_pistoltimer=18},tag=VG_canreloadpistol] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @a[tag=VG_reloadingpistol,scores={VG_pistoltimer=20..}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @a[tag=VG_reloadingpistol,scores={VG_pistoltimer=20..}] run function vanillaguns2:reload/reloadpistolclear
execute as @a[tag=VG_reloadingpistol,scores={VG_pistoltimer=20..}] run scoreboard players set @s VG_pistoltimer 0