#Course selection
execute unless entity @a[tag=IZS_lvlselect] run tag @r add IZS_lvlselect
execute as @a[tag=IZS_lvlselect,tag=!IZS_lvlselecting] run tellraw @a [{"selector":"@a[tag=IZS_lvlselect] ","color":"aqua"},{"text":" selects the level for this round.","color":"green"}]
execute as @a[tag=IZS_lvlselect,tag=!IZS_lvlselecting] run scoreboard players enable @s IZS_CurrentLvl
execute as @a[tag=IZS_lvlselect,tag=!IZS_lvlselecting] run tellraw @s [{"text":"--> Classic Level\n","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger IZS_CurrentLvl set 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"The classic Infinite Zombie Survival level!\nDifficulty: 1/6\n* Official level","color":"light_purple"}]}}}]
execute as @a[tag=IZS_lvlselect,tag=!IZS_lvlselecting] run tellraw @s [{"text":"--> Surrounded!\n","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger IZS_CurrentLvl set 2"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"You were ordered to stay and defend at all costs.\nNow, you are surrounded and cut off from supplies.\nThe villager merchants have long since fled.\nHow long can you last?\nDifficulty: 3/6\n* Official level","color":"light_purple"}]}}}]
execute as @a[tag=IZS_lvlselect,tag=!IZS_lvlselecting] run tellraw @s [{"text":"--> Zombie Invasion\n","color":"gold","clickEvent":{"action":"run_command","value":"/trigger IZS_CurrentLvl set 3"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Defend your villages and stay for as long as possible.\nPlayer-created difficulty: 4/6\nBy: Mika","color":"light_purple"}]}}}]
execute as @a[tag=IZS_lvlselect,tag=!IZS_lvlselecting] run tellraw @s [{"text":"--> Infected Holdout\n","color":"red","clickEvent":{"action":"run_command","value":"/trigger IZS_CurrentLvl set 4"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Hold off the infected to survive the invasion!\nPlayer-created difficulty: 5/6\nBy: Brad","color":"light_purple"}]}}}]
execute as @a[tag=IZS_lvlselect,tag=!IZS_lvlselecting] run tellraw @s [{"text":"--> Hilly Forest\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger IZS_CurrentLvl set 5"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Lost in the forest and night is about to fall.\nThe undead are beginning to spawn.\nThe Villager Merchants are all hiding.\nWill you succumb to the darkness of the forest, or will you prevail?\nDifficulty: 2/6\n* Official level","color":"light_purple"}]}}}]
execute as @a[tag=IZS_lvlselect,tag=!IZS_lvlselecting] run tag @s add IZS_lvlselecting
execute as @a[scores={IZS_CurrentLvl=1..}] run scoreboard players operation currentlvl IZS_LvlSelected = @a[tag=IZS_lvlselect,limit=1] IZS_CurrentLvl
execute as @a[scores={IZS_CurrentLvl=1..}] run tag @a remove IZS_lvlselect
execute as @a[scores={IZS_CurrentLvl=1..}] run tag @a remove IZS_lvlselecting
execute as @a[scores={IZS_CurrentLvl=1..}] run scoreboard players set actioncontrol IZ_actioncontrol 2
execute as @a[scores={IZS_CurrentLvl=1..}] run tellraw @s [{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"},{"text":"\n"}]
execute as @a[scores={IZS_CurrentLvl=1}] run tellraw @a {"text":"'Classic Level' selected!.","color":"aqua"}
execute as @a[scores={IZS_CurrentLvl=2}] run tellraw @a {"text":"'Surrounded' selected!.","color":"yellow"}
execute as @a[scores={IZS_CurrentLvl=3}] run tellraw @a {"text":"'Zombie Invasion' selected!.","color":"gold"}
execute as @a[scores={IZS_CurrentLvl=4}] run tellraw @a {"text":"'Infected Holdout' selected!.","color":"red"}
execute as @a[scores={IZS_CurrentLvl=5}] run tellraw @a {"text":"'Hilly Forest' selected!.","color":"green"}
execute as @a[scores={IZS_CurrentLvl=1..}] run scoreboard players set @s IZS_CurrentLvl 0