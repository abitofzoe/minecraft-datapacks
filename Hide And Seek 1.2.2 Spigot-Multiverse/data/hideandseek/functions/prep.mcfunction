bossbar set minecraft:hs_seekstatus visible true
bossbar set minecraft:hs_hidestatus visible true
bossbar set minecraft:hs_seekstatus players @a[tag=HS_inminigame,team=HS_seeker]
bossbar set minecraft:hs_hidestatus players @a[tag=HS_inminigame,team=HS_hider]
bossbar set minecraft:hs_hidestatus name {"text":"Let them sleep...","color":"yellow"}
bossbar set minecraft:hs_seekstatus name {"text":"Let them hide...","color":"yellow"}
bossbar set minecraft:hs_hidestatus color yellow
bossbar set minecraft:hs_seekstatus color yellow

scoreboard players add HS_system HS_preptimerm 1
execute if score HS_system HS_preptimerm matches 20.. run scoreboard players remove HS_system HS_preptimer 1
execute if score HS_system HS_preptimerm matches 20.. run scoreboard players remove HS_system HS_preptimerm 20

scoreboard players operation HS_system HS_stimercalc = HS_system HS_preptimer 
scoreboard players operation HS_system HS_stimercalc *= HS_system HS_100mult 
scoreboard players operation HS_system HS_stimercalc /= HS_system HS_60mult
scoreboard players remove HS_system HS_stimercalc 100
scoreboard players operation HS_system HS_stimercalc *= HS_system HS_negmult

scoreboard players operation HS_system HS_htimercalc = HS_system HS_preptimer 
scoreboard players operation HS_system HS_htimercalc *= HS_system HS_100mult 
scoreboard players operation HS_system HS_htimercalc /= HS_system HS_60mult

execute store result bossbar minecraft:hs_seekstatus value run scoreboard players get HS_system HS_stimercalc
execute store result bossbar minecraft:hs_hidestatus value run scoreboard players get HS_system HS_htimercalc

setblock -447 8 -432 bedrock

execute positioned -447 4 -432 as @a[team=HS_seeker,distance=4..] run tp @s ~ ~ ~ 

execute as @a[tag=HS_inminigame] unless score @s HS_gameid = HS_system HS_gameid run gamemode spectator @s
execute as @a[tag=HS_inminigame] unless score @s HS_gameid = HS_system HS_gameid run title @s actionbar {"text":"You will be able to join next round.","color":"green"}

execute if score HS_system HS_preptimer matches ..0 run scoreboard players set HS_system HS_opmode 4

effect give @a[tag=HS_inminigame] saturation 1 0 true
effect give @a[tag=HS_seeker] strength 1 0 true
execute as @a[team=HS_seeker] run item replace entity @s hotbar.0 with bow
execute as @a[team=HS_seeker] run item replace entity @s hotbar.1 with arrow
execute as @a[team=HS_hider] run item replace entity @s weapon.offhand with shield

kill @e[type=item,x=0]

execute as @a[team=HS_seeker,tag=HS_inminigame] run attribute @s minecraft:generic.max_health base set 20
execute as @a[team=HS_hider,tag=HS_inminigame] run attribute @s minecraft:generic.max_health base set 2

gamemode adventure @a[gamemode=survival,tag=HS_inminigame]

execute as @a[team=HS_hider,scores={HS_sprinting=1..}] run title @s actionbar {"text":"Sprinting will reveal your location","color":"red"}