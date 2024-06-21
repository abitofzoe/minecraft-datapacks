#Classic Level (lvl 1) fill
execute if score currentlvl IZS_LvlSelected matches 1 run fill 10 4 0 30 36 20 air replace 
execute if score currentlvl IZS_LvlSelected matches 1 run fill 31 4 0 51 36 20 air replace
execute if score currentlvl IZS_LvlSelected matches 1 run fill 52 4 0 93 36 20 air replace
execute if score currentlvl IZS_LvlSelected matches 1 run fill 94 4 0 114 36 20 air replace

#Surrounded (lvl 2) fill
execute if score currentlvl IZS_LvlSelected matches 2 run fill 10 4 -21 35 36 -46 air replace

#Zombie Invasion (lvl 3) fill
execute if score currentlvl IZS_LvlSelected matches 3 run tp @a 71.5 4 134.5
execute if score currentlvl IZS_LvlSelected matches 3 run fill 71 4 136 45 36 102 air replace
execute if score currentlvl IZS_LvlSelected matches 3 run fill 44 4 136 20 36 102 air replace
execute if score currentlvl IZS_LvlSelected matches 3 run fill 19 4 136 0 36 102 air replace
execute if score currentlvl IZS_LvlSelected matches 3 run fill -1 4 136 -25 36 102 air replace
execute if score currentlvl IZS_LvlSelected matches 3 run fill -26 4 136 -50 36 102 air replace
execute if score currentlvl IZS_LvlSelected matches 3 run fill -51 4 136 -68 36 102 air replace

#Infected Holdout (lvl 4) fill


scoreboard players set actioncontrol IZ_actioncontrol 5