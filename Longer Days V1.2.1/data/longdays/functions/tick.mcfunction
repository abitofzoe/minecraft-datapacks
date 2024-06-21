scoreboard players set LD_system LD_const 2
execute store result score LD_system LD_daytime run time query daytime
execute if score LD_system LD_daytime matches 18000 run scoreboard players set LD_system LD_const 1
execute if score LD_system LD_daytime matches 22300..23992 run scoreboard players set LD_system LD_const 10
execute if score LD_system LD_daytime matches 12010..13702 run scoreboard players set LD_system LD_const 10

scoreboard players add LD_system LD_timer 1
execute if score LD_system LD_timer >= LD_system LD_const run time add 1
execute if score LD_system LD_timer >= LD_system LD_const run scoreboard players set LD_system LD_timer 0

