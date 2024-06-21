scoreboard players operation SM_system SM_b_acct_no = @s SM_b_acct_no
scoreboard players operation SM_system SM_withdrawing = @s SM_withdrawing

execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run function finance:bank/operations/query
execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no if score SM_system SM_balance_most matches 0 if score SM_system SM_balance_least < SM_system SM_withdrawing run scoreboard players operation SM_system SM_withdrawing = SM_system SM_balance_least
execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run scoreboard players operation @s SM_bankwithdraw = SM_system SM_withdrawing

execute unless score WC_time WC_weekday matches 1..5 run tellraw @s [{"text":"[SloopBank] ","color":"yellow"},{"text":"Your withdrawal of ","color":"white"},{"text":"$","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_withdrawing"},"color":"light_purple"},{"text":" is on hold until the bank opens on Mondays-Fridays, 9AM-4PM.","color":"white"}]
execute if score WC_time WC_weekday matches 1..5 unless score WC_time WC_hours matches 9..15 run tellraw @s [{"text":"[SloopBank] ","color":"yellow"},{"text":"Your withdrawal of ","color":"white"},{"text":"$","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_withdrawing"},"color":"light_purple"},{"text":" is on hold until the bank opens on Mondays-Fridays, 9AM-4PM.","color":"white"}]

scoreboard players set @s SM_bankaction 0
tag @s add SM_pending_withdrawal
execute as @a[scores={SM_bankaction=4},limit=1] run function finance:bank/withdrawset_entity