execute if score @s SM_pointwithdraw matches 10000000.. as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run give @s written_book{WithdrawPoint:10000000,display:{Name:"{\"text\":\"10000000 Point Withdrawal Slip\",\"color\":\"light_purple\"}"}}
execute if score @s SM_pointwithdraw matches 10000000.. run scoreboard players set SM_system SM_debit_least 10000000
execute if score @s SM_pointwithdraw matches 10000000.. run function finance:bank/operations/points/debit
execute if score @s SM_pointwithdraw matches 10000000.. run scoreboard players remove @s SM_pointwithdraw 10000000

execute if score @s SM_pointwithdraw matches 10000000.. run function finance:bank/points/withdraw_confirmed_entity_items_10000000