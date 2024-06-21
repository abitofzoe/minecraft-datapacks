execute if score @s SM_pointwithdraw matches 10000.. as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run points give @s 10000
execute if score @s SM_pointwithdraw matches 10000.. run scoreboard players set SM_system SM_debit_least 10000
execute if score @s SM_pointwithdraw matches 10000.. run function finance:bank/operations/points/debit
execute if score @s SM_pointwithdraw matches 10000.. run scoreboard players remove @s SM_pointwithdraw 10000

execute if score @s SM_pointwithdraw matches 10000.. run function finance:bank/ecosupport/points/withdraw_confirmed_entity_items_10000