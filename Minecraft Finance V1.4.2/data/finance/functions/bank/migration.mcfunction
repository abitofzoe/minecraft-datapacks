tellraw @s [{"text":"[SloopBank] ","color":"yellow"},{"text":"Please wait. Your bank account is being migrated.","color":"yellow"}]
function finance:rng/generate
scoreboard players operation @s SM_b_acct_no = SM_system SM_rng_value
execute positioned 29999000 0 29999000 run summon armor_stand ~ ~ ~ {Invulnerable:1,Marker:1b,NoGravity:1,NoAI:1,Silent:1,Tags:["SM_holds_rng","SM_bank_account"]}
scoreboard players operation @e[type=armor_stand,tag=SM_bank_account,tag=!SM_bank_account_init] SM_rng_value = @s SM_b_acct_no
scoreboard players operation @e[type=armor_stand,tag=SM_bank_account,tag=!SM_bank_account_init] SM_balance_least = @s SM_balance_least
scoreboard players operation @e[type=armor_stand,tag=SM_bank_account,tag=!SM_bank_account_init] SM_d_total = @s SM_d_total
execute as @e[type=armor_stand,tag=SM_bank_account,tag=!SM_bank_account_init] run function finance:bank/migration_init 

tag @s add SM_migrated
tellraw @s [{"text":"[SloopBank] ","color":"green"},{"text":"Migration complete! Your bank account number is: ","color":"white"},{"score":{"name":"@s","objective":"SM_b_acct_no"},"color":"light_purple"}]
execute as @a[limit=1,tag=!SM_migrated] run function finance:bank/migration