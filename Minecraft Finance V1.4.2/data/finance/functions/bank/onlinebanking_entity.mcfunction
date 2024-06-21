execute as @a if score @s SM_bankaction matches 1 if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s {"text":"- - - [SloopBank Online Banking] - - -","color":"green"}
execute as @a if score @s SM_bankaction matches 2 if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s {"text":"- - - [SloopBank Mobile Banking] - - -","color":"green"}

function finance:bank/parser/available_balance
execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no if score @s SM_bankaction matches 2 run tellraw @s [{"text":"   - "},{"text":"Balance available for use. Reduced by pending withdrawals.","color":"yellow"}]

function finance:bank/parser/current_balance
execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no if score @s SM_bankaction matches 2 run tellraw @s [{"text":"   - "},{"text":"Total balance on account. Includes pending deposits and withdrawals.","color":"yellow"}]

function finance:bank/parser/points/current_balance
execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no if score @s SM_bankaction matches 2 run tellraw @s [{"text":"   - "},{"text":"Total points balance on account. Includes pending deposits and withdrawals.","color":"yellow"}]

execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no if score @s SM_bankaction matches 1 run tellraw @s {"text":"[!] Withdraw Cash","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger SM_withdraw_pend set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Opens the cash withdrawal menu.","color":"green"}]}}
execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no if score @s SM_bankaction matches 2 run tellraw @s [{"text":"   - "},{"text":"/cwithdraw ","color":"light_purple"},{"text":"<amount>","color":"gray"},{"text":" | Withdraws ","color":"white"},{"text":"<amount>","color":"yellow"},{"text":" at the soonest possible time.","color":"white"}]

execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no if score @s SM_bankaction matches 1 run tellraw @s {"text":"[!] Withdraw Points","color":"green","clickEvent":{"action":"run_command","value":"/trigger SM_pwithdraw_pnd set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Opens the points withdrawal menu.","color":"green"}]}}
execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no if score @s SM_bankaction matches 2 run tellraw @s [{"text":"   - "},{"text":"/pwithdraw ","color":"light_purple"},{"text":"<amount>","color":"gray"},{"text":" | Withdraws ","color":"white"},{"text":"<amount>","color":"yellow"},{"text":" points at the soonest possible time.","color":"white"}]

execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no if score @s SM_bankaction matches 1 run tellraw @s {"text":"[!] Transaction Log","color":"gray","clickEvent":{"action":"run_command","value":"/trigger SM_bankaction set 6"},"hoverEvent":{"action":"show_text","contents":[{"text":"Opens the transaction log.","color":"white"}]}}
execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no if score @s SM_bankaction matches 2 run tellraw @s [{"text":"   - "},{"text":"/tlog","color":"light_purple"},{"text":" | Opens the transaction log.","color":"white"}]

execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no if score @s SM_bankaction matches 1 run tellraw @s {"text":"[!] Currency Exchange","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger SM_bankaction set 11"},"hoverEvent":{"action":"show_text","contents":[{"text":"Opens the currency exchange menu.","color":"white"}]}}
execute as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no if score @s SM_bankaction matches 2 run tellraw @s [{"text":"   - "},{"text":"/cexmenu","color":"light_purple"},{"text":" | Opens the currency exchange menu.","color":"white"}]

#/cexmenu
##/trigger SM_bankaction set 12

#/cexin <amount>
##/trigger SM_bankaction set 14
##/trigger SM_cex_moving set <amount>
##/trigger SM_cex_inv set 1

#/cexout <amount>
##/trigger SM_bankaction set 14
##/trigger SM_cex_moving set <amount>

#/pcexin <amount>
##/trigger SM_bankaction set 17
##/trigger SM_pcex_moving set <amount>
##/trigger SM_pcex_inv set 1

#/pcexout <amount>
##/trigger SM_bankaction set 17
##/trigger SM_pcex_moving set <amount>

function finance:bank/operations/query
function finance:bank/operations/points/query

execute unless score @s SM_bankwithdraw matches 0 if score @s SM_pointwithdraw matches 0 as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no if score @s SM_bankaction matches 1 run tellraw @s {"text":"[*] Cancel Withdrawal","color":"red","clickEvent":{"action":"run_command","value":"/trigger SM_bankaction set 5"},"hoverEvent":{"action":"show_text","contents":[{"text":"$","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_bankwithdraw"},"color":"light_purple"},{"text":" will be withdrawn at the soonest possible time.","color":"white"}]}}
execute if score @s SM_bankwithdraw matches 0 unless score @s SM_pointwithdraw matches 0 as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no if score @s SM_bankaction matches 1 run tellraw @s {"text":"[*] Cancel Withdrawal","color":"red","clickEvent":{"action":"run_command","value":"/trigger SM_bankaction set 5"},"hoverEvent":{"action":"show_text","contents":[{"score":{"name":"SM_system","objective":"SM_pointwithdraw"},"color":"light_purple"},{"text":" Points","color":"yellow"},{"text":" will be withdrawn at the soonest possible time.","color":"white"}]}}
execute unless score @s SM_bankwithdraw matches 0 unless score @s SM_pointwithdraw matches 0 as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no if score @s SM_bankaction matches 1 run tellraw @s {"text":"[*] Cancel Withdrawal","color":"red","clickEvent":{"action":"run_command","value":"/trigger SM_bankaction set 5"},"hoverEvent":{"action":"show_text","contents":[{"text":"$","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_bankwithdraw"},"color":"light_purple"},{"text":" and ","color":"white"},{"score":{"name":"SM_system","objective":"SM_pointwithdraw"},"color":"light_purple"},{"text":" Points","color":"yellow"},{"text":" will be withdrawn at the soonest possible time.","color":"white"}]}}

execute unless score @s SM_bankwithdraw matches 0 if score @s SM_pointwithdraw matches 0 as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no if score @s SM_bankaction matches 2 run tellraw @s [{"text":"   - "},{"text":"/wcancel","color":"light_purple"},{"text":" | Cancels the pending withdrawal of ","color":"white"},{"text":"$","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_bankwithdraw"},"color":"light_purple"},{"text":".","color":"white"}]
execute if score @s SM_bankwithdraw matches 0 unless score @s SM_pointwithdraw matches 0 as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no if score @s SM_bankaction matches 2 run tellraw @s [{"text":"   - "},{"text":"/wcancel","color":"light_purple"},{"text":" | Cancels the pending withdrawal of ","color":"white"},{"score":{"name":"SM_system","objective":"SM_bankwithdraw"},"color":"light_purple"},{"text":" Points","color":"yellow"},{"text":".","color":"white"}]
execute unless score @s SM_bankwithdraw matches 0 unless score @s SM_pointwithdraw matches 0 as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no if score @s SM_bankaction matches 2 run tellraw @s [{"text":"   - "},{"text":"/wcancel","color":"light_purple"},{"text":" | Cancels the pending withdrawal of ","color":"white"},{"text":"$","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_bankwithdraw"},"color":"light_purple"},{"text":" and ","color":"white"},{"score":{"name":"SM_system","objective":"SM_pointwithdraw"},"color":"light_purple"},{"text":" Points","color":"yellow"},{"text":".","color":"white"}]


