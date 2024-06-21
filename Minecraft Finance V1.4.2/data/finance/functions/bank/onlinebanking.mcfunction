scoreboard players set SM_system SM_cex_moving 0
scoreboard players set @s SM_withdrawing 0
scoreboard players set @s SM_pwithdrawing 0
scoreboard players set SM_system SM_cex_moving 0
scoreboard players set @s SM_cex_moving 0
scoreboard players set SM_system SM_pcex_moving 0
scoreboard players set @s SM_pcex_moving 0

scoreboard players operation SM_system SM_b_acct_no = @s SM_b_acct_no
tellraw @s ["",{"text":"[SloopBank] ","color":"yellow"},{"text":"Opening bank account #","color":"white"},{"score":{"name":"SM_system","objective":"SM_b_acct_no"},"color":"light_purple"}]

execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run function finance:bank/onlinebanking_entity

scoreboard players set @s SM_bankaction 0
execute as @a[scores={SM_bankaction=1..2},limit=1] run function finance:bank/onlinebanking