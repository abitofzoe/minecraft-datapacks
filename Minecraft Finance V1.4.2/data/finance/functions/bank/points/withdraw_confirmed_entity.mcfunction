function finance:bank/operations/points/query

execute if score SM_system SM_check_eco matches 0 if score @s SM_pointwithdraw matches 10000000.. run function finance:bank/points/withdraw_confirmed_entity_items_10000000
execute if score SM_system SM_check_eco matches 0 if score @s SM_pointwithdraw matches 1000000.. run function finance:bank/points/withdraw_confirmed_entity_items_1000000
execute if score SM_system SM_check_eco matches 0 if score @s SM_pointwithdraw matches 100000.. run function finance:bank/points/withdraw_confirmed_entity_items_100000
execute if score SM_system SM_check_eco matches 0 if score @s SM_pointwithdraw matches 10000.. run function finance:bank/points/withdraw_confirmed_entity_items_10000
execute if score SM_system SM_check_eco matches 0 if score @s SM_pointwithdraw matches 1000.. run function finance:bank/points/withdraw_confirmed_entity_items_1000
execute if score SM_system SM_check_eco matches 0 if score @s SM_pointwithdraw matches 100.. run function finance:bank/points/withdraw_confirmed_entity_items_100
execute if score SM_system SM_check_eco matches 0 if score @s SM_pointwithdraw matches 10.. run function finance:bank/points/withdraw_confirmed_entity_items_10
execute if score SM_system SM_check_eco matches 0 if score @s SM_pointwithdraw matches 1.. run function finance:bank/points/withdraw_confirmed_entity_items_1

execute if score SM_system SM_check_eco matches 1 if score @s SM_pointwithdraw matches 10000000.. run function finance:bank/ecosupport/points/withdraw_confirmed_entity_items_10000000
execute if score SM_system SM_check_eco matches 1 if score @s SM_pointwithdraw matches 1000000.. run function finance:bank/ecosupport/points/withdraw_confirmed_entity_items_1000000
execute if score SM_system SM_check_eco matches 1 if score @s SM_pointwithdraw matches 100000.. run function finance:bank/ecosupport/points/withdraw_confirmed_entity_items_100000
execute if score SM_system SM_check_eco matches 1 if score @s SM_pointwithdraw matches 10000.. run function finance:bank/ecosupport/points/withdraw_confirmed_entity_items_10000
execute if score SM_system SM_check_eco matches 1 if score @s SM_pointwithdraw matches 1000.. run function finance:bank/ecosupport/points/withdraw_confirmed_entity_items_1000
execute if score SM_system SM_check_eco matches 1 if score @s SM_pointwithdraw matches 100.. run function finance:bank/ecosupport/points/withdraw_confirmed_entity_items_100
execute if score SM_system SM_check_eco matches 1 if score @s SM_pointwithdraw matches 10.. run function finance:bank/ecosupport/points/withdraw_confirmed_entity_items_10
execute if score SM_system SM_check_eco matches 1 if score @s SM_pointwithdraw matches 1.. run function finance:bank/ecosupport/points/withdraw_confirmed_entity_items_1