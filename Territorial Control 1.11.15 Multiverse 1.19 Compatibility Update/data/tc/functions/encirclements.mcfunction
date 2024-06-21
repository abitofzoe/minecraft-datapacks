scoreboard players set @e[tag=TC_inminigame,type=villager,tag=TC_guard] front 0
tag @e[tag=TC_inminigame,type=villager,tag=TC_guard,tag=!TC_emeraldtime] add TC_encircled
tag @e[tag=TC_inminigame,type=villager,tag=TC_spawn] remove TC_encircled
execute as @e[tag=TC_inminigame,type=villager,tag=TC_spawn] run tag @s add TC_propagate
execute as @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_propagate] at @s run function tc:checkencirclement

execute as @e[tag=TC_inminigame,type=villager] at @s run fill ~-7 ~-4 ~-7 ~7 ~-4 ~7 bedrock
execute as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_encircled] at @s run fill ~-7 ~-4 ~-7 ~7 ~-4 ~7 red_concrete
execute as @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_encircled] at @s run fill ~-7 ~-4 ~-7 ~7 ~-4 ~7 blue_concrete
execute as @e[tag=TC_inminigame,type=villager,tag=TC_encircled] run scoreboard players set @s front 1