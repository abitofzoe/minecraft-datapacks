function finance:bank/operations/query

execute if score SM_system SM_cex_moving matches ..-1 if score SM_system SM_balance_most matches 0 if score SM_system SM_balance_least < SM_system SM_withdrawing run scoreboard players operation SM_system SM_withdrawing = SM_system SM_balance_least
scoreboard players operation @s SM_bankwithdraw = SM_system SM_withdrawing
scoreboard players operation SM_system SM_bankwithdraw = @s SM_bankwithdraw

scoreboard players operation @s SM_b_acct_lg_cal = @s SM_bankwithdraw

function finance:bank/log/record

execute if score SM_system SM_cex_moving matches ..-1 as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s ["",{"text":"[SloopExchange] ","color":"green"},{"text":"Transferring ","color":"white"},{"text":"$","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_bankwithdraw"},"color":"light_purple"},{"text":" from ","color":"white"},{"text":"bank account #","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_b_acct_no"},"color":"aqua"},{"text":" to ","color":"white"},{"text":"currency exchange account #","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_cex_account"},"color":"aqua"}]
execute if score SM_system SM_cex_moving matches 1.. as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s ["",{"text":"[SloopExchange] ","color":"green"},{"text":"Transferring ","color":"white"},{"text":"$","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_bankwithdraw"},"color":"light_purple"},{"text":" to ","color":"white"},{"text":"bank account #","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_b_acct_no"},"color":"aqua"},{"text":" from ","color":"white"},{"text":"currency exchange account #","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_cex_account"},"color":"aqua"}]

scoreboard players set SM_system SM_skip_log 1
scoreboard players operation SM_system SM_debit_least = SM_system SM_bankwithdraw
scoreboard players operation SM_system SM_credit_least = SM_system SM_bankwithdraw
execute if score SM_system SM_cex_moving matches ..-1 run function finance:bank/operations/debit
execute if score SM_system SM_cex_moving matches ..-1 as @e[type=armor_stand,tag=SM_broker_account] if score @s SM_cex_account = SM_system SM_cex_account run function finance:bank/operations/credit
execute if score SM_system SM_cex_moving matches ..-1 run scoreboard players set @s SM_bankwithdraw 0
execute if score SM_system SM_cex_moving matches 1.. run function finance:bank/operations/credit
execute if score SM_system SM_cex_moving matches 1.. as @e[type=armor_stand,tag=SM_broker_account] if score @s SM_cex_account = SM_system SM_cex_account run function finance:bank/operations/debit
execute if score SM_system SM_cex_moving matches 1.. run scoreboard players set @s SM_bankwithdraw 0