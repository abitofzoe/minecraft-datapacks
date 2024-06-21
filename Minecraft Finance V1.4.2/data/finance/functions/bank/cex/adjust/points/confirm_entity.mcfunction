function finance:bank/operations/points/query

execute if score SM_system SM_pcex_moving matches ..-1 if score SM_system SM_balance_most matches 0 if score SM_system SM_balance_least < SM_system SM_pwithdrawing run scoreboard players operation SM_system SM_pwithdrawing = SM_system SM_balance_least
scoreboard players operation @s SM_pointwithdraw = SM_system SM_pwithdrawing
scoreboard players operation SM_system SM_pointwithdraw = @s SM_pointwithdraw

execute if score SM_system SM_pcex_moving matches ..-1 as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s ["",{"text":"[SloopExchange] ","color":"green"},{"text":"Transferring ","color":"white"},{"score":{"name":"SM_system","objective":"SM_pointwithdraw"},"color":"light_purple"},{"text":" Points","color":"yellow"},{"text":" from ","color":"white"},{"text":"bank account #","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_b_acct_no"},"color":"aqua"},{"text":" to ","color":"white"},{"text":"currency exchange account #","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_cex_account"},"color":"aqua"}]
execute if score SM_system SM_pcex_moving matches 1.. as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s ["",{"text":"[SloopExchange] ","color":"green"},{"text":"Transferring ","color":"white"},{"score":{"name":"SM_system","objective":"SM_pointwithdraw"},"color":"light_purple"},{"text":" Points","color":"yellow"},{"text":" to ","color":"white"},{"text":"bank account #","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_b_acct_no"},"color":"aqua"},{"text":" from ","color":"white"},{"text":"currency exchange account #","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_cex_account"},"color":"aqua"}]

scoreboard players operation SM_system SM_debit_least = SM_system SM_pointwithdraw
scoreboard players operation SM_system SM_credit_least = SM_system SM_pointwithdraw

execute if score SM_system SM_pcex_moving matches ..-1 run function finance:bank/operations/points/debit
execute if score SM_system SM_pcex_moving matches ..-1 as @e[type=armor_stand,tag=SM_broker_account] if score @s SM_cex_account = SM_system SM_cex_account run function finance:bank/operations/points/credit
execute if score SM_system SM_pcex_moving matches ..-1 run scoreboard players set @s SM_pointwithdraw 0
execute if score SM_system SM_pcex_moving matches 1.. run function finance:bank/operations/points/credit
execute if score SM_system SM_pcex_moving matches 1.. as @e[type=armor_stand,tag=SM_broker_account] if score @s SM_cex_account = SM_system SM_cex_account run function finance:bank/operations/points/debit
execute if score SM_system SM_pcex_moving matches 1.. run scoreboard players set @s SM_pointwithdraw 0