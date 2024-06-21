execute store result score SM_system SM_balance_least run data get entity @s ArmorItems[1].tag.PointsBank[0].BalanceLeast 1
execute store result score SM_system SM_balance_most run data get entity @s ArmorItems[1].tag.PointsBank[0].BalanceMost 1

scoreboard players operation SM_system SM_balance_least += SM_system SM_credit_least
scoreboard players operation SM_system SM_balance_most += SM_system SM_credit_most

execute if score SM_system SM_balance_least matches 10000000.. run scoreboard players operation SM_system SM_temp = SM_system SM_balance_least
execute if score SM_system SM_balance_least matches 10000000.. run scoreboard players operation SM_system SM_temp /= SM_system SM_const_10000000
execute if score SM_system SM_balance_least matches 10000000.. run scoreboard players operation SM_system SM_balance_most += SM_system SM_temp
execute if score SM_system SM_balance_least matches 10000000.. run scoreboard players operation SM_system SM_balance_least %= SM_system SM_const_10000000

execute store result entity @s ArmorItems[1].tag.PointsBank[0].BalanceLeast long 1 run scoreboard players get SM_system SM_balance_least
execute store result entity @s ArmorItems[1].tag.PointsBank[0].BalanceMost long 1 run scoreboard players get SM_system SM_balance_most

