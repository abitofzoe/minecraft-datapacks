#Add objectives
scoreboard objectives add HS_ingame dummy

scoreboard objectives add HS_hasDied deathCount
scoreboard objectives add HS_worldtimeout dummy
scoreboard objectives add HS_opmode dummy
scoreboard objectives add HS_debug dummy
scoreboard objectives add HS_opcall trigger
scoreboard objectives add HS_gameid dummy

scoreboard objectives add HS_cutscenetimer dummy
scoreboard objectives add HS_colortimer dummy
scoreboard objectives add HS_badtimer dummy

scoreboard objectives add HS_finalseekers dummy
scoreboard objectives add HS_totalshealth dummy
scoreboard objectives add HS_currshealth dummy

scoreboard objectives add HS_timer dummy
scoreboard objectives add HS_timerm dummy
scoreboard objectives add HS_btimer dummy
scoreboard objectives add HS_stimercalc dummy
scoreboard objectives add HS_htimercalc dummy
scoreboard objectives add HS_timerflash dummy
scoreboard objectives add HS_100mult dummy
scoreboard objectives add HS_60mult dummy
scoreboard objectives add HS_negmult dummy
scoreboard objectives add HS_bplayers dummy
scoreboard objectives add HS_calcbar dummy
scoreboard objectives add HS_preptimer dummy
scoreboard objectives add HS_preptimerm dummy

scoreboard objectives add HS_sprinting minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add HS_jumping minecraft.custom:minecraft.sprint_one_cm

scoreboard players set HS_system HS_100mult 100
scoreboard players set HS_system HS_60mult 60
scoreboard players set HS_system HS_negmult -1

execute in minecraft:hideandseekown run gamerule mobGriefing false
execute in minecraft:hideandseekown run gamerule naturalRegeneration true
execute in minecraft:hideandseekown run gamerule fallDamage false
execute in minecraft:hideandseekown run gamerule doImmediateRespawn true

scoreboard objectives add HS_hubsent trigger

bossbar remove minecraft:hs_globalstatus
bossbar remove minecraft:hs_seekstatus
bossbar remove minecraft:hs_hidestatus

bossbar add hs_globalstatus {"text":"This minigame requires at least two (2) players to start!","color":"yellow"}
bossbar add hs_seekstatus {"text":"Find hiders...","color":"yellow"}
bossbar add hs_hidestatus {"text":"Don't get found, or else...","color":"yellow"}
bossbar add hs_torture_h {"text":"Finish them to win!","color":"aqua"}
bossbar add hs_torture_s {"text":"You are about to get finished off!","color":"red"}

bossbar set minecraft:hs_globalstatus style progress
bossbar set minecraft:hs_seekstatus style progress
bossbar set minecraft:hs_hidestatus style progress
bossbar set minecraft:hs_torture_h style progress
bossbar set minecraft:hs_torture_s style progress

bossbar set minecraft:hs_globalstatus visible true
bossbar set minecraft:hs_seekstatus visible true
bossbar set minecraft:hs_hidestatus visible true
bossbar set minecraft:hs_torture_h visible true
bossbar set minecraft:hs_torture_s visible true

bossbar set minecraft:hs_globalstatus max 100
bossbar set minecraft:hs_seekstatus max 100
bossbar set minecraft:hs_hidestatus max 100
bossbar set minecraft:hs_torture_h max 100
bossbar set minecraft:hs_torture_s max 100

team add HS_hider
team add HS_seeker
team modify HS_hider friendlyFire false
team modify HS_seeker friendlyFire false
team modify HS_hider nametagVisibility never
team modify HS_seeker nametagVisibility hideForOtherTeams

fill -338 4 -540 -334 7 -544 air

#tellraw @a [{"text":"Community-made Hide and Seek Datapack by","color":"green"},{"text":" abitofzoe","color":"aqua"},{"text":" Version 1.1 Loaded.","color":"green"}]
scoreboard objectives add HS_disguisekit minecraft.used:minecraft.fishing_rod 