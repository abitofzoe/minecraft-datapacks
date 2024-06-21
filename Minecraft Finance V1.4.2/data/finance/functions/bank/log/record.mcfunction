scoreboard players add @s SM_b_acct_lg_ct 0
scoreboard players add @s SM_b_acct_lg_cal 0
scoreboard players add @s SM_b_acct_lg_cam 0
scoreboard players add @s SM_b_acct_lg_cad 0

scoreboard players add @s SM_b_acct_lg_1t 0
scoreboard players add @s SM_b_acct_lg_1al 0
scoreboard players add @s SM_b_acct_lg_1am 0
scoreboard players add @s SM_b_acct_lg_1ad 0

scoreboard players add @s SM_b_acct_lg_2t 0
scoreboard players add @s SM_b_acct_lg_2al 0
scoreboard players add @s SM_b_acct_lg_2am 0
scoreboard players add @s SM_b_acct_lg_2ad 0

scoreboard players add @s SM_b_acct_lg_3t 0
scoreboard players add @s SM_b_acct_lg_3al 0
scoreboard players add @s SM_b_acct_lg_3am 0
scoreboard players add @s SM_b_acct_lg_3ad 0

scoreboard players add @s SM_b_acct_lg_4t 0
scoreboard players add @s SM_b_acct_lg_4al 0
scoreboard players add @s SM_b_acct_lg_4am 0
scoreboard players add @s SM_b_acct_lg_4ad 0

scoreboard players add @s SM_b_acct_lg_5t 0
scoreboard players add @s SM_b_acct_lg_5al 0
scoreboard players add @s SM_b_acct_lg_5am 0
scoreboard players add @s SM_b_acct_lg_5ad 0

scoreboard players add @s SM_b_acct_lg_6t 0
scoreboard players add @s SM_b_acct_lg_6al 0
scoreboard players add @s SM_b_acct_lg_6am 0
scoreboard players add @s SM_b_acct_lg_6ad 0

scoreboard players add @s SM_b_acct_lg_7t 0
scoreboard players add @s SM_b_acct_lg_7al 0
scoreboard players add @s SM_b_acct_lg_7am 0
scoreboard players add @s SM_b_acct_lg_7ad 0

scoreboard players add @s SM_b_acct_lg_8t 0
scoreboard players add @s SM_b_acct_lg_8al 0
scoreboard players add @s SM_b_acct_lg_8am 0
scoreboard players add @s SM_b_acct_lg_8ad 0

scoreboard players add @s SM_b_acct_lg_9t 0
scoreboard players add @s SM_b_acct_lg_9al 0
scoreboard players add @s SM_b_acct_lg_9am 0
scoreboard players add @s SM_b_acct_lg_9ad 0

scoreboard players add @s SM_b_acct_lg_xt 0
scoreboard players add @s SM_b_acct_lg_xal 0
scoreboard players add @s SM_b_acct_lg_xam 0
scoreboard players add @s SM_b_acct_lg_xad 0

execute if score @s SM_b_acct_lg_xt matches 1 run scoreboard players operation @s SM_b_acct_lg_pvl += @s SM_b_acct_lg_xal
execute if score @s SM_b_acct_lg_xt matches 1 run scoreboard players operation @s SM_b_acct_lg_pvm += @s SM_b_acct_lg_xam
execute if score @s SM_b_acct_lg_xt matches 1 run scoreboard players operation @s SM_b_acct_lg_pvd += @s SM_b_acct_lg_xad
execute if score @s SM_b_acct_lg_xt matches 2 run scoreboard players operation @s SM_b_acct_lg_pvl -= @s SM_b_acct_lg_xal
execute if score @s SM_b_acct_lg_xt matches 2 run scoreboard players operation @s SM_b_acct_lg_pvm -= @s SM_b_acct_lg_xam
execute if score @s SM_b_acct_lg_xt matches 2 run scoreboard players operation @s SM_b_acct_lg_pvd -= @s SM_b_acct_lg_xad
execute if score @s SM_b_acct_lg_xt matches 3 run scoreboard players operation @s SM_b_acct_lg_pvl -= @s SM_b_acct_lg_xal
execute if score @s SM_b_acct_lg_xt matches 3 run scoreboard players operation @s SM_b_acct_lg_pvm -= @s SM_b_acct_lg_xam
execute if score @s SM_b_acct_lg_xt matches 3 run scoreboard players operation @s SM_b_acct_lg_pvd -= @s SM_b_acct_lg_xad
execute if score @s SM_b_acct_lg_xt matches 4 run scoreboard players operation @s SM_b_acct_lg_pvl += @s SM_b_acct_lg_xal
execute if score @s SM_b_acct_lg_xt matches 4 run scoreboard players operation @s SM_b_acct_lg_pvm += @s SM_b_acct_lg_xam
execute if score @s SM_b_acct_lg_xt matches 4 run scoreboard players operation @s SM_b_acct_lg_pvd += @s SM_b_acct_lg_xad

execute if score @s SM_b_acct_lg_pvd matches 100.. run scoreboard players operation SM_system SM_temp = @s SM_b_acct_lg_pvd
execute if score @s SM_b_acct_lg_pvd matches 100.. run scoreboard players operation SM_system SM_temp /= SM_system SM_const_100
execute if score @s SM_b_acct_lg_pvd matches 100.. run scoreboard players operation @s SM_b_acct_lg_pvl += SM_system SM_temp
execute if score @s SM_b_acct_lg_pvd matches 100.. run scoreboard players operation @s SM_b_acct_lg_pvd %= SM_system SM_const_100

execute if score @s SM_b_acct_lg_pvl matches 10000000.. run scoreboard players operation SM_system SM_temp = @s SM_b_acct_lg_pvl
execute if score @s SM_b_acct_lg_pvl matches 10000000.. run scoreboard players operation SM_system SM_temp /= SM_system SM_const_10000000
execute if score @s SM_b_acct_lg_pvl matches 10000000.. run scoreboard players operation @s SM_b_acct_lg_pvm += SM_system SM_temp
execute if score @s SM_b_acct_lg_pvl matches 10000000.. run scoreboard players operation @s SM_b_acct_lg_pvl %= SM_system SM_const_10000000

execute if score @s SM_b_acct_lg_pvd matches ..-1 run scoreboard players operation SM_system SM_temp = @s SM_b_acct_lg_pvd
execute if score @s SM_b_acct_lg_pvd matches ..-1 run scoreboard players operation SM_system SM_temp /= SM_system SM_const_100
execute if score @s SM_b_acct_lg_pvd matches ..-1 run scoreboard players operation SM_system SM_b_acct_lg_pvl -= SM_system SM_temp
execute if score @s SM_b_acct_lg_pvd matches ..-1 run scoreboard players operation SM_system SM_b_acct_lg_pvd %= SM_system SM_const_100

execute if score @s SM_b_acct_lg_pvl matches ..-1 run scoreboard players operation SM_system SM_temp = @s SM_b_acct_lg_pvl
execute if score @s SM_b_acct_lg_pvl matches ..-1 run scoreboard players operation SM_system SM_temp /= SM_system SM_const_10000000
execute if score @s SM_b_acct_lg_pvl matches ..-1 run scoreboard players operation @s SM_b_acct_lg_pvm -= SM_system SM_temp
execute if score @s SM_b_acct_lg_pvl matches ..-1 run scoreboard players operation @s SM_b_acct_lg_pvl %= SM_system SM_const_10000000

scoreboard players operation @s SM_b_acct_lg_xt = @s SM_b_acct_lg_9t
scoreboard players operation @s SM_b_acct_lg_xal = @s SM_b_acct_lg_9al
scoreboard players operation @s SM_b_acct_lg_xam = @s SM_b_acct_lg_9am
scoreboard players operation @s SM_b_acct_lg_xad = @s SM_b_acct_lg_9ad

scoreboard players operation @s SM_b_acct_lg_9t = @s SM_b_acct_lg_8t
scoreboard players operation @s SM_b_acct_lg_9al = @s SM_b_acct_lg_8al
scoreboard players operation @s SM_b_acct_lg_9am = @s SM_b_acct_lg_8am
scoreboard players operation @s SM_b_acct_lg_9ad = @s SM_b_acct_lg_8ad

scoreboard players operation @s SM_b_acct_lg_8t = @s SM_b_acct_lg_7t
scoreboard players operation @s SM_b_acct_lg_8al = @s SM_b_acct_lg_7al
scoreboard players operation @s SM_b_acct_lg_8am = @s SM_b_acct_lg_7am
scoreboard players operation @s SM_b_acct_lg_8ad = @s SM_b_acct_lg_7ad

scoreboard players operation @s SM_b_acct_lg_7t = @s SM_b_acct_lg_6t
scoreboard players operation @s SM_b_acct_lg_7al = @s SM_b_acct_lg_6al
scoreboard players operation @s SM_b_acct_lg_7am = @s SM_b_acct_lg_6am
scoreboard players operation @s SM_b_acct_lg_7ad = @s SM_b_acct_lg_6ad

scoreboard players operation @s SM_b_acct_lg_6t = @s SM_b_acct_lg_5t
scoreboard players operation @s SM_b_acct_lg_6al = @s SM_b_acct_lg_5al
scoreboard players operation @s SM_b_acct_lg_6am = @s SM_b_acct_lg_5am
scoreboard players operation @s SM_b_acct_lg_6ad = @s SM_b_acct_lg_5ad

scoreboard players operation @s SM_b_acct_lg_5t = @s SM_b_acct_lg_4t
scoreboard players operation @s SM_b_acct_lg_5al = @s SM_b_acct_lg_4al
scoreboard players operation @s SM_b_acct_lg_5am = @s SM_b_acct_lg_4am
scoreboard players operation @s SM_b_acct_lg_5ad = @s SM_b_acct_lg_4ad

scoreboard players operation @s SM_b_acct_lg_4t = @s SM_b_acct_lg_3t
scoreboard players operation @s SM_b_acct_lg_4al = @s SM_b_acct_lg_3al
scoreboard players operation @s SM_b_acct_lg_4am = @s SM_b_acct_lg_3am
scoreboard players operation @s SM_b_acct_lg_4ad = @s SM_b_acct_lg_3ad

scoreboard players operation @s SM_b_acct_lg_3t = @s SM_b_acct_lg_2t
scoreboard players operation @s SM_b_acct_lg_3al = @s SM_b_acct_lg_2al
scoreboard players operation @s SM_b_acct_lg_3am = @s SM_b_acct_lg_2am
scoreboard players operation @s SM_b_acct_lg_3ad = @s SM_b_acct_lg_2ad

scoreboard players operation @s SM_b_acct_lg_2t = @s SM_b_acct_lg_1t
scoreboard players operation @s SM_b_acct_lg_2al = @s SM_b_acct_lg_1al
scoreboard players operation @s SM_b_acct_lg_2am = @s SM_b_acct_lg_1am
scoreboard players operation @s SM_b_acct_lg_2ad = @s SM_b_acct_lg_1ad

scoreboard players operation @s SM_b_acct_lg_1t = @s SM_b_acct_lg_ct
scoreboard players operation @s SM_b_acct_lg_1al = @s SM_b_acct_lg_cal
scoreboard players operation @s SM_b_acct_lg_1am = @s SM_b_acct_lg_cam
scoreboard players operation @s SM_b_acct_lg_1ad = @s SM_b_acct_lg_cad
