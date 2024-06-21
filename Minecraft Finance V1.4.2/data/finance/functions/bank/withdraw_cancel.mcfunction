tellraw @s {"text":"Withdrawal cancelled.","color":"gold"}
scoreboard players set @s SM_withdraw_pend 0
scoreboard players set @s SM_pwithdraw_pnd 0
scoreboard players set @s SM_withdrawing 0
scoreboard players set @s SM_pointwithdraw 0
scoreboard players set @s SM_bankwithdraw 0
scoreboard players set @s SM_bankaction 0

scoreboard players operation SM_system SM_b_acct_no = @s SM_b_acct_no

execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run scoreboard players set @s SM_bankwithdraw 0
execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run scoreboard players set @s SM_pointwithdraw 0

execute as @a[scores={SM_bankaction=5},limit=1] run function finance:bank/withdraw_cancel 