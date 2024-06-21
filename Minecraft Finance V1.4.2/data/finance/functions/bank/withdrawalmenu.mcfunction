execute unless score @s SM_withdraw_pend matches 1 run scoreboard players operation @s SM_withdrawing += @s SM_withdraw_pend
execute if score @s SM_withdrawing matches ..-1 run scoreboard players set @s SM_withdrawing 0

scoreboard players operation SM_system SM_b_acct_no = @s SM_b_acct_no

execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run function finance:bank/operations/query

execute if score SM_system SM_balance_most matches 0 if score @s SM_withdrawing > SM_system SM_balance_least run scoreboard players operation @s SM_withdrawing = SM_system SM_balance_least
execute if score @s SM_withdrawing matches 10000000.. run scoreboard players set @s SM_withdrawing 9999999

execute if score @s SM_withdraw_pend matches 1 at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1 1
execute unless score @s SM_withdraw_pend matches 1 at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2 1

scoreboard players set @s SM_withdraw_pend 0

#scoreboard players operation @s SM_balance_pend = @s SM_balance_least
#scoreboard players operation @s SM_balance_pend -= @s SM_bankwithdraw

execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s {"text":"- - - [Withdrawing Cash] - - -","color":"yellow"}
execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s {"text":"- - - [SloopBank Online Banking] - - -","color":"green"}
execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run function finance:bank/parser/available_balance
execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s [{"text":" ","color":"red","clickEvent":{"action":"run_command","value":"/trigger SM_withdraw_pend set -2147483648"}},{"text":"[-----] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger SM_withdraw_pend add -100000"}},{"text":"[----] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger SM_withdraw_pend add -10000"}},{"text":"[---] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger SM_withdraw_pend add -1000"}},{"text":"[--] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger SM_withdraw_pend add -100"}},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/trigger SM_withdraw_pend add -10"}},{"text":" [","color":"white"},{"text":"$","color":"yellow"},{"score":{"name":"@s","objective":"SM_withdrawing"},"color":"light_purple"},{"text":".00","color":"light_purple"},{"text":"] ","color":"white"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger SM_withdraw_pend add 10"}},{"text":" [++]","color":"green","clickEvent":{"action":"run_command","value":"/trigger SM_withdraw_pend add 100"}},{"text":" [+++]","color":"green","clickEvent":{"action":"run_command","value":"/trigger SM_withdraw_pend add 1000"}},{"text":" [++++]","color":"green","clickEvent":{"action":"run_command","value":"/trigger SM_withdraw_pend add 10000"}},{"text":" [+++++]","color":"green","clickEvent":{"action":"run_command","value":"/trigger SM_withdraw_pend add 100000"}}]
execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s {"text":" "}
execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s {"text":"[!] Confirm","color":"green","clickEvent":{"action":"run_command","value":"/trigger SM_bankaction set 4"}}
execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s {"text":"[!] Cancel","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger SM_bankaction set 5"}}

scoreboard players set @s SM_bankaction 0
execute as @a[scores={SM_bankaction=8},limit=1] unless score @s SM_withdraw_pend matches 0 run function finance:bank/withdrawalmenu

