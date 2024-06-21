tag @s add SM_broker_account_init
data modify entity @s ArmorItems[0] merge value {id:"minecraft:gold_block",Count:1,tag:{SloopBank:[{IsBroker:1,BalanceMost:0l,BalanceLeast:0l,BalanceDec:0l}]}}
data modify entity @s ArmorItems[1] merge value {id:"minecraft:iron_block",Count:1,tag:{PointsBank:[{IsBroker:1,PointsMost:0l,PointsLeast:0l}]}}
tellraw @s [{"text":"[SloopExchange] ","color":"white"},{"text":"Please wait. Your brokerage account is being linked to your bank account.","color":"yellow"}]
scoreboard players operation @s SM_linked_bank = SM_system SM_b_acct_no
execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no if score @s SM_linked_cex matches 0.. run scoreboard players operation SM_system SM_linked_cex = @s SM_linked_cex
execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no if score @s SM_linked_cex matches 0.. as @a if score @s SM_b_acct_no = SM_system SM_b_acct_no run tellraw @s ["",{"text":"[SloopBank] ","color":"yellow"},{"text":"Danger! ","color":"red"},{"text":"Found existing linked ","color":"white"},{"text":"currency exchange #","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_linked_cex"},"color":"light_purple"},{"text":"!","color":"white"},{"text":" Overwriting...","bold":true,"color":"red"}]
execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run scoreboard players operation @s SM_linked_cex = SM_system SM_rng_value
execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run scoreboard players operation SM_system SM_linked_cex = @s SM_linked_cex
scoreboard players operation SM_system SM_linked_bank = @s SM_linked_bank
execute as @a if score @s SM_cex_account = SM_system SM_rng_value run tellraw @s ["",{"text":"[SloopExchange] ","color":"green"},{"text":"Successfully linked ","color":"white"},{"text":"brokerage account #","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_linked_cex"},"color":"light_purple"},{"text":" to ","color":"white"},{"text":"bank account #","color":"yellow"},{"score":{"name":"SM_system","objective":"SM_linked_bank"},"color":"light_purple"},{"text":"!","color":"white"}]