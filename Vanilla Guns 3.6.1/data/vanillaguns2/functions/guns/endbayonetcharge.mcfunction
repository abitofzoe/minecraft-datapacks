tag @s remove VG_nowcharging
effect clear @s speed 
effect clear @s strength 
effect clear @s dolphins_grace 
effect clear @s haste 
effect clear @s conduit_power 
execute as @s[gamemode=!creative] run scoreboard players operation @s VG_bayonetcool = VG_defines VG_def_bnetenrgy
execute as @s[gamemode=!creative] run scoreboard players operation @s VG_bayonetcool *= VG_defines VG_3mult
execute as @s[gamemode=!creative] run tag @s add VG_bayonetcooldown
tag @s remove VG_endbayonet