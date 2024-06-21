#Reloading cas
execute as @a[nbt={OnGround:1b,Inventory:[{Slot:-106b,id:"minecraft:fire_charge"}]},scores={VG_sneak=1..},tag=VG_hasstratelytra,gamemode=!creative] if score @s VG_stratammo < VG_defines VG_def_stratammo run tag @s add VG_reloadingstrat

execute as @a[tag=VG_reloadingstrat] run scoreboard players add @s VG_stratammo 1
execute as @a[tag=VG_reloadingstrat] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1.5
execute as @a[tag=VG_reloadingstrat,gamemode=!creative] run clear @s fire_charge 1
execute as @a[tag=VG_reloadingstrat] run tag @s remove VG_reloadingstrat