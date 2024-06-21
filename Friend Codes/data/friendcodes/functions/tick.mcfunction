tag @a remove FC_failure
tag @a remove FC_processed

execute as @a[scores={FC_login=1}] unless score @s FC_assigned = FC_friendcodes FC_friendcode run scoreboard players enable @s FC_assigned 
execute as @a[scores={FC_login=1}] unless score @s FC_assigned matches 0 unless score @s FC_assigned = FC_friendcodes FC_friendcode run tag @s add FC_failure
execute as @a[scores={FC_login=1},limit=1,tag=FC_failure,tag=!FC_processed] unless score @s FC_assigned matches 0 unless score @s FC_assigned = FC_friendcodes FC_friendcode run function friendcodes:fail

execute as @a[scores={FC_login=1}] if score @s FC_assigned = FC_friendcodes FC_friendcode run tellraw @s {"text":"Successful friend code login!","color":"green"}
execute as @a[scores={FC_login=1}] if score @s FC_assigned = FC_friendcodes FC_friendcode run scoreboard players set @s FC_login 0 
execute as @a[scores={FC_login=1}] unless score @s FC_assigned = FC_friendcodes FC_friendcode run scoreboard players add @s FC_timer 1
execute as @a[scores={FC_login=1,FC_timer=40..}] unless score @s FC_assigned = FC_friendcodes FC_friendcode run tellraw @s ["",{"text":"Enter your friend code to play: ","color":"gold","clickEvent":{"action":"suggest_command","value":"/friendcode "}},{"text":"/friendcode <friend code here>","color":"dark_purple","clickEvent":{"action":"suggest_command","value":"/friendcode "}}]
execute as @a[scores={FC_login=1,FC_timer=40..}] unless score @s FC_assigned = FC_friendcodes FC_friendcode run scoreboard players set @s FC_timer 0

kick @a[scores={FC_strikes=3..}] Wrong code! You're not a friend </3 !!

execute as @a unless score @s FC_assigned = FC_friendcodes FC_friendcode in minecraft:voidhub run tp @s 0.5 66 0.5 0 0 