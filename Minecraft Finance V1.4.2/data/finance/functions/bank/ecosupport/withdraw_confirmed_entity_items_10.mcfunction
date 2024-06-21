execute if score @s SM_bankwithdraw matches 10.. as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run eco give @s 10
execute if score @s SM_bankwithdraw matches 10.. run scoreboard players set SM_system SM_debit_least 10
execute if score @s SM_bankwithdraw matches 10.. run function finance:bank/operations/debit
execute if score @s SM_bankwithdraw matches 10.. run scoreboard players remove @s SM_bankwithdraw 10

execute if score @s SM_bankwithdraw matches 10.. run function finance:bank/ecosupport/withdraw_confirmed_entity_items_10