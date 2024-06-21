team join HS_hider @a[tag=HS_inminigame]
team join HS_seeker @r[tag=HS_inminigame]
scoreboard players add HS_system HS_gameid 1
execute as @a[tag=HS_inminigame] run scoreboard players operation @s HS_gameid = HS_system HS_gameid

scoreboard players set HS_system HS_timer 300
scoreboard players set HS_system HS_bplayers 0
scoreboard players set HS_system HS_preptimer 60

execute as @a[tag=HS_inminigame,team=HS_hider] run scoreboard players add HS_system HS_timer 30
execute as @a[tag=HS_inminigame,team=HS_hider] run scoreboard players add HS_system HS_bplayers 1

scoreboard players operation HS_system HS_btimer = HS_system HS_timer

tp @a[team=HS_hider] -457 4 -421
tp @a[team=HS_seeker] -447 3 -432

scoreboard players set @a[tag=HS_inminigame] HS_hasDied 0

clear @a[tag=HS_inminigame]
tag @a[tag=HS_inminigame] remove HS_seektorture
tag @a[tag=HS_inminigame] remove HS_finalseeker
tag @a[tag=HS_inminigame] remove HS_finalhider

scoreboard players set HS_system HS_totalshealth 0
scoreboard players set HS_system HS_finalseekers 0

scoreboard players set HS_system HS_opmode 3

execute in minecraft:hideandseekown run gamerule naturalRegeneration false
effect give @a[tag=HS_inminigame] instant_health 1 19 true