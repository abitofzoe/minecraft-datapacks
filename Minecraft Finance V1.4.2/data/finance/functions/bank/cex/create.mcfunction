tellraw @s [{"text":"[SloopBank] ","color":"yellow"},{"text":"Please wait. Your brokerage account is being created.","color":"yellow"}]
function finance:rng/generate
scoreboard players operation @s SM_cex_account = SM_system SM_rng_value
scoreboard players operation SM_system SM_b_acct_no = @s SM_b_acct_no
execute positioned 29999000 0 29999000 run summon armor_stand ~ ~ ~ {Invulnerable:1,Marker:1b,NoGravity:1,NoAI:1,Silent:1,Tags:["SM_holds_rng","SM_broker_account"]}
scoreboard players operation @e[type=armor_stand,tag=SM_broker_account,tag=!SM_broker_account_init] SM_cex_account = @s SM_cex_account

execute as @e[type=armor_stand,tag=SM_broker_account,tag=!SM_broker_account_init] run function finance:bank/cex/create_init

tellraw @s [{"text":"[SloopBank] ","color":"green"},{"text":"Creation complete! Your brokerage account number is: ","color":"white"},{"score":{"name":"@s","objective":"SM_cex_account"},"color":"light_purple"}]
