scoreboard players enable @a HS_hubsent

tag @a[tag=HS_inminigame,scores={HS_hubsent=1}] remove HS_inminigame
scoreboard players reset @a[scores={HS_hubsent=1}] HS_hubsent 

execute as @a[tag=HS_inminigame,x=0,scores={HS_hasDied=1..}] in minecraft:hideandseekown run tp @s -488.5 50 -425.5

scoreboard players set @a[scores={HS_hasDied=1..},tag=!HS_inminigame] HS_hasDied 0

execute in minecraft:hideandseekown as @a[x=0,tag=HS_inminigame] run scoreboard players set @s HS_worldtimeout 0
scoreboard players add @a[tag=HS_inminigame] HS_worldtimeout 1

tag @a[tag=HS_inminigame,scores={HS_worldtimeout=10..}] remove HS_inminigame
scoreboard players set @a[scores={HS_worldtimeout=10..}] HS_worldtimeout 0

execute in minecraft:hideandseekown as @a[x=0] run tag @s add HS_inminigame

team leave @a[tag=!HS_inminigame,team=HS_hider]
team leave @a[tag=!HS_inminigame,team=HS_seeker]

execute in minecraft:hideandseekown run function hideandseek:running

scoreboard players set @a[scores={HS_opcall=1}] HS_opcall 0

execute in minecraft:voidhub as @a[x=0,tag=!HS_inminigame,tag=!IZ_inminigame,tag=!TC_inminigame] run attribute @s minecraft:generic.max_health base set 20