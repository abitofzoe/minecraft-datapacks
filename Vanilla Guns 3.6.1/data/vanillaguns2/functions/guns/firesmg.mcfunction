execute if score VG_system VG_rng matches 1..16 run scoreboard players set @s VG_totalfsmg 1
execute if score VG_system VG_rng matches 17..32 run scoreboard players set @s VG_totalfsmg 1
execute if score VG_system VG_rng matches 33..52 run scoreboard players set @s VG_totalfsmg 2
execute if score VG_system VG_rng matches 53..68 run scoreboard players set @s VG_totalfsmg 2
execute if score VG_system VG_rng matches 69..84 run scoreboard players set @s VG_totalfsmg 2
execute if score VG_system VG_rng matches 85..100 run scoreboard players set @s VG_totalfsmg 3


execute if score @s[scores={VG_totalfsmg=6..}] VG_smgammo matches ..5 run scoreboard players set @s VG_totalfsmg 3
execute if score @s[scores={VG_totalfsmg=5..}] VG_smgammo matches ..4 run scoreboard players set @s VG_totalfsmg 3
execute if score @s[scores={VG_totalfsmg=4..}] VG_smgammo matches ..3 run scoreboard players set @s VG_totalfsmg 3
execute if score @s[scores={VG_totalfsmg=3..}] VG_smgammo matches ..2 run scoreboard players set @s VG_totalfsmg 2
execute if score @s[scores={VG_totalfsmg=2..}] VG_smgammo matches ..1 run scoreboard players set @s VG_totalfsmg 1

tag @s add VG_temptarget

execute if score @s VG_totalfsmg matches 1.. run function vanillaguns2:guns/firesmgspawn

execute at @s run playsound minecraft:entity.generic.explode player @a ~ ~ ~ .1 2
#effect give @s glowing 1 0 true
execute if score VG_defines VG_def_recoil matches 1 run scoreboard players set @s[tag=!VG_ridingvehicle] VG_recoilsmg 10



scoreboard players set @s VG_fsmg 0
tag @s remove VG_temptarget
execute as @a[scores={VG_smgammo=1..,VG_fsmg=1..,VG_sneak=0},limit=1] run function vanillaguns2:guns/firesmg