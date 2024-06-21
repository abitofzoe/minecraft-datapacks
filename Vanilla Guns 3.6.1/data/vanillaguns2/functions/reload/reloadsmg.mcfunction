#Reloading
execute as @a[scores={VG_sneak=1..,VG_fsmg=1..},gamemode=!creative] if score @s VG_smgammo < VG_defines VG_def_smgammo run tag @s add VG_reloadingsmg
execute as @a[scores={VG_smgammo=0,VG_sneak=0},gamemode=!creative] run tag @s add VG_reloadingsmg

#Reloading smg
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:spectral_arrow"}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"SMG\"}"},VG_guninitialized:1b}}}] run tag @s add VG_canreloadsmg

execute as @a[scores={VG_smgtimer=1..},tag=!VG_canreloadsmg] run scoreboard players set @s VG_smgtimer 0
execute as @a[tag=VG_reloadingsmg,tag=VG_canreloadsmg] run scoreboard players add @s VG_smgtimer 1
execute as @a[tag=VG_reloadingsmg,scores={VG_smgtimer=1},tag=VG_canreloadsmg] at @s run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 1.2 1
execute as @a[tag=VG_reloadingsmg,scores={VG_smgtimer=5},tag=VG_canreloadsmg] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @a[tag=VG_reloadingsmg,scores={VG_smgtimer=34},tag=VG_canreloadsmg] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @a[tag=VG_reloadingsmg,scores={VG_smgtimer=35..}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @a[tag=VG_reloadingsmg,scores={VG_smgtimer=35..}] run function vanillaguns2:reload/reloadsmgclear
execute as @a[tag=VG_reloadingsmg,scores={VG_smgtimer=35..}] run scoreboard players set @s VG_smgtimer 0