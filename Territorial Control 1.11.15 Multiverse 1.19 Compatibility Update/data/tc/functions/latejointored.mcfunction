team join red @s[tag=TC_inminigame]
clear @s[tag=TC_inminigame]
xp set @s[tag=TC_inminigame] 0 levels
xp set @s[tag=TC_inminigame] 0 points
effect clear @s[tag=TC_inminigame]
tp @s[tag=TC_inminigame] 242.5 4 157.5
scoreboard players operation @s[tag=TC_inminigame] TC_gameid = TC_gameid TC_gameid
tellraw @a[tag=TC_inminigame] ["",{"text":"Territorial Control: ","color":"green"},{"selector":"@s","color":"none"},{"text":" is a late joiner and has been placed into ","color":"white"},{"text":"Red","color":"red"},{"text":" team.","color":"none"}]
tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"Personal settings: ","color":"white"},{"text":"/trigger TC_settings","color":"green"}]
tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"Team actions: ","color":"white"},{"text":"/trigger TC_taction","color":"green"}]
tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"Get a new team chest key: ","color":"white"},{"text":"/trigger TC_key","color":"green"}]
tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"New to the game or want a refresher? Type in ","color":"white"},{"text":"/trigger TC_help","color":"green"}]
tag @s[tag=TC_inminigame] remove TC_toRed