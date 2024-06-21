execute if score @s SM_pointwithdraw matches 100.. as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run give @s written_book{WithdrawPoint:100,display:{Name:"{\"text\":\"100 Point Withdrawal Slip\",\"color\":\"light_purple\"}"}}
execute if score @s SM_pointwithdraw matches 100.. run scoreboard players set SM_system SM_debit_least 100
execute if score @s SM_pointwithdraw matches 100.. run function finance:bank/operations/points/debit
execute if score @s SM_pointwithdraw matches 100.. run scoreboard players remove @s SM_pointwithdraw 100

execute if score @s SM_pointwithdraw matches 100.. run function finance:bank/points/withdraw_confirmed_entity_items_100