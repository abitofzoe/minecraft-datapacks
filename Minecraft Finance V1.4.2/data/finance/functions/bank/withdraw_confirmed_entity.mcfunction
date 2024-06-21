scoreboard players operation @s SM_b_acct_lg_cal = @s SM_bankwithdraw
scoreboard players set @s SM_b_acct_lg_ct 2

function finance:bank/log/record

function finance:bank/operations/query

scoreboard players set SM_system SM_skip_log 1

execute if score SM_system SM_check_eco matches 0 if score @s SM_bankwithdraw matches 100000.. run function finance:bank/withdraw_confirmed_entity_items_100000
execute if score SM_system SM_check_eco matches 0 if score @s SM_bankwithdraw matches 10000.. run function finance:bank/withdraw_confirmed_entity_items_10000
execute if score SM_system SM_check_eco matches 0 if score @s SM_bankwithdraw matches 1000.. run function finance:bank/withdraw_confirmed_entity_items_1000
execute if score SM_system SM_check_eco matches 0 if score @s SM_bankwithdraw matches 100.. run function finance:bank/withdraw_confirmed_entity_items_100
execute if score SM_system SM_check_eco matches 0 if score @s SM_bankwithdraw matches 10.. run function finance:bank/withdraw_confirmed_entity_items_10
execute if score SM_system SM_check_eco matches 0 if score @s SM_bankwithdraw matches 1.. run function finance:bank/withdraw_confirmed_entity_items_1

execute if score SM_system SM_check_eco matches 1 if score @s SM_bankwithdraw matches 100000.. run function finance:bank/ecosupport/withdraw_confirmed_entity_items_100000
execute if score SM_system SM_check_eco matches 1 if score @s SM_bankwithdraw matches 10000.. run function finance:bank/ecosupport/withdraw_confirmed_entity_items_10000
execute if score SM_system SM_check_eco matches 1 if score @s SM_bankwithdraw matches 1000.. run function finance:bank/ecosupport/withdraw_confirmed_entity_items_1000
execute if score SM_system SM_check_eco matches 1 if score @s SM_bankwithdraw matches 100.. run function finance:bank/ecosupport/withdraw_confirmed_entity_items_100
execute if score SM_system SM_check_eco matches 1 if score @s SM_bankwithdraw matches 10.. run function finance:bank/ecosupport/withdraw_confirmed_entity_items_10
execute if score SM_system SM_check_eco matches 1 if score @s SM_bankwithdraw matches 1.. run function finance:bank/ecosupport/withdraw_confirmed_entity_items_1