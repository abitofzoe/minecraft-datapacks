scoreboard players operation @s SM_pd_100 *= SM_system SM_const_100
scoreboard players operation @s SM_pd_1000 *= SM_system SM_const_1000
scoreboard players operation @s SM_pd_10000 *= SM_system SM_const_10000
scoreboard players operation @s SM_pd_100000 *= SM_system SM_const_100000
scoreboard players operation @s SM_pd_1000000 *= SM_system SM_const_1000000
scoreboard players operation @s SM_pd_10000000 *= SM_system SM_const_10000000

scoreboard players operation @s SM_pd_total += @s SM_pd_100
scoreboard players operation @s SM_pd_total += @s SM_pd_1000
scoreboard players operation @s SM_pd_total += @s SM_pd_10000
scoreboard players operation @s SM_pd_total += @s SM_pd_100000
scoreboard players operation @s SM_pd_total += @s SM_pd_1000000
scoreboard players operation @s SM_pd_total += @s SM_pd_10000000

scoreboard players set @s SM_pd_100 0
scoreboard players set @s SM_pd_1000 0
scoreboard players set @s SM_pd_10000 0
scoreboard players set @s SM_pd_100000 0
scoreboard players set @s SM_pd_1000000 0
scoreboard players set @s SM_pd_10000000 0

execute unless score WC_time WC_weekday matches 1..5 run tellraw @s [{"text":"[SloopBank] ","color":"yellow"},{"text":"Your deposit of ","color":"white"},{"score":{"name":"@s","objective":"SM_pd_total"},"color":"light_purple"},{"text":" Points","color":"yellow"},{"text":" is on hold until the bank opens on Mondays-Fridays, 9AM-4PM.","color":"white"}]
execute if score WC_time WC_weekday matches 1..5 unless score WC_time WC_hours matches 9..15 run tellraw @s [{"text":"[SloopBank] ","color":"yellow"},{"text":"Your deposit of ","color":"white"},{"score":{"name":"@s","objective":"SM_pd_total"},"color":"light_purple"},{"text":" Points","color":"yellow"},{"text":" is on hold until the bank opens on Mondays-Fridays, 9AM-4PM.","color":"white"}]