execute store result score SM_system SM_balance_least run data get entity @s ArmorItems[0].tag.SloopBank[0].BalanceLeast 1
execute store result score SM_system SM_balance_most run data get entity @s ArmorItems[0].tag.SloopBank[0].BalanceMost 1
execute store result score SM_system SM_balance_dec run data get entity @s ArmorItems[0].tag.SloopBank[0].BalanceDec 1
scoreboard players operation SM_system SM_bankwithdraw = @s SM_bankwithdraw
scoreboard players operation SM_system SM_balance_pend = SM_system SM_balance_least
scoreboard players operation SM_system SM_balance_pend -= SM_system SM_bankwithdraw
scoreboard players operation SM_system SM_balance_pendi = SM_system SM_balance_pend
scoreboard players operation SM_system SM_balance_pendi *= SM_system SM_const_inv