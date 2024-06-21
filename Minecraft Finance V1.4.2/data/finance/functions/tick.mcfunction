scoreboard players enable @a SM_bankaction
#scoreboard players enable @a SM_bankwithdraw
scoreboard players enable @a SM_withdraw_pend
scoreboard players enable @a SM_withdrawing
scoreboard players enable @a SM_pwithdraw_pnd
scoreboard players enable @a SM_pointwithdraw
scoreboard players enable @a SM_cexwdraw_pnd
scoreboard players enable @a SM_cexwdrawing
scoreboard players enable @a SM_pcexwdraw_pnd
scoreboard players enable @a SM_pcexwdrawing
scoreboard players enable @a SM_cex_move
scoreboard players enable @a SM_cex_moving 
scoreboard players enable @a SM_cex_inv
scoreboard players enable @a SM_pcex_move 
scoreboard players enable @a SM_pcex_moving
scoreboard players enable @a SM_pcex_inv

#Migration
execute as @a[limit=1,tag=!SM_migrated] run function finance:bank/migration
execute as @e[type=armor_stand,tag=SM_bank_account,tag=!SM_migrated_decimals] run function finance:bank/migration/decimals
execute as @e[type=armor_stand,tag=SM_bank_account,tag=!SM_points_support] run function finance:bank/migration/points

execute as @a store result score @s SM_d_1 run clear @s minecraft:writable_book{Deposit:1}
execute as @a store result score @s SM_d_10 run clear @s minecraft:writable_book{Deposit:10}
execute as @a store result score @s SM_d_100 run clear @s minecraft:writable_book{Deposit:100}
execute as @a store result score @s SM_d_1000 run clear @s minecraft:writable_book{Deposit:1000}
execute as @a store result score @s SM_d_10000 run clear @s minecraft:writable_book{Deposit:10000}
execute as @a store result score @s SM_d_100000 run clear @s minecraft:writable_book{Deposit:100000}

execute as @a store result score @s SM_pd_100 run clear @s minecraft:writable_book{Points:100}
execute as @a store result score @s SM_pd_1000 run clear @s minecraft:writable_book{Points:1000}
execute as @a store result score @s SM_pd_10000 run clear @s minecraft:writable_book{Points:10000}
execute as @a store result score @s SM_pd_100000 run clear @s minecraft:writable_book{Points:100000}
execute as @a store result score @s SM_pd_1000000 run clear @s minecraft:writable_book{Points:1000000}
execute as @a store result score @s SM_pd_10000000 run clear @s minecraft:writable_book{Points:10000000}

execute as @a[scores={SM_d_1=1..}] run function finance:bank/deposit
execute as @a[scores={SM_d_10=1..}] run function finance:bank/deposit
execute as @a[scores={SM_d_100=1..}] run function finance:bank/deposit
execute as @a[scores={SM_d_1000=1..}] run function finance:bank/deposit
execute as @a[scores={SM_d_10000=1..}] run function finance:bank/deposit
execute as @a[scores={SM_d_100000=1..}] run function finance:bank/deposit

execute as @a[scores={SM_pd_100=1..}] run function finance:bank/points/deposit
execute as @a[scores={SM_pd_1000=1..}] run function finance:bank/points/deposit
execute as @a[scores={SM_pd_10000=1..}] run function finance:bank/points/deposit
execute as @a[scores={SM_pd_100000=1..}] run function finance:bank/points/deposit
execute as @a[scores={SM_pd_1000000=1..}] run function finance:bank/points/deposit
execute as @a[scores={SM_pd_10000000=1..}] run function finance:bank/points/deposit

execute as @a[scores={SM_deaths=1..,SM_d_total=1..}] run function finance:bank/death

execute as @a[scores={SM_d_total=1..},tag=!SM_deposit_complete,limit=1] if score WC_time WC_weekday matches 1..5 if score WC_time WC_hours matches 9..15 run function finance:bank/completedeposit 
execute as @a[scores={SM_pd_total=1..},tag=!SM_pdeposit_complete,limit=1] if score WC_time WC_weekday matches 1..5 if score WC_time WC_hours matches 9..15 run function finance:bank/points/completedeposit 

execute as @a[scores={SM_bankaction=1..2},limit=1] run function finance:bank/onlinebanking

execute as @a[scores={SM_bankaction=6..7},limit=1] run function finance:bank/log/display

execute as @a unless score @s SM_withdraw_pend matches 0 run scoreboard players set @s SM_bankaction 8
execute as @a[scores={SM_bankaction=8},limit=1] unless score @s SM_withdraw_pend matches 0 run function finance:bank/withdrawalmenu

execute as @a unless score @s SM_pwithdraw_pnd matches 0 run scoreboard players set @s SM_bankaction 9
execute as @a[scores={SM_bankaction=9},limit=1] unless score @s SM_pwithdraw_pnd matches 0 run function finance:bank/points/withdrawalmenu

execute as @a[scores={SM_bankaction=4,SM_withdrawing=1..},limit=1] run function finance:bank/withdrawset_entity

execute as @a[scores={SM_bankaction=10,SM_pointwithdraw=1..},limit=1] run function finance:bank/points/withdrawset_entity

execute as @a[tag=SM_pending_withdrawal,limit=1] if score @s SM_withdrawing matches 1.. if score WC_time WC_weekday matches 1..5 if score WC_time WC_hours matches 9..15 run function finance:bank/withdraw_confirmed
execute as @a[tag=SM_pending_pwithdrawal,limit=1] if score @s SM_pointwithdraw matches 1.. if score WC_time WC_weekday matches 1..5 if score WC_time WC_hours matches 9..15 run function finance:bank/points/withdraw_confirmed

execute as @a[scores={SM_bankaction=5},limit=1] run function finance:bank/withdraw_cancel 

execute as @a[scores={SM_bankaction=11..12},limit=1] run function finance:bank/cex/menu

execute as @a unless score @s SM_cex_move matches 0 run scoreboard players set @s SM_bankaction 13
execute as @a[scores={SM_bankaction=13},limit=1] run function finance:bank/cex/adjust/preview
execute as @a[scores={SM_bankaction=14},limit=1] run function finance:bank/cex/adjust/confirm
execute as @a[scores={SM_bankaction=15},limit=1] run function finance:bank/cex/adjust/cancel

execute as @a unless score @s SM_pcex_move matches 0 run scoreboard players set @s SM_bankaction 16
execute as @a[scores={SM_bankaction=16},limit=1] run function finance:bank/cex/adjust/points/preview
execute as @a[scores={SM_bankaction=17},limit=1] run function finance:bank/cex/adjust/points/confirm

function finance:cleanup

#1, 2 = online banking
#3 = ?
#4 = withdrawset_entity
#5 = cancel withdrawal
#6, 7 = display transaction log
#8 = withdrawal menu
#9 = points withdrawal menu
#10 = commit points withdrawal
#11-12 = currency exchange viewer
#13 = cash in/out currency exchange
#14 = confirm cash in/out currency exchange
#15 = cancel currency exchange
#16 = cash in/out points currency exchange
#17 = confirm cash in/out points currency exchange