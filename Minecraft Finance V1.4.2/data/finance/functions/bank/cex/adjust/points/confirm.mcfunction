scoreboard players operation SM_system SM_b_acct_no = @s SM_b_acct_no
scoreboard players operation SM_system SM_cex_account = @s SM_cex_account

execute if score @s SM_pcex_inv matches 1 run scoreboard players operation @s SM_pcex_moving *= SM_system SM_const_inv

execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run function finance:bank/operations/points/query

execute if score SM_system SM_balance_most matches 0 if score @s SM_pcex_moving < SM_system SM_balance_pendi run scoreboard players operation @s SM_pcex_moving = SM_system SM_balance_pendi
execute if score @s SM_pcex_moving matches ..-10000000 run scoreboard players set @s SM_pcex_moving -9999999

execute as @e[type=armor_stand,tag=SM_broker_account] if score @s SM_cex_account = SM_system SM_cex_account run function finance:bank/operations/points/query

execute if score SM_system SM_balance_most matches 0 if score @s SM_pcex_moving > SM_system SM_balance_pend run scoreboard players operation @s SM_pcex_moving = SM_system SM_balance_pend
execute if score @s SM_pcex_moving matches 10000000.. run scoreboard players set @s SM_pcex_moving 9999999

scoreboard players operation SM_system SM_pcex_moving = @s SM_pcex_moving

#cash in
scoreboard players operation SM_system SM_pwithdrawing = SM_system SM_pcex_moving
execute if score SM_system SM_pcex_moving matches ..-1 run scoreboard players operation SM_system SM_pwithdrawing *= SM_system SM_const_inv
execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run function finance:bank/cex/adjust/points/confirm_entity

scoreboard players set @s SM_pcex_move 0
scoreboard players set @s SM_pcex_moving 0

scoreboard players set @s SM_bankaction 0
execute as @a[scores={SM_bankaction=17},limit=1] run function finance:bank/cex/adjust/points/confirm