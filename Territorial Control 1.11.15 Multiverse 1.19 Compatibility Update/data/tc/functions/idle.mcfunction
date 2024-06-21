title @a[tag=TC_inminigame] actionbar [{"text":"Territorial Control: ","color":"green"},{"text":"Right-click the sign to start the game. | Help? type \"/trigger TC_help\".","color":"aqua"}]
execute as @a[tag=TC_inminigame,gamemode=!creative,gamemode=!spectator] at @s[tag=TC_inminigame] unless block ~ 3 ~ barrier run tp @s[tag=TC_inminigame] 34.5 4 -14.5 0 0
execute as @a[tag=TC_inminigame,gamemode=!creative,gamemode=!spectator] run clear @s[tag=TC_inminigame]
execute as @a[tag=TC_inminigame,gamemode=!creative,gamemode=!spectator] run xp set @s[tag=TC_inminigame] 0 points
execute as @a[tag=TC_inminigame,gamemode=!creative,gamemode=!spectator] run xp set @s[tag=TC_inminigame] 0 levels
execute as @a[tag=TC_inminigame,gamemode=!creative,gamemode=!spectator] run effect give @s[tag=TC_inminigame] saturation 100000 0 true
execute as @a[tag=TC_inminigame,gamemode=!creative,gamemode=!spectator] run effect give @s[tag=TC_inminigame] instant_health 100000 0 true
execute as @a[tag=TC_inminigame,gamemode=!creative,gamemode=!spectator] run effect give @s[tag=TC_inminigame] resistance 100000 127 true
execute as @a[tag=TC_inminigame,gamemode=!creative,gamemode=!spectator] run team leave @s[tag=TC_inminigame]
bossbar set minecraft:btpointsboost visible false
bossbar set minecraft:rtpointsboost visible false
bossbar set minecraft:btpointsreduc visible false
bossbar set minecraft:rtpointsreduc visible false
bossbar set minecraft:trucetime visible false
bossbar set minecraft:brampage visible false
bossbar set minecraft:rrampage visible false
bossbar set minecraft:bcoalextract visible false
bossbar set minecraft:bironextract visible false
bossbar set minecraft:bgoldextract visible false
bossbar set minecraft:bdiamextract visible false
bossbar set minecraft:rcoalextract visible false
bossbar set minecraft:rironextract visible false
bossbar set minecraft:rgoldextract visible false
bossbar set minecraft:rdiamextract visible false
bossbar set minecraft:trucetime visible false
#scoreboard players add TC_gsettings TC_nightmode 0

#execute if score TC_gsettings TC_gsettings matches 1 if score TC_gsettings TC_nightmode matches 1 run tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"Night mode disabled.","color":"white"}]
#execute if score TC_gsettings TC_gsettings matches 1 if score TC_gsettings TC_nightmode matches 1 run time set 6000
#execute if score TC_gsettings TC_gsettings matches 1 if score TC_gsettings TC_nightmode matches 1 run scoreboard players set TC_gsettings TC_nightmode 0
#execute if score TC_gsettings TC_gsettings matches 1 if score TC_gsettings TC_nightmode matches 0 run tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"Night mode active.","color":"white"}]
#execute if score TC_gsettings TC_gsettings matches 1 if score TC_gsettings TC_nightmode matches 0 run time set 18000
#execute if score TC_gsettings TC_gsettings matches 1 if score TC_gsettings TC_nightmode matches 0 run scoreboard players set TC_gsettings TC_nightmode 1
#execute if score TC_gsettings TC_gsettings matches 1 run scoreboard players set TC_gsettings TC_gsettings 0

execute as @a[tag=TC_inminigame,scores={TC_taction=1..}] run tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"This is not allowed outside of games."}]
execute as @a[tag=TC_inminigame,scores={TC_key=1..}] run tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"This is not allowed outside of games."}]
execute as @a[tag=TC_inminigame,scores={TC_settings=1..}] run tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"This is not allowed outside of games."}]

execute as @a[tag=TC_inminigame,scores={TC_taction=1..}] at @s[tag=TC_inminigame] run playsound minecraft:block.note_block.pling master @s[tag=TC_inminigame] ~ ~ ~ 1 1
execute as @a[tag=TC_inminigame,scores={TC_key=1..}] at @s[tag=TC_inminigame] run playsound minecraft:block.note_block.pling master @s[tag=TC_inminigame] ~ ~ ~ 1 1
execute as @a[tag=TC_inminigame,scores={TC_settings=1..}] at @s[tag=TC_inminigame] run playsound minecraft:block.note_block.pling master @s[tag=TC_inminigame] ~ ~ ~ 1 1

execute as @a[tag=TC_inminigame,scores={TC_key=1..}] run scoreboard players set @s[tag=TC_inminigame] TC_key 0
execute as @a[tag=TC_inminigame,scores={TC_taction=1..}] run scoreboard players set @s[tag=TC_inminigame] TC_taction 0
execute as @a[tag=TC_inminigame,scores={TC_settings=1..}] run scoreboard players set @s[tag=TC_inminigame] TC_settings 0

time set 6000