scoreboard players add @s FC_strikes 1
scoreboard players reset @s FC_assigned

execute if score @s FC_strikes matches 1 run kick @a[tag=FC_failure,tag=!FC_processed] Wrong code! You have 2 (two) tries left.
execute if score @s FC_strikes matches 2 run kick @a[tag=FC_failure,tag=!FC_processed] Wrong code! You have 1 (ONE) try left.
execute if score @s FC_strikes matches 3.. run function friendcodes:ban 

tag @s add FC_processed
execute as @a[scores={FC_assigned=..2147483647},limit=1,tag=FC_failure,tag=!FC_processed] unless score @s FC_assigned = FC_friendcodes FC_friendcode run function friendcodes:fail