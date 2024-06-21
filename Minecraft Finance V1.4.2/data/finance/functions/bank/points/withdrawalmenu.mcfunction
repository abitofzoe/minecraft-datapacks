execute unless score @s SM_pwithdraw_pnd matches 1 run scoreboard players operation @s SM_pointwithdraw += @s SM_pwithdraw_pnd
execute if score @s SM_pointwithdraw matches ..-1 run scoreboard players set @s SM_pointwithdraw 0

scoreboard players operation SM_system SM_b_acct_no = @s SM_b_acct_no

execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run function finance:bank/operations/points/query

execute if score SM_system SM_balance_most matches 0 if score @s SM_pointwithdraw > SM_system SM_balance_least run scoreboard players operation @s SM_pointwithdraw = SM_system SM_balance_least
execute if score @s SM_pointwithdraw matches 10000000.. run scoreboard players set @s SM_pointwithdraw 9999999

execute if score @s SM_pwithdraw_pnd matches 1 at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1 1
execute unless score @s SM_pwithdraw_pnd matches 1 at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2 1

scoreboard players set @s SM_pwithdraw_pnd 0

execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s {"text":"- - - [Withdrawing Points] - - -","color":"yellow"}
execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s {"text":"- - - [SloopBank Online Banking] - - -","color":"green"}
execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run function finance:bank/parser/points/available_balance
execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s [{"text":" ","color":"red","clickEvent":{"action":"run_command","value":"/trigger SM_pwithdraw_pnd set -2147483648"}},{"text":"[-----] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger SM_pwithdraw_pnd add -10000000"}},{"text":"[----] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger SM_pwithdraw_pnd add -1000000"}},{"text":"[---] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger SM_pwithdraw_pnd add -100000"}},{"text":"[--] ","color":"red","clickEvent":{"action":"run_command","value":"/trigger SM_pwithdraw_pnd add -10000"}},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/trigger SM_pwithdraw_pnd add -1000"}},{"text":" [","color":"white"},{"score":{"name":"@s","objective":"SM_pointwithdraw"},"color":"light_purple"},{"text":" Points","color":"yellow"},{"text":"] ","color":"white"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger SM_pwithdraw_pnd add 1000"}},{"text":" [++]","color":"green","clickEvent":{"action":"run_command","value":"/trigger SM_pwithdraw_pnd add 10000"}},{"text":" [+++]","color":"green","clickEvent":{"action":"run_command","value":"/trigger SM_pwithdraw_pnd add 100000"}},{"text":" [++++]","color":"green","clickEvent":{"action":"run_command","value":"/trigger SM_pwithdraw_pnd add 1000000"}},{"text":" [+++++]","color":"green","clickEvent":{"action":"run_command","value":"/trigger SM_pwithdraw_pnd add 10000000"}}]
execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s {"text":" "}
execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s {"text":"[!] Confirm","color":"green","clickEvent":{"action":"run_command","value":"/trigger SM_bankaction set 10"}}
execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s {"text":"[!] Cancel","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger SM_bankaction set 5"}}

scoreboard players set @s SM_bankaction 0
execute as @a[scores={SM_bankaction=9},limit=1] unless score @s SM_pwithdraw_pnd matches 0 run function finance:bank/points/withdrawalmenu

