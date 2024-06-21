scoreboard players operation SM_system SM_b_acct_no = @s SM_b_acct_no
scoreboard players operation SM_system SM_cex_account = @s SM_cex_account
execute unless score @s SM_pcex_move matches -2147483648 run scoreboard players operation @s SM_pcex_moving += @s SM_pcex_move

execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run function finance:bank/operations/points/query

execute if score SM_system SM_balance_most matches 0 if score @s SM_pcex_moving < SM_system SM_balance_pendi run scoreboard players operation @s SM_pcex_moving = SM_system SM_balance_pendi
execute if score @s SM_pcex_moving matches ..-10000000 run scoreboard players set @s SM_pcex_moving -9999999

execute as @e[type=armor_stand,tag=SM_broker_account] if score @s SM_cex_account = SM_system SM_cex_account run function finance:bank/operations/points/query

execute if score SM_system SM_balance_most matches 0 if score @s SM_pcex_moving > SM_system SM_balance_pend run scoreboard players operation @s SM_pcex_moving = SM_system SM_balance_pend
execute if score @s SM_pcex_moving matches 10000000.. run scoreboard players set @s SM_pcex_moving 9999999

scoreboard players operation SM_system SM_pcex_moving = @s SM_pcex_moving

scoreboard players set @s SM_pcex_move 0

tellraw @s {"text":"- - - [SloopExchange Online] - - -","color":"green"}
execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run function finance:bank/parser/points/available_balance
tellraw @s ["",{"text":"[<——]","color":"green","clickEvent":{"action":"run_command","value":"/trigger SM_pcex_move add 10000"},"hoverEvent":{"action":"show_text","contents":[{"text":"Cash out to ","color":"light_purple"},{"text":"bank account","color":"yellow"}]}},{"text":" [<—]","color":"green","clickEvent":{"action":"run_command","value":"/trigger SM_pcex_move add 1000"},"hoverEvent":{"action":"show_text","contents":[{"text":"Cash out to ","color":"light_purple"},{"text":"bank account","color":"yellow"}]}},{"text":" [<]","color":"green","clickEvent":{"action":"run_command","value":"/trigger SM_pcex_move add 100"},"hoverEvent":{"action":"show_text","contents":[{"text":"Cash out to ","color":"light_purple"},{"text":"bank account","color":"yellow"}]}},{"text":" | [X] | ","color":"red","clickEvent":{"action":"run_command","value":"/trigger SM_bankaction set 15"},"hoverEvent":{"action":"show_text","contents":[{"text":"Cancel.","color":"light_purple"}]}},{"text":"[>] ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger SM_pcex_move add -100"},"hoverEvent":{"action":"show_text","contents":[{"text":"Cash in from ","color":"light_purple"},{"text":"bank account","color":"yellow"}]}},{"text":"[—>] ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger SM_pcex_move add -1000"},"hoverEvent":{"action":"show_text","contents":[{"text":"Cash in from ","color":"light_purple"},{"text":"bank account","color":"yellow"}]}},{"text":"[——>] ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger SM_pcex_move add -10000"},"hoverEvent":{"action":"show_text","contents":[{"text":"Cash in from ","color":"light_purple"},{"text":"bank account","color":"yellow"}]}}]
scoreboard players set SM_system SM_flag 1
execute as @e[type=armor_stand,tag=SM_broker_account] if score @s SM_cex_account = SM_system SM_cex_account run function finance:bank/cex/parser/points/buying_power

playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2 1

tellraw @s {"text":"[!] Confirm","color":"green","clickEvent":{"action":"run_command","value":"/trigger SM_bankaction set 17"}}
tellraw @s {"text":"[!] Cancel","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger SM_bankaction set 15"}}

scoreboard players set @s SM_bankaction 0
execute as @a[scores={SM_bankaction=16},limit=1] unless score @s SM_pcex_move matches 0 run function finance:bank/cex/adjust/points/preview

