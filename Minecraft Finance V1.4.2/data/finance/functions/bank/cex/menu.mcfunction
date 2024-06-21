execute if score @s SM_cex_account matches 0 run function finance:bank/cex/create
scoreboard players operation SM_system SM_cex_account = @s SM_cex_account
scoreboard players operation SM_system SM_b_acct_no = @s SM_b_acct_no

scoreboard players set SM_system SM_cex_moving 0
scoreboard players set @s SM_cex_moving 0
scoreboard players set SM_system SM_pcex_moving 0
scoreboard players set @s SM_pcex_moving 0

tellraw @s ["",{"text":"[SloopBank] ","color":"yellow"},{"text":"Opening brokerage account #","color":"white"},{"score":{"name":"SM_system","objective":"SM_cex_account"},"color":"light_purple"}]

execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no as @e[type=armor_stand,tag=SM_broker_account] if score @s SM_cex_account = SM_system SM_cex_account run function finance:bank/cex/menu_entity

scoreboard players set @s SM_bankaction 0
execute as @a[scores={SM_bankaction=11..12},limit=1] run function finance:bank/cex/menu