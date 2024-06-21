#Reloading
execute as @a[scores={VG_sneak=1..,VG_frgun=1..}] if score @s VG_rgunammo < VG_defines VG_def_rgunammo run tag @s add VG_reloadingrgun
execute as @a[scores={VG_rgunammo=0,VG_sneak=0}] run tag @s add VG_reloadingrgun

#Reloading rgun
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:fire_charge"}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Rocket Gun\"}"},VG_guninitialized:1b}}}] run tag @s add VG_canreloadrgun

execute as @a[scores={VG_rguntimer=1..},tag=!VG_canreloadrgun] run scoreboard players set @s VG_rguntimer 0
execute as @a[tag=VG_reloadingrgun,tag=VG_canreloadrgun] run scoreboard players add @s VG_rguntimer 1
execute as @a[tag=VG_reloadingrgun,tag=VG_canreloadrgun,scores={VG_rguntimer=25}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1.9
execute as @a[tag=VG_reloadingrgun,tag=VG_canreloadrgun,scores={VG_rguntimer=30}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @a[tag=VG_reloadingrgun,tag=VG_canreloadrgun,scores={VG_rguntimer=50}] at @s run playsound minecraft:block.anvil.place player @a ~ ~ ~ 0.2 2
execute as @a[tag=VG_reloadingrgun,tag=VG_canreloadrgun,scores={VG_rguntimer=55}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @a[tag=VG_reloadingrgun,tag=VG_canreloadrgun,scores={VG_rguntimer=57}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1.9
execute as @a[tag=VG_reloadingrgun,tag=VG_canreloadrgun,scores={VG_rguntimer=78}] at @s run playsound minecraft:block.anvil.place player @a ~ ~ ~ 0.1 1.5
execute as @a[tag=VG_reloadingrgun,tag=VG_canreloadrgun,scores={VG_rguntimer=91}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @a[tag=VG_reloadingrgun,tag=VG_canreloadrgun,scores={VG_rguntimer=93}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @a[tag=VG_reloadingrgun,tag=VG_canreloadrgun,scores={VG_rguntimer=95}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @a[tag=VG_reloadingrgun,scores={VG_rguntimer=100..}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @a[tag=VG_reloadingrgun,scores={VG_rguntimer=100..},gamemode=!creative] run clear @s fire_charge 1
execute as @a[tag=VG_reloadingrgun,scores={VG_rguntimer=100..}] run scoreboard players add @s VG_rgunammo 1
execute as @a[tag=VG_reloadingrgun,scores={VG_rguntimer=100..}] run scoreboard players set @s VG_rguntimer 0