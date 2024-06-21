tellraw @s ["",{"text":"[SloopBank] ","color":"green"},{"text":"A deposit of ","color":"white"},{"text":"$","color":"yellow"},{"score":{"name":"@s","objective":"SM_d_total"},"color":"light_purple"},{"text":" was added into your account. Thank you for banking with ","color":"white"},{"text":"SloopBank","color":"green"},{"text":"!","color":"white"}]
scoreboard players operation SM_system SM_b_acct_no = @s SM_b_acct_no

execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run function finance:bank/completedeposit_entity

scoreboard players set @s SM_d_total 0

tag @s add SM_deposit_complete
execute as @a[scores={SM_d_total=1..},tag=!SM_deposit_complete,limit=1] if score WC_time WC_weekday matches 1..5 if score WC_time WC_hours matches 9..15 run function finance:bank/completedeposit 