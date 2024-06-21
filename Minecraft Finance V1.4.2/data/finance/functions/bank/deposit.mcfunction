scoreboard players operation @s SM_d_10 *= SM_system SM_const_10
scoreboard players operation @s SM_d_100 *= SM_system SM_const_100
scoreboard players operation @s SM_d_1000 *= SM_system SM_const_1000
scoreboard players operation @s SM_d_10000 *= SM_system SM_const_10000
scoreboard players operation @s SM_d_100000 *= SM_system SM_const_100000

scoreboard players operation @s SM_d_total += @s SM_d_1
scoreboard players operation @s SM_d_total += @s SM_d_10
scoreboard players operation @s SM_d_total += @s SM_d_100
scoreboard players operation @s SM_d_total += @s SM_d_1000
scoreboard players operation @s SM_d_total += @s SM_d_10000
scoreboard players operation @s SM_d_total += @s SM_d_100000

scoreboard players set @s SM_d_1 0
scoreboard players set @s SM_d_10 0
scoreboard players set @s SM_d_100 0
scoreboard players set @s SM_d_1000 0
scoreboard players set @s SM_d_10000 0
scoreboard players set @s SM_d_100000 0

execute unless score WC_time WC_weekday matches 1..5 run tellraw @s [{"text":"[SloopBank] ","color":"yellow"},{"text":"Your deposit of ","color":"white"},{"text":"$","color":"yellow"},{"score":{"name":"@s","objective":"SM_d_total"},"color":"light_purple"},{"text":" is on hold until the bank opens on Mondays-Fridays, 9AM-4PM.","color":"white"}]
execute if score WC_time WC_weekday matches 1..5 unless score WC_time WC_hours matches 9..15 run tellraw @s [{"text":"[SloopBank] ","color":"yellow"},{"text":"Your deposit of ","color":"white"},{"text":"$","color":"yellow"},{"score":{"name":"@s","objective":"SM_d_total"},"color":"light_purple"},{"text":" is on hold until the bank opens on Mondays-Fridays, 9AM-4PM.","color":"white"}]
