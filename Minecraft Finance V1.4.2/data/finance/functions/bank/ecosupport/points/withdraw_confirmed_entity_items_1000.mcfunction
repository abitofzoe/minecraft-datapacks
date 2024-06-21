execute if score @s SM_pointwithdraw matches 1000.. as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run points give @s 1000
execute if score @s SM_pointwithdraw matches 1000.. run scoreboard players set SM_system SM_debit_least 1000
execute if score @s SM_pointwithdraw matches 1000.. run function finance:bank/operations/points/debit
execute if score @s SM_pointwithdraw matches 1000.. run scoreboard players remove @s SM_pointwithdraw 1000

execute if score @s SM_pointwithdraw matches 1000.. run function finance:bank/ecosupport/points/withdraw_confirmed_entity_items_1000