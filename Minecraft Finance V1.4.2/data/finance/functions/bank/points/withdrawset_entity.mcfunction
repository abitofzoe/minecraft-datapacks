scoreboard players operation SM_system SM_b_acct_no = @s SM_b_acct_no

execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run function finance:bank/operations/points/query

scoreboard players operation SM_system SM_pointwithdraw = @s SM_pointwithdraw

execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no if score SM_system SM_balance_most matches 0 if score SM_system SM_balance_least < SM_system SM_pointwithdraw run scoreboard players operation SM_system SM_pointwithdraw = SM_system SM_balance_least
execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run scoreboard players operation @s SM_pointwithdraw = SM_system SM_pointwithdraw

execute unless score WC_time WC_weekday matches 1..5 run tellraw @s [{"text":"[SloopBank] ","color":"yellow"},{"text":"Your withdrawal of ","color":"white"},{"score":{"name":"SM_system","objective":"SM_pointwithdraw"},"color":"light_purple"},{"text":" Points","color":"yellow"},{"text":" is on hold until the bank opens on Mondays-Fridays, 9AM-4PM.","color":"white"}]
execute if score WC_time WC_weekday matches 1..5 unless score WC_time WC_hours matches 9..15 run tellraw @s [{"text":"[SloopBank] ","color":"yellow"},{"text":"Your withdrawal of ","color":"white"},{"score":{"name":"SM_system","objective":"SM_pointwithdraw"},"color":"light_purple"},{"text":" Points","color":"yellow"},{"text":" is on hold until the bank opens on Mondays-Fridays, 9AM-4PM.","color":"white"}]

scoreboard players set @s SM_bankaction 0
tag @s add SM_pending_pwithdrawal
execute as @a[scores={SM_bankaction=10},limit=1] run function finance:bank/withdrawset_entity