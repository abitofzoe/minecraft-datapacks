execute as @s[scores={VG_casammo=0}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @s[scores={VG_casammo=1..}] run scoreboard players set @s VG_lightBomb 1
#execute as @s[scores={VG_casammo=1..}] run effect give @s glowing 1 0 true
execute as @s[scores={VG_casammo=1..},gamemode=!creative] run scoreboard players remove @s VG_casammo 1

scoreboard players operation @s VG_fcasbomb -= VG_defines VG_def_cascool
