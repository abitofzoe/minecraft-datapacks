tellraw @s ["",{"text":"[SloopBank] ","color":"green"},{"text":"Attempting to withdraw ","color":"white"},{"text":"$","color":"yellow"},{"score":{"name":"@s","objective":"SM_withdrawing"},"color":"light_purple"},{"text":" from bank account #","color":"white"},{"score":{"name":"@s","objective":"SM_b_acct_no"},"color":"aqua"}]
scoreboard players set @s SM_withdrawing 0
tag @s remove SM_pending_withdrawal

scoreboard players operation SM_system SM_b_acct_no = @s SM_b_acct_no

execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run function finance:bank/withdraw_confirmed_entity

execute as @a[tag=SM_pending_withdrawal,limit=1] if score @s SM_withdrawing matches 1.. if score WC_time WC_weekday matches 1..5 if score WC_time WC_hours matches 9..15 run function finance:bank/withdraw_confirmed