execute store success score @s VG_clearedarrows run clear @s[gamemode=!creative] minecraft:spectral_arrow 1
scoreboard players add @s[scores={VG_clearedarrows=1}] VG_pistolammo 1

execute unless score @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:spectral_arrow"}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Pistol\"}"},VG_guninitialized:1b}}},gamemode=!creative] VG_pistolammo >= VG_defines VG_def_pstlammo run function vanillaguns2:reload/reloadpistolclear