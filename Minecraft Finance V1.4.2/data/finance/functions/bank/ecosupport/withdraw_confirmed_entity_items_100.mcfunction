execute if score @s SM_bankwithdraw matches 100.. as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run eco give @s 100
execute if score @s SM_bankwithdraw matches 100.. run scoreboard players set SM_system SM_debit_least 100
execute if score @s SM_bankwithdraw matches 100.. run function finance:bank/operations/debit
execute if score @s SM_bankwithdraw matches 100.. run scoreboard players remove @s SM_bankwithdraw 100

execute if score @s SM_bankwithdraw matches 100.. run function finance:bank/ecosupport/withdraw_confirmed_entity_items_100