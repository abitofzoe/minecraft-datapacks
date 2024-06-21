scoreboard players operation SM_system SM_b_acct_no = @s SM_b_acct_no
scoreboard players operation SM_system SM_cex_account = @s SM_cex_account

execute if score @s SM_cex_inv matches 1 run scoreboard players operation @s SM_cex_moving *= SM_system SM_const_inv

execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run function finance:bank/operations/query

execute if score @s SM_cex_moving < SM_system SM_balance_pendi run scoreboard players operation @s SM_cex_moving = SM_system SM_balance_pendi
execute if score @s SM_cex_moving matches ..-10000000 run scoreboard players set @s SM_cex_moving -9999999

execute as @e[type=armor_stand,tag=SM_broker_account] if score @s SM_cex_account = SM_system SM_cex_account run function finance:bank/operations/query

execute if score @s SM_cex_moving > SM_system SM_balance_pend run scoreboard players operation @s SM_cex_moving = SM_system SM_balance_pend
execute if score @s SM_cex_moving matches 10000000.. run scoreboard players set @s SM_cex_moving 9999999

scoreboard players operation SM_system SM_cex_moving = @s SM_cex_moving

#cash in
scoreboard players operation SM_system SM_withdrawing = SM_system SM_cex_moving
execute if score SM_system SM_cex_moving matches ..-1 run scoreboard players operation SM_system SM_withdrawing *= SM_system SM_const_inv
execute if score SM_system SM_cex_moving matches ..-1 as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run scoreboard players set @s SM_b_acct_lg_ct 3
execute if score SM_system SM_cex_moving matches 1.. as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run scoreboard players set @s SM_b_acct_lg_ct 4
execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run function finance:bank/cex/adjust/confirm_entity

#cash out
#execute if score SM_system SM_cex_moving matches 1.. run 

scoreboard players set @s SM_cex_move 0
scoreboard players set @s SM_cex_moving 0

scoreboard players set @s SM_bankaction 0
execute as @a[scores={SM_bankaction=14},limit=1] run function finance:bank/cex/adjust/confirm