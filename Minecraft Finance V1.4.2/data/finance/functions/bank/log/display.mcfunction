scoreboard players operation SM_system SM_b_acct_no = @s SM_b_acct_no
execute as @e[type=armor_stand,tag=SM_bank_account] if score @s SM_rng_value = SM_system SM_b_acct_no run function finance:bank/log/display_entity
scoreboard players set @s SM_bankaction 0
execute as @a[scores={SM_bankaction=6..7},limit=1] run function finance:bank/log/display