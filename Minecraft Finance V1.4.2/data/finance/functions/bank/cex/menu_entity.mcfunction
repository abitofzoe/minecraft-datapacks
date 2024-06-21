execute as @a if score @s SM_bankaction matches 11 if score @s SM_cex_account = SM_system SM_cex_account run tellraw @s {"text":"- - - [SloopExchange Online] - - -","color":"green"}
execute as @a if score @s SM_bankaction matches 12 if score @s SM_cex_account = SM_system SM_cex_account run tellraw @s {"text":"- - - [SloopExchange GO] - - -","color":"green"}

function finance:bank/cex/parser/buying_power
execute as @a if score @s SM_cex_account = SM_system SM_cex_account if score @s SM_bankaction matches 12 run tellraw @s [{"text":"   - "},{"text":"Reduced by pending orders.","color":"yellow"}]
execute as @a if score @s SM_cex_account = SM_system SM_cex_account if score @s SM_bankaction matches 12 run tellraw @s [{"text":"   - "},{"text":"/cexin ","color":"light_purple"},{"text":"<amount>","color":"gray"},{"text":" | Cash in $","color":"white"},{"text":"<amount>","color":"yellow"},{"text":" to your currency exchange account.","color":"white"}]
execute as @a if score @s SM_cex_account = SM_system SM_cex_account if score @s SM_bankaction matches 12 run tellraw @s [{"text":"   - "},{"text":"/cexout ","color":"light_purple"},{"text":"<amount>","color":"gray"},{"text":" | Cash out $","color":"white"},{"text":"<amount>","color":"yellow"},{"text":" to your bank account.","color":"white"}]

function finance:bank/cex/parser/points/buying_power
execute as @a if score @s SM_cex_account = SM_system SM_cex_account if score @s SM_bankaction matches 12 run tellraw @s [{"text":"   - "},{"text":"Reduced by pending orders.","color":"yellow"}]
execute as @a if score @s SM_cex_account = SM_system SM_cex_account if score @s SM_bankaction matches 12 run tellraw @s [{"text":"   - "},{"text":"/pcexin ","color":"light_purple"},{"text":"<amount>","color":"gray"},{"text":" | Cash in ","color":"white"},{"text":"<amount>","color":"yellow"},{"text":" Points to your currency exchange account.","color":"white"}]
execute as @a if score @s SM_cex_account = SM_system SM_cex_account if score @s SM_bankaction matches 12 run tellraw @s [{"text":"   - "},{"text":"/pcexout ","color":"light_purple"},{"text":"<amount>","color":"gray"},{"text":" | Cash out ","color":"white"},{"text":"<amount>","color":"yellow"},{"text":" Points to your bank account.","color":"white"}]
