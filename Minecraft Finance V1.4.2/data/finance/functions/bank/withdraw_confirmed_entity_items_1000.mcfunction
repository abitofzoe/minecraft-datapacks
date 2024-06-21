execute if score @s SM_bankwithdraw matches 1000.. as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run give @s written_book{Withdraw:1000,display:{Name:"{\"text\":\"$1000 Withdrawal Slip\",\"color\":\"light_purple\"}"}}
execute if score @s SM_bankwithdraw matches 1000.. run scoreboard players set SM_system SM_debit_least 1000
execute if score @s SM_bankwithdraw matches 1000.. run function finance:bank/operations/debit
execute if score @s SM_bankwithdraw matches 1000.. run scoreboard players remove @s SM_bankwithdraw 1000

execute if score @s SM_bankwithdraw matches 1000.. run function finance:bank/withdraw_confirmed_entity_items_1000