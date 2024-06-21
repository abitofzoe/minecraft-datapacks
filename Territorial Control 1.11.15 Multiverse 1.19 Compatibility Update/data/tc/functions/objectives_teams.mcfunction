#execute in minecraft:minigame run forceload add 98 -17 251 166 
#execute in minecraft:minigame run forceload add 47 -1 16 -25 

#Add objectives
scoreboard objectives add TC_actioncontrol dummy 
scoreboard objectives add applyEffects dummy
scoreboard objectives add prehit dummy
scoreboard objectives add respawnSplit dummy
scoreboard objectives add boom dummy
scoreboard objectives add arrowDrop dummy
scoreboard objectives add frontLiner dummy
scoreboard objectives add loss dummy
scoreboard objectives add hit dummy
scoreboard objectives add explodeArrow dummy
scoreboard objectives add dmgBonus dummy
scoreboard objectives add respawnTimer dummy
scoreboard objectives add isFront dummy
scoreboard objectives add test dummy
scoreboard objectives add soundRandom dummy
scoreboard objectives add test2 dummy
scoreboard objectives add arrowTimer dummy
scoreboard objectives add respawnMilli dummy
scoreboard objectives add front dummy
scoreboard objectives add time dummy
scoreboard objectives add smokeTimer dummy
scoreboard objectives add death deathCount
scoreboard objectives add xp level
scoreboard objectives add keyDrop minecraft.dropped:minecraft.name_tag
scoreboard objectives add suicide minecraft.dropped:minecraft.rotten_flesh
scoreboard objectives add cutWood minecraft.mined:minecraft.oak_log 
scoreboard objectives add kill playerKillCount
scoreboard objectives add useBow minecraft.used:minecraft.bow
scoreboard objectives add damageTake minecraft.custom:minecraft.damage_taken
scoreboard objectives add tookDamage minecraft.custom:minecraft.damage_taken
scoreboard objectives add disorient minecraft.custom:minecraft.damage_taken
scoreboard objectives add powerupTimer dummy {"text":"Power Up Spawning Timer"}
scoreboard objectives add hunger food {"text":"Half-Shanks"}
scoreboard objectives add health health {"text":"Half-Hearts"}
scoreboard objectives add suppress dummy {"text":"Suppression Value"}
scoreboard objectives add regen dummy {"text":"Health Regeneration Timer"}
scoreboard objectives add TC_maxhealth dummy
scoreboard objectives add TC_regenhealth dummy
scoreboard objectives add TC_itemtype dummy
scoreboard objectives add TC_emeraldtime dummy
scoreboard objectives add TC_leathertime dummy
scoreboard objectives add TC_coaltime dummy
scoreboard objectives add TC_goldtime dummy
scoreboard objectives add TC_irontime dummy
scoreboard objectives add TC_tips dummy
scoreboard objectives add TC_rpoints dummy {"text":"Red Team Info","color":"red"}
scoreboard objectives add TC_bpoints dummy {"text":"Blue Team Info","color":"blue"}
scoreboard objectives add TC_tbpoints dummy {"text":"Temp Team Points","color":"blue"}
scoreboard objectives add TC_trpoints dummy {"text":"Temp Team Points","color":"red"}
scoreboard objectives add TC_taction trigger 
scoreboard objectives add TC_key trigger 
scoreboard objectives add TC_tpointstimer dummy 
scoreboard objectives add TC_pointskill playerKillCount
scoreboard objectives add TC_trucetime dummy
scoreboard objectives add TC_totalplayers dummy
scoreboard objectives add TC_voteyes dummy
scoreboard objectives add TC_voteno dummy
scoreboard objectives add TC_votetimer dummy
scoreboard objectives add TC_rampage dummy
scoreboard objectives add TC_Yinitpos dummy
scoreboard objectives add TC_Yfinalpos dummy
scoreboard objectives add TC_settings trigger
scoreboard objectives add TC_set_sboost dummy
scoreboard objectives add TC_set_dust dummy
scoreboard objectives add TC_set_notif dummy
scoreboard objectives add TC_set_seffect dummy
scoreboard objectives add TC_set_tips dummy
scoreboard objectives add TC_speedmodif dummy
scoreboard objectives add TC_landminearm dummy
scoreboard objectives add TC_b_land dummy
scoreboard objectives add TC_r_land dummy
scoreboard objectives add TC_respawntime dummy
scoreboard objectives add TC_2div dummy
scoreboard objectives add TC_resources dummy
scoreboard objectives add TC_bextracting dummy
scoreboard objectives add TC_bextracttime dummy
scoreboard objectives add TC_rextracting dummy
scoreboard objectives add TC_rextracttime dummy
scoreboard objectives add TC_bpointsmax dummy
scoreboard objectives add TC_rpointsmax dummy
scoreboard objectives add TC_bextractups dummy
scoreboard objectives add TC_rextractups dummy
scoreboard objectives add TC_90mul dummy
scoreboard objectives add TC_10mul dummy
scoreboard objectives add TC_100div dummy
scoreboard objectives add TC_600div dummy
scoreboard objectives add TC_start trigger
scoreboard objectives add TC_halfrate dummy
scoreboard objectives add TC_bpointsmodif dummy
scoreboard objectives add TC_rpointsmodif dummy
scoreboard objectives add TC_bmaxguardhp dummy
scoreboard objectives add TC_rmaxguardhp dummy
scoreboard objectives add TC_bguardhpups dummy
scoreboard objectives add TC_rguardhpups dummy
scoreboard objectives add TC_bpointsups dummy
scoreboard objectives add TC_rpointsups dummy
scoreboard objectives add TC_btemppoints dummy
scoreboard objectives add TC_rtemppoints dummy
scoreboard objectives add TC_players dummy
scoreboard objectives add TC_giveBPoints dummy
scoreboard objectives add TC_giveRPoints dummy
scoreboard objectives add TC_tbGuardPoints dummy
scoreboard objectives add TC_trGuardPoints dummy
scoreboard objectives add TC_bKillPtsTimer dummy
scoreboard objectives add TC_rKillPtsTimer dummy
scoreboard objectives add TC_bDthPtsTimer dummy
scoreboard objectives add TC_rDthPtsTimer dummy
scoreboard objectives add TC_hasDied deathCount
scoreboard objectives add TC_brampage dummy
scoreboard objectives add TC_rrampage dummy
scoreboard objectives add TC_coalextract dummy
scoreboard objectives add TC_ironextract dummy
scoreboard objectives add TC_goldextract dummy
scoreboard objectives add TC_diamextract dummy
scoreboard objectives add TC_tcoalextract dummy
scoreboard objectives add TC_tironextract dummy
scoreboard objectives add TC_tgoldextract dummy
scoreboard objectives add TC_tdiamextract dummy
scoreboard objectives add TC_bextractmodif dummy
scoreboard objectives add TC_rextractmodif dummy
scoreboard objectives add TC_tbextractmod dummy
scoreboard objectives add TC_trextractmod dummy
scoreboard objectives add TC_blextractmod dummy
scoreboard objectives add TC_rlextractmod dummy
scoreboard objectives add TC_playersnum dummy
scoreboard objectives add TC_teamrand dummy
scoreboard objectives add TC_gameid dummy
scoreboard objectives add TC_gameswon dummy {"text":"Territorial Control games won","color":"green"}
scoreboard objectives add TC_help trigger 
scoreboard objectives add TC_gsettings trigger 
scoreboard objectives add TC_nightmode trigger 
scoreboard objectives add TC_poweruptime dummy
scoreboard objectives add TC_suicidedelay dummy
scoreboard objectives add TC_rename minecraft.used:minecraft.name_tag 
scoreboard objectives add TC_invistimer dummy
scoreboard objectives add TC_temphp dummy
scoreboard objectives add TC_attritiontime dummy
scoreboard objectives add TC_temphit dummy
scoreboard objectives add TC_supplygrace dummy
scoreboard objectives add TC_supplygracem dummy
scoreboard objectives add TC_supplygracemx dummy
scoreboard objectives add TC_extrasupplies dummy
scoreboard objectives add TC_outofsupply dummy
scoreboard objectives add TC_elytraflying dummy
scoreboard objectives add TC_2mul dummy
scoreboard objectives add TC_health dummy
scoreboard objectives add TC_totalhp dummy
scoreboard objectives add TC_debug dummy
scoreboard objectives add TC_lastguardteam dummy
scoreboard objectives add TC_chkencircle dummy
scoreboard objectives add TC_addmaxhp dummy
scoreboard objectives add TC_addmaxhptemp dummy
scoreboard objectives add TC_pulselastrot dummy
scoreboard objectives add TC_pulserepeat dummy
scoreboard objectives add TC_pulserepeat dummy
scoreboard objectives add TC_childspawned dummy
scoreboard objectives add TC_unharmedtime dummy
scoreboard objectives add TC_tickfinished dummy
scoreboard objectives add TC_tickfinishedc dummy
scoreboard objectives add TC_pausegame dummy
scoreboard objectives add TC_daytime dummy
scoreboard objectives add TC_nightpenalty dummy
scoreboard objectives add TC_gethpmode dummy
scoreboard objectives add TC_debug dummy
scoreboard objectives add TC_timeout dummy
scoreboard objectives add TC_lastteam dummy
scoreboard objectives add TC_worldtimeout dummy
scoreboard objectives add TC_hubsent trigger
execute in minecraft:minigame run gamerule naturalRegeneration false
team add powerup 
team add rshop4
team add rshop3
team add rshop2
team add rshop1
team add bshop1
team add bshop2
team add bshop3
team add bshop4
team add neutral
team add shopRed
team add shopBlue
team add red
team add blue
team modify blue collisionRule pushOtherTeams
team modify blue nametagVisibility hideForOtherTeams
team modify blue seeFriendlyInvisibles true
team modify blue deathMessageVisibility hideForOtherTeams
team modify red collisionRule pushOtherTeams
team modify red nametagVisibility hideForOtherTeams
team modify red seeFriendlyInvisibles true
team modify red deathMessageVisibility hideForOtherTeams

scoreboard objectives setdisplay sidebar.team.blue TC_bpoints
scoreboard objectives setdisplay sidebar.team.red TC_rpoints

scoreboard players set 2div TC_2div 2
scoreboard players set 10mul TC_10mul 10
scoreboard players set 2mul TC_2mul 2
scoreboard players set 90mul TC_90mul 90
scoreboard players set 100div TC_100div 100
scoreboard players set 600div TC_600div 600
execute unless score TC_system TC_debug matches 1 run scoreboard players set TC_system TC_pausegame 0

#scoreboard players set actioncontrol TC_actioncontrol 1

tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control Datapack for","color":"green"},{"text":" Territorial Control:","color":"aqua"},{"text":" Datapack Version 1.11.10 Loaded | Map Version 1.5.1 Loaded","color":"green"}]

bossbar remove minecraft:pausedgame

bossbar add pausedgame {"text":"Waiting up to 10 seconds for everything to load in...","color":"yellow"}
bossbar set minecraft:pausedgame color yellow
bossbar set minecraft:pausedgame max 200
bossbar set minecraft:pausedgame style notched_10

summon villager 34 10 -14 {Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.movement_speed",Base:0}],Silent:1,NoAI:1,Tags:["TC_inminigame","TC_testquery"]}
execute store result score TC_system TC_gethpmode run data get entity @e[tag=TC_inminigame,type=villager,limit=1,tag=TC_testquery] Attributes[0].Base 1
execute unless score TC_system TC_gethpmode matches 20 run scoreboard players set TC_system TC_gethpmode 1
execute if score TC_system TC_gethpmode matches 20 run scoreboard players set TC_system TC_gethpmode 0
kill @e[tag=TC_inminigame,type=villager,limit=1,tag=TC_testquery]