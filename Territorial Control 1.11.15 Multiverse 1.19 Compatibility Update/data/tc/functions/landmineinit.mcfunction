execute store result score @s[tag=TC_inminigame] TC_Yinitpos run data get entity @s[tag=TC_inminigame] Pos[1]
scoreboard players operation @s[tag=TC_inminigame] TC_Yfinalpos = @s[tag=TC_inminigame] TC_Yinitpos 
scoreboard players remove @s[tag=TC_inminigame] TC_Yfinalpos 1
execute store result entity @s[tag=TC_inminigame] Pos[1] double 1 run scoreboard players get @s[tag=TC_inminigame] TC_Yfinalpos
scoreboard players set @s[tag=TC_inminigame] TC_landminearm 0
tag @s[tag=TC_inminigame] add TC_init