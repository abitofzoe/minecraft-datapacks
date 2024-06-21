execute if score @s SM_pointwithdraw matches 1.. as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run give @s written_book{WithdrawPoint:1,display:{Name:"{\"text\":\"1 Point Withdrawal Slip\",\"color\":\"light_purple\"}"}}
execute if score @s SM_pointwithdraw matches 1.. run scoreboard players set SM_system SM_debit_least 1
execute if score @s SM_pointwithdraw matches 1.. run function finance:bank/operations/points/debit
execute if score @s SM_pointwithdraw matches 1.. run scoreboard players remove @s SM_pointwithdraw 1

execute if score @s SM_pointwithdraw matches 1.. run function finance:bank/points/withdraw_confirmed_entity_items_1