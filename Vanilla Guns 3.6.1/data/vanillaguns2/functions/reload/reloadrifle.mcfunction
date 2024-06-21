#Reloading
execute as @a[scores={VG_sneak=1..,VG_frifle=1..},gamemode=!creative] if score @s VG_rifleammo < VG_defines VG_def_rifleammo run tag @s add VG_reloadingrifle
execute as @a[scores={VG_rifleammo=0,VG_sneak=0},gamemode=!creative] run tag @s add VG_reloadingrifle

#Reloading rifle
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:spectral_arrow"}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Rifle\"}"},VG_guninitialized:1b}}}] run tag @s add VG_canreloadrifle

execute as @a[scores={VG_rifletimer=1..},tag=!VG_canreloadrifle] run scoreboard players set @s VG_rifletimer 0
execute as @a[tag=VG_reloadingrifle,tag=VG_canreloadrifle] run scoreboard players add @s VG_rifletimer 1
execute as @a[tag=VG_reloadingrifle,tag=VG_canreloadrifle,scores={VG_rifletimer=25}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1.9
execute as @a[tag=VG_reloadingrifle,tag=VG_canreloadrifle,scores={VG_rifletimer=30}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @a[tag=VG_reloadingrifle,tag=VG_canreloadrifle,scores={VG_rifletimer=55}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @a[tag=VG_reloadingrifle,tag=VG_canreloadrifle,scores={VG_rifletimer=56}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @a[tag=VG_reloadingrifle,scores={VG_rifletimer=70..}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1.25
execute as @a[tag=VG_reloadingrifle,scores={VG_rifletimer=70..},gamemode=!creative] run clear @s spectral_arrow 1
execute as @a[tag=VG_reloadingrifle,scores={VG_rifletimer=70..}] run scoreboard players add @s VG_rifleammo 1
execute as @a[tag=VG_reloadingrifle,scores={VG_rifletimer=70..}] run scoreboard players set @s VG_rifletimer 0