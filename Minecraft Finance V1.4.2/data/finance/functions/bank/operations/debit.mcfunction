execute store result score SM_system SM_balance_least run data get entity @s ArmorItems[0].tag.SloopBank[0].BalanceLeast 1
execute store result score SM_system SM_balance_most run data get entity @s ArmorItems[0].tag.SloopBank[0].BalanceMost 1
execute store result score SM_system SM_balance_dec run data get entity @s ArmorItems[0].tag.SloopBank[0].BalanceDec 1

scoreboard players operation SM_system SM_balance_least -= SM_system SM_debit_least
scoreboard players operation SM_system SM_balance_most -= SM_system SM_debit_most
scoreboard players operation SM_system SM_balance_dec -= SM_system SM_debit_dec

execute if score SM_system SM_balance_dec matches ..-1 run scoreboard players operation SM_system SM_temp = SM_system SM_balance_dec
execute if score SM_system SM_balance_dec matches ..-1 run scoreboard players operation SM_system SM_temp /= SM_system SM_const_100
execute if score SM_system SM_balance_dec matches ..-1 run scoreboard players operation SM_system SM_balance_least += SM_system SM_temp
execute if score SM_system SM_balance_dec matches ..-1 run scoreboard players operation SM_system SM_balance_dec %= SM_system SM_const_100

execute if score SM_system SM_balance_least matches ..-1 run scoreboard players operation SM_system SM_temp = SM_system SM_balance_least
execute if score SM_system SM_balance_least matches ..-1 run scoreboard players operation SM_system SM_temp /= SM_system SM_const_10000000
execute if score SM_system SM_balance_least matches ..-1 run scoreboard players operation SM_system SM_balance_most += SM_system SM_temp
execute if score SM_system SM_balance_least matches ..-1 run scoreboard players operation SM_system SM_balance_least %= SM_system SM_const_10000000

execute store result entity @s ArmorItems[0].tag.SloopBank[0].BalanceLeast long 1 run scoreboard players get SM_system SM_balance_least
execute store result entity @s ArmorItems[0].tag.SloopBank[0].BalanceMost long 1 run scoreboard players get SM_system SM_balance_most
execute store result entity @s ArmorItems[0].tag.SloopBank[0].BalanceDec long 1 run scoreboard players get SM_system SM_balance_dec

scoreboard players operation @s SM_b_acct_lg_cal = SM_system SM_debit_least
scoreboard players operation @s SM_b_acct_lg_cam = SM_system SM_debit_most
scoreboard players operation @s SM_b_acct_lg_cad = SM_system SM_debit_dec
scoreboard players set @s SM_b_acct_lg_ct 2

execute unless score SM_system SM_skip_log matches 1 run function finance:bank/log/record