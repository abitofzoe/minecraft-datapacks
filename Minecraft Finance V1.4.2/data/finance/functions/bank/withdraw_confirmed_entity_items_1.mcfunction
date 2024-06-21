execute if score @s SM_bankwithdraw matches 1.. as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run give @s written_book{Withdraw:1,display:{Name:"{\"text\":\"$1 Withdrawal Slip\",\"color\":\"light_purple\"}"}}
execute if score @s SM_bankwithdraw matches 1.. run scoreboard players set SM_system SM_debit_least 1
execute if score @s SM_bankwithdraw matches 1.. run function finance:bank/operations/debit
execute if score @s SM_bankwithdraw matches 1.. run scoreboard players remove @s SM_bankwithdraw 1

execute if score @s SM_bankwithdraw matches 1.. run function finance:bank/withdraw_confirmed_entity_items_1