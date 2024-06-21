bossbar set minecraft:hs_seekstatus visible true
bossbar set minecraft:hs_hidestatus visible true
bossbar set minecraft:hs_seekstatus players @a[tag=HS_inminigame,team=HS_seeker]
bossbar set minecraft:hs_hidestatus players @a[tag=HS_inminigame,team=HS_hider]
execute unless score HS_system HS_timer matches ..60 run bossbar set minecraft:hs_hidestatus name {"text":"Don't get found, or else...","color":"yellow"}
execute unless score HS_system HS_timer matches ..60 run bossbar set minecraft:hs_seekstatus name {"text":"FIND THEM ALL OR ELSE","color":"yellow"}
execute unless score HS_system HS_timer matches ..60 run bossbar set minecraft:hs_hidestatus color yellow
execute unless score HS_system HS_timer matches ..60 run bossbar set minecraft:hs_seekstatus color yellow

scoreboard players add HS_system HS_timerm 1
execute if score HS_system HS_timerm matches 20.. run scoreboard players remove HS_system HS_timer 1
execute if score HS_system HS_timerm matches 20.. run scoreboard players remove HS_system HS_timerm 20

scoreboard players operation HS_system HS_stimercalc = HS_system HS_timer 
scoreboard players operation HS_system HS_stimercalc *= HS_system HS_100mult 
scoreboard players operation HS_system HS_stimercalc /= HS_system HS_btimer

scoreboard players operation HS_system HS_htimercalc = HS_system HS_timer 
scoreboard players operation HS_system HS_htimercalc *= HS_system HS_100mult 
scoreboard players operation HS_system HS_htimercalc /= HS_system HS_btimer
scoreboard players remove HS_system HS_htimercalc 100
scoreboard players operation HS_system HS_htimercalc *= HS_system HS_negmult

execute if score HS_system HS_timer matches ..60 run scoreboard players add HS_system HS_timerflash 1

execute if score HS_system HS_timerflash matches 10 run bossbar set minecraft:hs_hidestatus name {"text":"Don't get found, or else...","color":"green"}
execute if score HS_system HS_timerflash matches 10 run bossbar set minecraft:hs_seekstatus name {"text":"FIND THEM ALL OR ELSE","color":"red"}
execute if score HS_system HS_timerflash matches 10 run bossbar set minecraft:hs_hidestatus color green
execute if score HS_system HS_timerflash matches 10 run bossbar set minecraft:hs_seekstatus color red
execute if score HS_system HS_timerflash matches 20 run bossbar set minecraft:hs_hidestatus name {"text":"Don't get found, or else...","color":"yellow"}
execute if score HS_system HS_timerflash matches 20 run bossbar set minecraft:hs_seekstatus name {"text":"FIND THEM ALL OR ELSE","color":"yellow"}
execute if score HS_system HS_timerflash matches 20 run bossbar set minecraft:hs_hidestatus color yellow
execute if score HS_system HS_timerflash matches 20 run bossbar set minecraft:hs_seekstatus color yellow
execute if score HS_system HS_timerflash matches 20.. run scoreboard players set HS_system HS_timerflash 0

execute store result bossbar minecraft:hs_seekstatus value run scoreboard players get HS_system HS_stimercalc
execute store result bossbar minecraft:hs_hidestatus value run scoreboard players get HS_system HS_htimercalc

setblock -447 8 -432 air

execute as @a[tag=HS_inminigame] unless score @s HS_gameid = HS_system HS_gameid run gamemode spectator @s
execute as @a[tag=HS_inminigame] unless score @s HS_gameid = HS_system HS_gameid run title @s actionbar [{"text":"You will be able to join next round in ","color":"green"},{"score":{"name":"HS_system","objective":"HS_timer"},"color":"gold"},{"text":" seconds.","color":"green"}]

effect give @a[tag=HS_inminigame] saturation 1 0 true

effect give @a[team=HS_seeker] strength 1 0 true
effect give @a[team=HS_seeker] speed 1 1 true

execute as @a[team=HS_seeker] run item replace entity @s hotbar.0 with bow
execute as @a[team=HS_seeker] run item replace entity @s hotbar.1 with arrow
execute as @a[team=HS_hider] run item replace entity @s weapon.offhand with shield

kill @e[type=item,x=0]

execute as @a[team=HS_seeker,tag=HS_inminigame] run attribute @s minecraft:generic.max_health base set 20
execute as @a[team=HS_hider,tag=HS_inminigame] run attribute @s minecraft:generic.max_health base set 2

gamemode adventure @a[gamemode=survival,tag=HS_inminigame]

#to do cutscene
execute if score HS_system HS_timer matches ..0 if entity @a[tag=HS_inminigame,team=HS_hider] run scoreboard players set HS_system HS_opmode 6
execute if score HS_system HS_timer matches ..0 if entity @a[tag=HS_inminigame,team=HS_hider] as @a[tag=HS_inminigame,team=HS_seeker] run scoreboard players add HS_system HS_totalshealth 20
execute if score HS_system HS_timer matches ..0 if entity @a[tag=HS_inminigame,team=HS_hider] as @a[tag=HS_inminigame,team=HS_seeker] run scoreboard players add HS_system HS_finalseekers 1
execute if score HS_system HS_timer matches ..0 if entity @a[tag=HS_inminigame,team=HS_hider] as @a[tag=HS_inminigame,team=HS_seeker] run tag @s add HS_finalseeker
execute if score HS_system HS_timer matches ..0 if entity @a[tag=HS_inminigame,team=HS_hider] as @a[tag=HS_inminigame,team=HS_hider] run tag @s add HS_finalhider

execute as @a[team=HS_hider,scores={HS_sprinting=1..}] run title @s actionbar {"text":"Sprinting will reveal your location","color":"red"}
execute as @a[team=HS_hider,scores={HS_sprinting=1..}] run effect give @s glowing 1 0 true

execute as @a[team=HS_hider,scores={HS_hasDied=1..}] run scoreboard players add HS_system HS_timer 30
execute as @a[team=HS_hider,scores={HS_hasDied=1..}] run title @s title {"text":"YOU DIED","color":"red"}
execute as @a[team=HS_hider,scores={HS_hasDied=1..}] run title @s subtitle {"text":"You are now a seeker!","color":"gold"}
execute as @a[team=HS_hider,scores={HS_hasDied=1..}] run tag @s add HS_seektorture
execute as @a[team=HS_hider,scores={HS_hasDied=1..}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[team=HS_hider,scores={HS_hasDied=1..}] run effect give @s instant_health 1 9 true
execute as @a[team=HS_hider,scores={HS_hasDied=1..}] run team join HS_seeker @s

scoreboard players set HS_system HS_cutscenetimer 0
scoreboard players set HS_system HS_colortimer 0
scoreboard players set HS_system HS_badtimer 0

execute unless score HS_system HS_debug matches 1 unless entity @a[team=HS_hider,tag=HS_inminigame] run scoreboard players set @a[tag=HS_inminigame] HS_hasDied 0
execute unless score HS_system HS_debug matches 1 unless entity @a[team=HS_hider,tag=HS_inminigame] run scoreboard players set HS_system HS_opmode 5

execute if score HS_system HS_opmode matches 5.. as @a[tag=HS_inminigame] unless score @s HS_gameid = HS_system HS_gameid run tag @s remove HS_seektorture
execute if score HS_system HS_opmode matches 5.. as @a[tag=HS_inminigame] unless score @s HS_gameid = HS_system HS_gameid run scoreboard players set @s HS_hasDied 0