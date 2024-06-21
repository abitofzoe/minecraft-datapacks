bossbar set minecraft:iz_pausedgame visible false

#execute if score actioncontrol IZ_actioncontrol matches 1 run function zombie:classic/lvlselect
execute if score actioncontrol IZ_actioncontrol matches 1 run tag @a[tag=IZ_inminigame] remove IZ_diffselect
execute if score actioncontrol IZ_actioncontrol matches 1 run scoreboard players set difficulty IZ_adifficulty 0
execute if score actioncontrol IZ_actioncontrol matches 1 run scoreboard players set @a[tag=IZ_inminigame] IZ_difficulty 0
execute if score actioncontrol IZ_actioncontrol matches 1 run scoreboard players set actioncontrol IZ_actioncontrol 2
execute if score actioncontrol IZ_actioncontrol matches 2 run function zombie:classic/difficultycontrol
execute if score actioncontrol IZ_actioncontrol matches 3 run function zombie:classic/purgeentities
execute if score actioncontrol IZ_actioncontrol matches 4 run function zombie:classic/fillreset
execute if score actioncontrol IZ_actioncontrol matches 5 run function zombie:classic/startgame
execute if score actioncontrol IZ_actioncontrol matches 6 run function zombie:classic/gameloop
execute if score actioncontrol IZ_actioncontrol matches 7 run function zombie:classic/debug