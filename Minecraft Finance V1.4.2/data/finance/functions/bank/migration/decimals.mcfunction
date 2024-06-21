data modify entity @s ArmorItems[0] merge value {id:"minecraft:gold_block",Count:1,tag:{SloopBank:[{IsBank:1,BalanceMost:0l,BalanceLeast:0l,BalanceDec:0l}]}}
execute store result entity @s ArmorItems[0].tag.SloopBank[0].BalanceLeast long 1 run scoreboard players get @s SM_balance_least
scoreboard players set @s SM_b_acct_lg_prd 0
scoreboard players set @s SM_b_acct_lg_prm 0
scoreboard players operation @s SM_b_acct_lg_prl = @s SM_balance_least
scoreboard players set @s SM_balance_least 0
tag @s add SM_migrated_decimals

scoreboard players set @s SM_b_acct_lg_xt 0
scoreboard players set @s SM_b_acct_lg_xal 0
scoreboard players set @s SM_b_acct_lg_xam 0
scoreboard players set @s SM_b_acct_lg_xad 0

scoreboard players set @s SM_b_acct_lg_9t 0
scoreboard players set @s SM_b_acct_lg_8t 0
scoreboard players set @s SM_b_acct_lg_7t 0
scoreboard players set @s SM_b_acct_lg_6t 0
scoreboard players set @s SM_b_acct_lg_5t 0
scoreboard players set @s SM_b_acct_lg_4t 0
scoreboard players set @s SM_b_acct_lg_3t 0
scoreboard players set @s SM_b_acct_lg_2t 0
scoreboard players set @s SM_b_acct_lg_1t 0

scoreboard players set @s SM_b_acct_lg_9al 0
scoreboard players set @s SM_b_acct_lg_9am 0
scoreboard players set @s SM_b_acct_lg_9ad 0
scoreboard players set @s SM_b_acct_lg_8al 0
scoreboard players set @s SM_b_acct_lg_8am 0
scoreboard players set @s SM_b_acct_lg_8ad 0
scoreboard players set @s SM_b_acct_lg_7al 0
scoreboard players set @s SM_b_acct_lg_7am 0
scoreboard players set @s SM_b_acct_lg_7ad 0
scoreboard players set @s SM_b_acct_lg_6al 0
scoreboard players set @s SM_b_acct_lg_6am 0
scoreboard players set @s SM_b_acct_lg_6ad 0
scoreboard players set @s SM_b_acct_lg_5al 0
scoreboard players set @s SM_b_acct_lg_5am 0
scoreboard players set @s SM_b_acct_lg_5ad 0
scoreboard players set @s SM_b_acct_lg_4al 0
scoreboard players set @s SM_b_acct_lg_4am 0
scoreboard players set @s SM_b_acct_lg_4ad 0
scoreboard players set @s SM_b_acct_lg_3al 0
scoreboard players set @s SM_b_acct_lg_3am 0
scoreboard players set @s SM_b_acct_lg_3ad 0
scoreboard players set @s SM_b_acct_lg_2al 0
scoreboard players set @s SM_b_acct_lg_2am 0
scoreboard players set @s SM_b_acct_lg_2ad 0
scoreboard players set @s SM_b_acct_lg_1al 0
scoreboard players set @s SM_b_acct_lg_1am 0
scoreboard players set @s SM_b_acct_lg_1ad 0

