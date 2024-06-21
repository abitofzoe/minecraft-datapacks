execute if score TC_system TC_gethpmode matches 0 store result score @s[tag=TC_inminigame] TC_addmaxhptemp run data get entity @s[tag=TC_inminigame] Attributes.[0].Base 1
execute if score TC_system TC_gethpmode matches 1 store result score @s[tag=TC_inminigame] TC_addmaxhptemp run data get entity @s[tag=TC_inminigame] Attributes.[1].Base 1
scoreboard players add @s[tag=TC_inminigame,scores={TC_addmaxhptemp=..249}] TC_addmaxhptemp 1
execute if score TC_system TC_gethpmode matches 0 store result entity @s[tag=TC_inminigame] Attributes.[0].Base double 1 run scoreboard players get @s[tag=TC_inminigame] TC_addmaxhptemp 
execute if score TC_system TC_gethpmode matches 1 store result entity @s[tag=TC_inminigame] Attributes.[1].Base double 1 run scoreboard players get @s[tag=TC_inminigame] TC_addmaxhptemp 
scoreboard players remove @s[tag=TC_inminigame] TC_addmaxhp 1
execute if score @s[tag=TC_inminigame] TC_addmaxhp matches 1.. run function tc:increasemaxhealth