scoreboard players operation @s VG_vehiclehpperc = @s VG_vehiclehp
scoreboard players operation @s VG_vehiclehpperc *= VG_1000mult VG_1000mult
execute as @s[tag=VG_armoredcarbody] run scoreboard players operation @s VG_vehiclehpperc /= VG_defines VG_def_acarhp
execute as @s[tag=VG_lighttankbody] run scoreboard players operation @s VG_vehiclehpperc /= VG_defines VG_def_ltankhp
execute as @s[tag=VG_heavytankbody] run scoreboard players operation @s VG_vehiclehpperc /= VG_defines VG_def_htankhp
scoreboard players operation @s VG_vehiclehpperm = @s VG_vehiclehpperc
scoreboard players operation @s VG_vehiclehpperm %= VG_100modu VG_100modu
scoreboard players operation @s VG_vehiclehpperc /= VG_10div VG_10div