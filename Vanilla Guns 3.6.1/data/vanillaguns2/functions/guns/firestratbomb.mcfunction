execute as @s[scores={VG_stratammo=0}] at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @s[scores={VG_stratammo=1..}] run scoreboard players set @s VG_heavyBomb 1
#execute as @s[scores={VG_stratammo=1..}] run effect give @s glowing 10 0 true
execute as @s[scores={VG_stratammo=1..},gamemode=!creative] run scoreboard players remove @s VG_stratammo 1

scoreboard players operation @s VG_fstratbomb -= VG_defines VG_def_stratcool
