scoreboard players set @s SM_rng_value 0
scoreboard players operation @s SM_rng_1 = @e[type=armor_stand,sort=random,limit=1,tag=SM_RNG] SM_rng_value
scoreboard players operation @s SM_rng_10 = @e[type=armor_stand,sort=random,limit=1,tag=SM_RNG] SM_rng_value
scoreboard players operation @s SM_rng_100 = @e[type=armor_stand,sort=random,limit=1,tag=SM_RNG] SM_rng_value
scoreboard players operation @s SM_rng_1000 = @e[type=armor_stand,sort=random,limit=1,tag=SM_RNG] SM_rng_value
scoreboard players operation @s SM_rng_10000 = @e[type=armor_stand,sort=random,limit=1,tag=SM_RNG] SM_rng_value
scoreboard players operation @s SM_rng_100000 = @e[type=armor_stand,sort=random,limit=1,tag=SM_RNG] SM_rng_value
scoreboard players operation @s SM_rng_1000000 = @e[type=armor_stand,sort=random,limit=1,tag=SM_RNG] SM_rng_value
scoreboard players operation @s SM_rng_10000000 = @e[type=armor_stand,sort=random,limit=1,tag=SM_RNG] SM_rng_value

scoreboard players operation @s SM_rng_1 *= SM_system SM_rng_1
scoreboard players operation @s SM_rng_10 *= SM_system SM_rng_10
scoreboard players operation @s SM_rng_100 *= SM_system SM_rng_100
scoreboard players operation @s SM_rng_1000 *= SM_system SM_rng_1000
scoreboard players operation @s SM_rng_10000 *= SM_system SM_rng_10000
scoreboard players operation @s SM_rng_100000 *= SM_system SM_rng_100000
scoreboard players operation @s SM_rng_1000000 *= SM_system SM_rng_1000000
scoreboard players operation @s SM_rng_10000000 *= SM_system SM_rng_10000000

scoreboard players operation @s SM_rng_value += @s SM_rng_1
scoreboard players operation @s SM_rng_value += @s SM_rng_10
scoreboard players operation @s SM_rng_value += @s SM_rng_100
scoreboard players operation @s SM_rng_value += @s SM_rng_1000
scoreboard players operation @s SM_rng_value += @s SM_rng_10000
scoreboard players operation @s SM_rng_value += @s SM_rng_100000
scoreboard players operation @s SM_rng_value += @s SM_rng_1000000
scoreboard players operation @s SM_rng_value += @s SM_rng_10000000
scoreboard players operation @s SM_rng_value += @s SM_rng_100000000

scoreboard players operation SM_system SM_rng_value = @s SM_rng_value

scoreboard players set @s SM_rng_value 0

execute as @e[type=armor_stand,tag=SM_holds_rng] if score @s SM_rng_value = SM_system SM_rng_value as @e[type=armor_stand,tag=SM_RNG_stor,limit=1] run function finance:rng/get
execute as @e[type=armor_stand,tag=SM_holds_rng] if score @s SM_cex_account = SM_system SM_rng_value as @e[type=armor_stand,tag=SM_RNG_stor,limit=1] run function finance:rng/get