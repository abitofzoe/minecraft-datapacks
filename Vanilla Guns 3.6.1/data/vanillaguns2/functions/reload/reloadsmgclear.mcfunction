execute store success score @s VG_clearedarrows run clear @s[gamemode=!creative] minecraft:spectral_arrow 1
scoreboard players add @s[scores={VG_clearedarrows=1}] VG_smgammo 1

execute unless score @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:spectral_arrow"}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"SMG\"}"},VG_guninitialized:1b}}},gamemode=!creative] VG_smgammo >= VG_defines VG_def_smgammo run function vanillaguns2:reload/reloadsmgclear