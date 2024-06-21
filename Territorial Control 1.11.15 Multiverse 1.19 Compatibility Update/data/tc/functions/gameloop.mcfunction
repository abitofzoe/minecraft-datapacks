scoreboard players set @a[tag=TC_inminigame] damageTake 0 
scoreboard players set @a[tag=TC_inminigame] tookDamage 0 
scoreboard players set @a[tag=TC_inminigame] disorient 0

##To fix: landmines
tag @e[tag=TC_inminigame,type=villager,tag=TC_guard] add TC_pulseconnected

execute as @e[tag=TC_inminigame,type=villager,tag=TC_redguard] run team join red @s[tag=TC_inminigame] 
execute as @e[tag=TC_inminigame,type=villager,tag=TC_blueguard] run team join blue @s[tag=TC_inminigame] 

#Elytra flight players
execute as @a[tag=TC_inminigame] store result score @s[tag=TC_inminigame] TC_elytraflying run data get entity @s[tag=TC_inminigame] FallFlying
tag @a[tag=TC_inminigame] remove TC_flying
tag @a[tag=TC_inminigame,scores={TC_elytraflying=1}] add TC_flying

#Reduce truce time
bossbar set minecraft:trucetime players @a[tag=TC_inminigame]
execute if score TC_trucetime TC_trucetime matches 1.. run scoreboard players remove TC_trucetime TC_trucetime 1
execute if score TC_trucetime TC_trucetime matches 1.. run effect give @e[tag=TC_inminigame,type=villager,tag=TC_guard] resistance 1 127 true
execute if score TC_trucetime TC_trucetime matches 1.. run effect give @e[tag=TC_inminigame,type=villager,tag=TC_guard] instant_health 1 0 true
execute if score TC_trucetime TC_trucetime matches 1.. run effect give @a[tag=TC_inminigame] saturation 1 0 true
execute if score TC_trucetime TC_trucetime matches 1.. run effect give @a[tag=TC_inminigame] resistance 1 127 true
execute if score TC_trucetime TC_trucetime matches 1.. run effect give @a[tag=TC_inminigame] instant_health 1 127 true
execute if score TC_trucetime TC_trucetime matches 1.. run scoreboard players set @a[tag=TC_inminigame] TC_supplygrace 100
execute if score TC_trucetime TC_trucetime matches 1.. run scoreboard players set @e[tag=TC_inminigame,type=villager,tag=TC_guard] front 0
execute if score TC_trucetime TC_trucetime matches 1.. run fill 175 4 0 174 64 149 bedrock
execute if score TC_trucetime TC_trucetime matches 1.. store result bossbar minecraft:trucetime value run scoreboard players get TC_trucetime TC_trucetime 
execute if score TC_trucetime TC_trucetime matches 1.. run bossbar set minecraft:trucetime visible true
execute if score TC_trucetime TC_trucetime matches 1 run fill 175 4 0 174 64 149 air
execute if score TC_trucetime TC_trucetime matches 1 run tellraw @a[tag=TC_inminigame,scores={TC_set_notif=1}] [{"text":"Territorial Control: ","color":"green"},{"text":"War! The truce has ended. You are now allowed to capture territory!","color":"white"}]
execute if score TC_trucetime TC_trucetime matches 1 run bossbar set minecraft:trucetime visible false

execute as @e[tag=TC_inminigame,type=villager,tag=TC_guard] if score @s[tag=TC_inminigame] TC_addmaxhp matches 1.. run function tc:increasemaxhealth

#No sneaking during truce
execute if score TC_trucetime TC_trucetime matches 1.. as @a[tag=TC_inminigame,scores={TC_set_notif=1},team=blue] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"You are not allowed to go into enemy territory during truce!","color":"white"}]
execute if score TC_trucetime TC_trucetime matches 1.. as @a[tag=TC_inminigame,team=blue] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run tp @s[tag=TC_inminigame] @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,limit=1,sort=nearest]
execute if score TC_trucetime TC_trucetime matches 1.. as @a[tag=TC_inminigame,scores={TC_set_notif=1},team=red] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"You are not allowed to go into enemy territory during truce!","color":"white"}]
execute if score TC_trucetime TC_trucetime matches 1.. as @a[tag=TC_inminigame,team=red] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run tp @s[tag=TC_inminigame] @e[tag=TC_inminigame,type=villager,tag=TC_redguard,limit=1,sort=nearest]

#Guard resistance
execute unless score TC_system TC_nightpenalty matches 1 unless score TC_TeamActions TC_rrampage matches 1.. as @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_guard] at @s[tag=TC_inminigame] run effect give @s[tag=TC_inminigame] resistance 1 2 true
execute unless score TC_system TC_nightpenalty matches 1 unless score TC_TeamActions TC_brampage matches 1.. as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_guard] at @s[tag=TC_inminigame] run effect give @s[tag=TC_inminigame] resistance 1 2 true
execute if score TC_system TC_nightpenalty matches 1 unless score TC_TeamActions TC_rrampage matches 1.. as @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_guard] at @s[tag=TC_inminigame] run effect give @s[tag=TC_inminigame] resistance 1 3 true
execute if score TC_system TC_nightpenalty matches 1 unless score TC_TeamActions TC_brampage matches 1.. as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_guard] at @s[tag=TC_inminigame] run effect give @s[tag=TC_inminigame] resistance 1 3 true
execute if score TC_system TC_nightpenalty matches 1 if score TC_TeamActions TC_rrampage matches 1.. as @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_guard] at @s[tag=TC_inminigame] run effect give @s[tag=TC_inminigame] resistance 1 1 true
execute if score TC_system TC_nightpenalty matches 1 if score TC_TeamActions TC_brampage matches 1.. as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_guard] at @s[tag=TC_inminigame] run effect give @s[tag=TC_inminigame] resistance 1 1 true

#Guard HP for display values
execute as @e[tag=TC_inminigame,type=villager,tag=TC_guard] store result score @s[tag=TC_inminigame] TC_health run data get entity @s[tag=TC_inminigame] Health 1
execute if score TC_system TC_gethpmode matches 0 as @e[tag=TC_inminigame,type=villager,tag=TC_guard] store result score @s[tag=TC_inminigame] TC_totalhp run data get entity @s[tag=TC_inminigame] Attributes.[0].Base 1
execute if score TC_system TC_gethpmode matches 1 as @e[tag=TC_inminigame,type=villager,tag=TC_guard] store result score @s[tag=TC_inminigame] TC_totalhp run data get entity @s[tag=TC_inminigame] Attributes.[1].Base 1

#Game over
execute unless score TC_system TC_debug matches 1 run execute unless entity @e[tag=TC_inminigame,type=villager,tag=TC_redguard] run scoreboard players set actioncontrol TC_actioncontrol 6
execute unless score TC_system TC_debug matches 1 run execute unless entity @e[tag=TC_inminigame,type=villager,tag=TC_blueguard] run scoreboard players set actioncontrol TC_actioncontrol 6

#Controlled territories calculation
execute store result score TC_territory TC_b_land if entity @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_guard]
execute store result score TC_territory TC_r_land if entity @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_guard]

#Night attack penalty
execute store result score TC_system TC_daytime run time query daytime
scoreboard players set TC_system TC_nightpenalty 0
execute if score TC_system TC_daytime matches 13500.. run scoreboard players set TC_system TC_nightpenalty 1

#Controlled Territories info
scoreboard players operation BlueTerritories TC_rpoints = TC_territory TC_b_land
scoreboard players operation RedTerritories TC_rpoints = TC_territory TC_r_land
scoreboard players operation BlueTerritories TC_bpoints = TC_territory TC_b_land
scoreboard players operation RedTerritories TC_bpoints = TC_territory TC_r_land

#Max health setting
scoreboard players add @e[tag=TC_inminigame,type=villager,tag=back,tag=!TC_gavemaxhpbonus] TC_addmaxhp 15
tag @e[tag=TC_inminigame,type=villager,tag=!TC_gavemaxhpbonus,tag=back] add TC_gavemaxhpbonus

#Spawn point HP bonus
scoreboard players add @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=!TC_extrasapawnhp] TC_addmaxhp 25
tag @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=!TC_extrasapawnhp] add TC_extrasapawnhp

#Guard reinforcement
scoreboard players set @e[tag=TC_inminigame,type=item,nbt={Item:{id:"minecraft:leather_chestplate"}}] TC_itemtype 1
scoreboard players set @e[tag=TC_inminigame,type=item,nbt={Item:{id:"minecraft:golden_chestplate"}}] TC_itemtype 2
scoreboard players set @e[tag=TC_inminigame,type=item,nbt={Item:{id:"minecraft:chainmail_chestplate"}}] TC_itemtype 3
scoreboard players set @e[tag=TC_inminigame,type=item,nbt={Item:{id:"minecraft:iron_chestplate"}}] TC_itemtype 4
scoreboard players set @e[tag=TC_inminigame,type=item,nbt={Item:{id:"minecraft:diamond_chestplate"}}] TC_itemtype 5
scoreboard players set @e[tag=TC_inminigame,type=item,nbt={Item:{id:"minecraft:emerald"}}] TC_itemtype 6

execute as @e[tag=TC_inminigame,type=item,scores={TC_itemtype=1}] at @s[tag=TC_inminigame] run scoreboard players add @e[tag=TC_inminigame,type=villager,distance=..1] TC_addmaxhp 2
execute as @e[tag=TC_inminigame,type=item,scores={TC_itemtype=2}] at @s[tag=TC_inminigame] run scoreboard players add @e[tag=TC_inminigame,type=villager,distance=..1] TC_addmaxhp 15
execute as @e[tag=TC_inminigame,type=item,scores={TC_itemtype=3}] at @s[tag=TC_inminigame] run scoreboard players add @e[tag=TC_inminigame,type=villager,distance=..1] TC_addmaxhp 5
execute as @e[tag=TC_inminigame,type=item,scores={TC_itemtype=4}] at @s[tag=TC_inminigame] run scoreboard players add @e[tag=TC_inminigame,type=villager,distance=..1] TC_addmaxhp 10
execute as @e[tag=TC_inminigame,type=item,scores={TC_itemtype=5}] at @s[tag=TC_inminigame] run scoreboard players add @e[tag=TC_inminigame,type=villager,distance=..1] TC_addmaxhp 25
execute as @e[tag=TC_inminigame,type=item,scores={TC_itemtype=6}] at @s[tag=TC_inminigame] run tag @e[tag=TC_inminigame,type=villager,distance=..1] add TC_emeraldtime

execute at @e[tag=TC_inminigame,type=villager,tag=TC_redguard] run kill @e[tag=TC_inminigame,type=item,scores={TC_itemtype=1..},distance=..1]
execute at @e[tag=TC_inminigame,type=villager,tag=TC_blueguard] run kill @e[tag=TC_inminigame,type=item,scores={TC_itemtype=1..},distance=..1]

scoreboard players add @e[tag=TC_inminigame,type=villager,tag=TC_emeraldtime] TC_emeraldtime 1
effect give @e[tag=TC_inminigame,type=villager,tag=TC_emeraldtime] resistance 1 127 true
effect give @e[tag=TC_inminigame,type=villager,tag=TC_emeraldtime] instant_health 1 0 true
execute as @e[tag=TC_inminigame,type=villager,tag=TC_emeraldtime] at @s[tag=TC_inminigame] run fill ~-7 ~-4 ~-7 ~7 ~-4 ~7 bedrock
execute as @e[tag=TC_inminigame,type=villager,tag=TC_emeraldtime,tag=TC_wasencircled,scores={TC_emeraldtime=300},tag=TC_blueguard] at @s[tag=TC_inminigame] unless entity @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=!TC_encircled,distance=1..16] run tag @s[tag=TC_inminigame] add TC_encircled
execute as @e[tag=TC_inminigame,type=villager,tag=TC_emeraldtime,tag=TC_wasencircled,scores={TC_emeraldtime=300},tag=TC_redguard] at @s[tag=TC_inminigame] unless entity @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=!TC_encircled,distance=1..16] run tag @s[tag=TC_inminigame] add TC_encircled
execute as @e[tag=TC_inminigame,type=villager,tag=TC_emeraldtime,tag=TC_redguard,tag=TC_encircled,scores={TC_emeraldtime=300}] at @s[tag=TC_inminigame] run fill ~-7 ~-4 ~-7 ~7 ~-4 ~7 red_concrete
execute as @e[tag=TC_inminigame,type=villager,tag=TC_emeraldtime,tag=TC_blueguard,tag=TC_encircled,scores={TC_emeraldtime=300}] at @s[tag=TC_inminigame] run fill ~-7 ~-4 ~-7 ~7 ~-4 ~7 blue_concrete
tag @e[tag=TC_inminigame,type=villager,tag=TC_emeraldtime,scores={TC_emeraldtime=300}] remove TC_wasencircled
tag @e[tag=TC_inminigame,type=villager,tag=TC_emeraldtime,scores={TC_emeraldtime=300}] remove TC_emeraldtime
scoreboard players reset @e[tag=TC_inminigame,type=villager,scores={TC_emeraldtime=300}] TC_emeraldtime
execute as @e[tag=TC_inminigame,type=villager,tag=TC_emeraldtime] at @s[tag=TC_inminigame] run particle minecraft:happy_villager ~ ~2.5 ~ 0.25 0.1 0.25 0 1 force

#Player logic loop
execute as @a[tag=TC_inminigame,team=red,gamemode=survival,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run gamemode adventure @s[tag=TC_inminigame] 
execute as @a[tag=TC_inminigame,team=blue,gamemode=survival,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run gamemode adventure @s[tag=TC_inminigame] 
execute as @a[tag=TC_inminigame,gamemode=adventure] at @s[tag=TC_inminigame] if block ~ 2 ~ #tc:frontlines run gamemode survival @s[tag=TC_inminigame] 
execute as @a[tag=TC_inminigame,team=blue,gamemode=adventure,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run effect give @s[tag=TC_inminigame] slowness 1 4 true
execute as @a[tag=TC_inminigame,team=blue,gamemode=adventure,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run effect give @s[tag=TC_inminigame] mining_fatigue 1 4 true
execute as @a[tag=TC_inminigame,team=blue,gamemode=adventure,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run effect give @s[tag=TC_inminigame] weakness 1 4 true
execute as @a[tag=TC_inminigame,team=red,gamemode=adventure,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run effect give @s[tag=TC_inminigame] slowness 1 4 true
execute as @a[tag=TC_inminigame,team=red,gamemode=adventure,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run effect give @s[tag=TC_inminigame] mining_fatigue 1 4 true
execute as @a[tag=TC_inminigame,team=red,gamemode=adventure,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run effect give @s[tag=TC_inminigame] weakness 1 4 true

execute as @a[tag=TC_inminigame,team=blue] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run effect give @s[tag=TC_inminigame] resistance 1 127 true
execute as @a[tag=TC_inminigame,team=red] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run effect give @s[tag=TC_inminigame] resistance 1 127 true

#give @a[tag=TC_inminigame,scores={keyDrop=1..},team=blue] name_tag{display:{Name:"{\"text\":\"Blue's key\"}",Lore:["Use to unlock your team's chest"]}} 1
#give @a[tag=TC_inminigame,scores={keyDrop=1..},team=red] name_tag{display:{Name:"{\"text\":\"Red's key\"}",Lore:["Use to unlock your team's chest"]}} 1
scoreboard players set @a[tag=TC_inminigame,scores={keyDrop=1..}] keyDrop 0

#item replace entity @a[tag=TC_inminigame,scores={respawnTimer=1..},team=blue] hotbar.8 with name_tag{display:{Name:"{\"text\":\"Blue's key\"}",Lore:["Use to unlock your team's chest"]}}
#item replace entity @a[tag=TC_inminigame,scores={respawnTimer=1..},team=red] hotbar.8 with name_tag{display:{Name:"{\"text\":\"Red's key\"}",Lore:["Use to unlock your team's chest"]}}
item replace entity @a[tag=TC_inminigame,scores={respawnTimer=1..}] inventory.8 with minecraft:rotten_flesh{display:{Name:"{\"text\":\"Respawn\"}",Lore:["Drop this to respawn."]}}

#Woodcutting bonus
xp add @a[tag=TC_inminigame,scores={cutWood=1..}] 5 points
scoreboard players add @a[tag=TC_inminigame,scores={cutWood=1}] soundRandom 1
scoreboard players set @a[tag=TC_inminigame,scores={soundRandom=6..}] soundRandom 0
execute as @a[tag=TC_inminigame,scores={cutWood=1..,soundRandom=0}] at @s[tag=TC_inminigame] run playsound minecraft:entity.experience_orb.pickup master @s[tag=TC_inminigame] ~ ~ ~ .25 1
execute as @a[tag=TC_inminigame,scores={cutWood=1..,soundRandom=1}] at @s[tag=TC_inminigame] run playsound minecraft:entity.experience_orb.pickup master @s[tag=TC_inminigame] ~ ~ ~ .25 1.3
execute as @a[tag=TC_inminigame,scores={cutWood=1..,soundRandom=2}] at @s[tag=TC_inminigame] run playsound minecraft:entity.experience_orb.pickup master @s[tag=TC_inminigame] ~ ~ ~ .25 0.9
execute as @a[tag=TC_inminigame,scores={cutWood=1..,soundRandom=3}] at @s[tag=TC_inminigame] run playsound minecraft:entity.experience_orb.pickup master @s[tag=TC_inminigame] ~ ~ ~ .25 1.25
execute as @a[tag=TC_inminigame,scores={cutWood=1..,soundRandom=4}] at @s[tag=TC_inminigame] run playsound minecraft:entity.experience_orb.pickup master @s[tag=TC_inminigame] ~ ~ ~ .25 1.5
execute as @a[tag=TC_inminigame,scores={cutWood=1..,soundRandom=5}] at @s[tag=TC_inminigame] run playsound minecraft:entity.experience_orb.pickup master @s[tag=TC_inminigame] ~ ~ ~ .25 1.15
scoreboard players remove @a[tag=TC_inminigame,scores={cutWood=1..}] cutWood 3

#Suicide
scoreboard players add @a[tag=TC_inminigame] TC_suicidedelay 0
tellraw @a[tag=TC_inminigame,scores={suicide=1,TC_suicidedelay=0}] [{"text":"Territorial Control: ","color":"green"},{"text":"Are you sure you want to respawn now? This will give the enemy team points!","color":"white"}]
tellraw @a[tag=TC_inminigame,scores={suicide=1,TC_suicidedelay=0}] [{"text":"Territorial Control: ","color":"green"},{"text":"Drop the respawn flesh again within 15 seconds to confirm.","color":"white"}]
scoreboard players set @a[tag=TC_inminigame,scores={suicide=1,TC_suicidedelay=0}] TC_suicidedelay 300
give @a[tag=TC_inminigame,scores={TC_suicidedelay=300}] minecraft:rotten_flesh{display:{Name:"{\"text\":\"Respawn\"}",Lore:["Drop this to respawn NOW."]}}
scoreboard players remove @a[tag=TC_inminigame,scores={TC_suicidedelay=1..}] TC_suicidedelay 1
tellraw @a[tag=TC_inminigame,scores={suicide=1,TC_suicidedelay=1}] [{"text":"Territorial Control: ","color":"green"},{"text":"Respawn cancelled.","color":"white"}]
scoreboard players set @a[tag=TC_inminigame,scores={suicide=1,TC_suicidedelay=1}] suicide 0

kill @a[tag=TC_inminigame,scores={suicide=2..,TC_suicidedelay=1..}]
scoreboard players reset @a[tag=TC_inminigame,scores={suicide=2..,TC_suicidedelay=1..}] suicide

scoreboard players add @a[tag=TC_inminigame,gamemode=survival,scores={hunger=18..,TC_supplygrace=1..}] regen 1
scoreboard players add @a[tag=TC_inminigame,gamemode=survival,scores={hunger=18..,TC_unharmedtime=0..599,tookDamage=0,TC_supplygrace=1..}] TC_unharmedtime 1
effect give @a[tag=TC_inminigame,scores={regen=60..,TC_unharmedtime=0..299}] regeneration 3 0 true
effect give @a[tag=TC_inminigame,scores={regen=60..,TC_unharmedtime=300..599}] regeneration 3 1 true
effect give @a[tag=TC_inminigame,scores={regen=60..,TC_unharmedtime=600}] regeneration 3 2 true
scoreboard players set @a[tag=TC_inminigame,scores={regen=60..}] regen 0
scoreboard players set @a[tag=TC_inminigame,scores={hunger=..17}] regen 0
scoreboard players set @a[tag=TC_inminigame,scores={suppress=1..}] regen 0
scoreboard players remove @a[tag=TC_inminigame,scores={suppress=1..}] suppress 1
execute as @a[tag=TC_inminigame,scores={tookDamage=1..}] run effect clear @s[tag=TC_inminigame] regeneration
scoreboard players set @a[tag=TC_inminigame,scores={tookDamage=1..}] suppress 100
scoreboard players set @a[tag=TC_inminigame,scores={tookDamage=1..}] TC_unharmedtime 0
scoreboard players set @a[tag=TC_inminigame,scores={tookDamage=1..}] tookDamage 0

#Speed boost calculation
execute as @a[tag=TC_inminigame,team=blue,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run scoreboard players add @s[tag=TC_inminigame] TC_speedmodif 1
execute as @a[tag=TC_inminigame,team=red,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run scoreboard players add @s[tag=TC_inminigame] TC_speedmodif 1

execute as @a[tag=TC_inminigame] at @s[tag=TC_inminigame] if block ~ ~ ~ #minecraft:rails run scoreboard players add @s[tag=TC_inminigame] TC_speedmodif 1
execute as @a[tag=TC_inminigame] at @s[tag=TC_inminigame] if block ~ ~ ~ powered_rail run scoreboard players add @s[tag=TC_inminigame] TC_speedmodif 1
execute as @a[tag=TC_inminigame] at @s[tag=TC_inminigame] if block ~ ~ ~ powered_rail[powered=true] run scoreboard players add @s[tag=TC_inminigame] TC_speedmodif 2

#Speed boost
effect give @a[tag=TC_inminigame,scores={TC_speedmodif=1,TC_set_sboost=1}] speed 1 1 true
effect give @a[tag=TC_inminigame,scores={TC_speedmodif=2,TC_set_sboost=1}] speed 1 3 true
effect give @a[tag=TC_inminigame,scores={TC_speedmodif=3,TC_set_sboost=1}] speed 1 5 true
effect give @a[tag=TC_inminigame,scores={TC_speedmodif=4,TC_set_sboost=1}] speed 1 7 true
effect give @a[tag=TC_inminigame,scores={TC_speedmodif=5,TC_set_sboost=1}] speed 1 9 true
scoreboard players set @a[tag=TC_inminigame] TC_speedmodif 0

#Guard Regeneration
execute as @e[tag=TC_inminigame,type=villager,nbt={HurtTime:10s}] run scoreboard players set @s[tag=TC_inminigame] TC_regenhealth -200
execute as @e[tag=TC_inminigame,type=villager,tag=!TC_encircled] if score @s[tag=TC_inminigame] TC_health < @s[tag=TC_inminigame] TC_totalhp run scoreboard players add @s[tag=TC_inminigame] TC_regenhealth 1

effect give @e[tag=TC_inminigame,type=villager,scores={TC_regenhealth=60..}] regeneration 3 0 true
execute as @e[tag=TC_inminigame,type=villager,scores={TC_regenhealth=60..}] at @s[tag=TC_inminigame] run particle minecraft:happy_villager ~ ~2.5 ~ 0 0 0 0 10 force
scoreboard players remove @e[tag=TC_inminigame,type=villager,scores={TC_regenhealth=60..}] TC_regenhealth 60

execute as @e[tag=TC_inminigame,type=armor_stand,tag=TC_guardspawnpoint] at @s[tag=TC_inminigame] positioned ~ 4 ~ if entity @e[tag=TC_inminigame,type=villager,distance=..1,tag=TC_blueguard] run scoreboard players set @s[tag=TC_inminigame] TC_lastguardteam 1
execute as @e[tag=TC_inminigame,type=armor_stand,tag=TC_guardspawnpoint] at @s[tag=TC_inminigame] positioned ~ 4 ~ if entity @e[tag=TC_inminigame,type=villager,distance=..1,tag=TC_redguard] run scoreboard players set @s[tag=TC_inminigame] TC_lastguardteam 2

execute at @e[tag=TC_inminigame,type=armor_stand,tag=TC_guardspawnpoint,scores={TC_lastguardteam=1}] positioned ~ 4 ~ unless entity @e[tag=TC_inminigame,type=villager,distance=..1] run function tc:spawnredguard
execute at @e[tag=TC_inminigame,type=armor_stand,tag=TC_guardspawnpoint,scores={TC_lastguardteam=2}] positioned ~ 4 ~ unless entity @e[tag=TC_inminigame,type=villager,distance=..1] run function tc:spawnblueguard

execute if score TC_guards TC_chkencircle matches 1 run function tc:encirclements
execute if score TC_guards TC_chkencircle matches 1 run scoreboard players set TC_guards TC_chkencircle 0

tag @e[tag=TC_inminigame,type=villager,tag=TC_propagate,tag=TC_checked] remove TC_propagate
tag @e[tag=TC_inminigame,type=villager,tag=TC_checked] remove TC_checked

#Guard idle logic loop
execute unless score TC_trucetime TC_trucetime matches 1.. run function tc:frontcheck

execute at @e[tag=TC_inminigame,type=villager,tag=TC_redguard,scores={front=1..}] run particle dust 255 0 0 1 ~ ~2.5 ~ 0 0 0 0 0 normal @a[tag=TC_inminigame,scores={TC_set_dust=1}]
execute at @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,scores={front=1..}] run particle dust 0 0 255 1 ~ ~2.5 ~ 0 0 0 0 0 normal @a[tag=TC_inminigame,scores={TC_set_dust=1}]

execute at @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_spawn] run particle dust 255 0 0 1 ~ ~32 ~ 0 32 0 0 64 force @a[tag=TC_inminigame]
execute at @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_spawn] run particle dust 0 0 255 1 ~ ~32 ~ 0 32 0 0 64 force @a[tag=TC_inminigame]

execute as @e[tag=TC_inminigame,type=villager,tag=TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run effect give @s[tag=TC_inminigame] instant_health 1 0 true
execute as @e[tag=TC_inminigame,type=villager,tag=TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run effect give @s[tag=TC_inminigame] resistance 1 127 true
execute as @e[tag=TC_inminigame,type=villager,tag=TC_bmerchant] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run kill @s[tag=TC_inminigame]

execute as @e[tag=TC_inminigame,type=villager,tag=TC_redguard] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run effect give @s[tag=TC_inminigame] instant_health 1 0 true
execute as @e[tag=TC_inminigame,type=villager,tag=TC_redguard] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run effect give @s[tag=TC_inminigame] resistance 1 127 true
execute as @e[tag=TC_inminigame,type=villager,tag=TC_rmerchant] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run kill @s[tag=TC_inminigame]

tag @e[tag=TC_inminigame,type=villager,tag=TC_encircled,scores={front=0}] remove TC_encircled
tag @e[tag=TC_inminigame,type=villager,tag=TC_emeraldtime,tag=TC_encircled] add TC_wasencircled
tag @e[tag=TC_inminigame,type=villager,tag=TC_emeraldtime,tag=TC_encircled] remove TC_encircled

execute at @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,scores={front=0}] run fill ~-7 ~-2 ~-7 ~7 ~-2 ~7 blue_concrete
execute at @e[tag=TC_inminigame,type=villager,tag=TC_redguard,scores={front=0}] run fill ~-7 ~-2 ~-7 ~7 ~-2 ~7 red_concrete
execute at @e[tag=TC_inminigame,type=villager,scores={front=1},tag=!TC_encircled,tag=TC_blueguard] run fill ~-7 ~-2 ~-7 ~7 ~-2 ~7 light_blue_concrete
execute at @e[tag=TC_inminigame,type=villager,scores={front=1},tag=!TC_encircled,tag=TC_redguard] run fill ~-7 ~-2 ~-7 ~7 ~-2 ~7 pink_concrete
execute at @e[tag=TC_inminigame,type=villager,scores={front=1},tag=TC_encircled] run fill ~-7 ~-2 ~-7 ~7 ~-2 ~7 yellow_concrete

#Guard encirclement penalty
scoreboard players set @e[tag=TC_inminigame,type=villager,tag=TC_guard,tag=!TC_encircled] TC_attritiontime 1
execute as @e[tag=TC_inminigame,type=villager,tag=TC_guard,tag=TC_encircled] run scoreboard players add @s[tag=TC_inminigame] TC_attritiontime 1
effect give @e[tag=TC_inminigame,type=villager,tag=TC_guard,tag=TC_encircled,scores={TC_attritiontime=60..}] poison 2 0 true
scoreboard players remove @e[tag=TC_inminigame,type=villager,tag=TC_guard,tag=TC_encircled,scores={TC_attritiontime=60..}] TC_attritiontime 60

#Player effects loop
scoreboard players add @a[tag=TC_inminigame,gamemode=!creative,gamemode=!spectator] applyEffects 1

effect give @a[tag=TC_inminigame,level=1..2,scores={applyEffects=30..,health=13..},gamemode=survival] speed 3 0 true
effect give @a[tag=TC_inminigame,level=3..,scores={applyEffects=30..,health=13..},gamemode=survival] speed 3 1 true
effect give @a[tag=TC_inminigame,level=5..,scores={applyEffects=30..,health=13..},gamemode=survival] fire_resistance 3 0 true
effect give @a[tag=TC_inminigame,level=7..,scores={applyEffects=30..,health=13..},gamemode=survival] water_breathing 3 0 true
effect give @a[tag=TC_inminigame,level=9..10,scores={applyEffects=30..,health=13..},gamemode=survival] jump_boost 3 0 true
effect give @a[tag=TC_inminigame,level=11..,scores={applyEffects=30..,health=13..},gamemode=survival] jump_boost 3 1 true
effect give @a[tag=TC_inminigame,level=12..13,scores={applyEffects=30..,health=13..},gamemode=survival] regeneration 3 1 true
effect give @a[tag=TC_inminigame,level=14..,scores={applyEffects=30..,health=13..},gamemode=survival] regeneration 3 2 true
effect give @a[tag=TC_inminigame,level=16..17,scores={applyEffects=30..,health=13..},gamemode=survival] strength 3 0 true
effect give @a[tag=TC_inminigame,level=18..,scores={applyEffects=30..,health=13..},gamemode=survival] strength 3 1 true
effect give @a[tag=TC_inminigame,level=20..,scores={applyEffects=30..,health=13..},gamemode=survival] saturation 1 0 true

effect give @a[tag=TC_inminigame,gamemode=!creative,gamemode=!spectator,scores={applyEffects=30..,TC_outofsupply=1..}] slowness 2 4 true
effect give @a[tag=TC_inminigame,gamemode=!creative,gamemode=!spectator,scores={applyEffects=30..,TC_outofsupply=60..}] mining_fatigue 2 1 true
effect give @a[tag=TC_inminigame,gamemode=!creative,gamemode=!spectator,scores={applyEffects=30..,TC_outofsupply=60..}] glowing 2 0 true
effect give @a[tag=TC_inminigame,gamemode=!creative,gamemode=!spectator,scores={applyEffects=30..,TC_outofsupply=200..}] hunger 2 24 true
effect give @a[tag=TC_inminigame,gamemode=!creative,gamemode=!spectator,scores={applyEffects=30..,TC_outofsupply=400..}] weakness 2 0 true
effect give @a[tag=TC_inminigame,gamemode=!creative,gamemode=!spectator,scores={applyEffects=30..,TC_outofsupply=600..}] poison 2 9 true

scoreboard players set @a[tag=TC_inminigame,scores={applyEffects=30..}] applyEffects 0

xp add @a[tag=TC_inminigame,scores={kill=1..}] 20 points
execute as @a[tag=TC_inminigame,scores={kill=1..}] at @s[tag=TC_inminigame] run playsound minecraft:entity.player.levelup master @s[tag=TC_inminigame] ~ ~ ~
scoreboard players set @a[tag=TC_inminigame,scores={kill=1..}] kill 0

xp add @a[tag=TC_inminigame,scores={damageTake=10..}] -1 points
scoreboard players remove @a[tag=TC_inminigame,scores={damageTake=10..}] damageTake 10

scoreboard players set @a[tag=TC_inminigame,scores={explodeArrow=1..}] explodeArrow 0 
scoreboard players set @a[tag=TC_inminigame,nbt={Inventory:[{Slot:-106b,id:"minecraft:blaze_rod",tag:{display:{Name:"{\"text\":\"Explosive Arrows\"}"}}}]}] explodeArrow 1

execute at @a[tag=TC_inminigame,scores={explodeArrow=1..,useBow=1..}] run tag @e[tag=TC_inminigame,type=arrow,distance=..3,limit=1,sort=nearest] add explode
clear @a[tag=TC_inminigame,scores={explodeArrow=1..,useBow=1..}] blaze_rod 1 
scoreboard players set @a[tag=TC_inminigame,scores={explodeArrow=1..,useBow=1..}] explodeArrow 0
scoreboard players set @a[tag=TC_inminigame,scores={useBow=1..}] useBow 0

scoreboard players set @a[tag=TC_minigame,scores={disorient=200..}] disorient 200
effect give @a[tag=TC_inminigame,scores={disorient=61..,health=..20}] nausea 4 0 true
effect give @a[tag=TC_inminigame,scores={disorient=101..,health=..20}] slowness 1 1 true
effect give @a[tag=TC_inminigame,scores={disorient=151..,health=..20}] weakness 1 0 true
scoreboard players remove @a[tag=TC_inminigame,scores={disorient=1..,health=..20}] disorient 1
scoreboard players set @a[tag=TC_inminigame,scores={disorient=1..,health=21..}] disorient 0

#Supply grace
execute as @a[tag=TC_inminigame] if score @s[tag=TC_inminigame] TC_supplygrace > @s[tag=TC_inminigame] TC_supplygracemx run scoreboard players operation @s[tag=TC_inminigame] TC_supplygrace = @s[tag=TC_inminigame] TC_supplygracemx

execute as @a[tag=TC_inminigame,tag=!TC_encircled] at @s[tag=TC_inminigame] unless entity @e[tag=TC_inminigame,type=villager,tag=TC_guard,tag=!TC_spawn,distance=..2.1] run title @s[tag=TC_inminigame] actionbar [{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]

execute as @a[tag=TC_inminigame,tag=!TC_encircled,team=blue] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_guard,tag=TC_blueguard,tag=TC_spawn,distance=2..11] run title @s[tag=TC_inminigame] actionbar [{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"},{"text":" | Blue Team spawn point Resistance II Bonus","color":"aqua"}]
execute as @a[tag=TC_inminigame,tag=!TC_encircled,team=red] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_guard,tag=TC_redguard,tag=TC_spawn,distance=2..11] run title @s[tag=TC_inminigame] actionbar [{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"},{"text":" | Red Team spawn point Resistance II Bonus","color":"gold"}]

#Actionbar health info
#Blue
execute as @a[tag=TC_inminigame] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=!TC_spawn,tag=TC_blueguard,tag=!TC_emeraldtime,distance=..2,scores={front=1}] run title @s[tag=TC_inminigame] actionbar ["",{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_health"},"color":"yellow"},{"text":"/","color":"blue"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"blue"},{"text":" Health Remaining | ","color":"blue"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]
execute as @a[tag=TC_inminigame] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=!TC_spawn,tag=TC_blueguard,tag=TC_emeraldtime,distance=..2,scores={front=1}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"EMERALD TIME! ","color":"green"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_health"},"color":"green"},{"text":"/","color":"blue"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"green"},{"text":" Health Remaining | ","color":"blue"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]
execute as @a[tag=TC_inminigame] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=!TC_spawn,tag=TC_blueguard,tag=!TC_emeraldtime,distance=..2,scores={front=0}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"IMMORTAL","color":"yellow"},{"text":"/","color":"blue"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"blue"},{"text":" Health Remaining | ","color":"blue"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]
execute as @a[tag=TC_inminigame] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=!TC_spawn,tag=TC_blueguard,tag=TC_emeraldtime,distance=..2,scores={front=0}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"EMERALD TIME! ","color":"green"},{"text":"IMMORTAL","color":"green"},{"text":"/","color":"blue"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"green"},{"text":" Health Remaining | ","color":"blue"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]

execute as @a[tag=TC_inminigame,team=blue] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_blueguard,tag=!TC_emeraldtime,distance=..2,scores={front=1}] run title @s[tag=TC_inminigame] actionbar ["",{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_health"},"color":"yellow"},{"text":"/","color":"blue"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"blue"},{"text":" Health Remaining | ","color":"blue"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"},{"text":" | Blue Team spawn point Resistance II Bonus","color":"aqua"}]
execute as @a[tag=TC_inminigame,team=blue] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_blueguard,tag=TC_emeraldtime,distance=..2,scores={front=1}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"EMERALD TIME! ","color":"green"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_health"},"color":"green"},{"text":"/","color":"blue"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"green"},{"text":" Health Remaining | ","color":"blue"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"},{"text":" | Blue Team spawn point Resistance II Bonus","color":"aqua"}]
execute as @a[tag=TC_inminigame,team=blue] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_blueguard,tag=!TC_emeraldtime,distance=..2,scores={front=0}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"IMMORTAL","color":"yellow"},{"text":"/","color":"blue"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"blue"},{"text":" Health Remaining | ","color":"blue"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"},{"text":" | Blue Team spawn point Resistance II Bonus","color":"aqua"}]
execute as @a[tag=TC_inminigame,team=blue] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_blueguard,tag=TC_emeraldtime,distance=..2,scores={front=0}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"EMERALD TIME! ","color":"green"},{"text":"IMMORTAL","color":"green"},{"text":"/","color":"blue"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"green"},{"text":" Health Remaining | ","color":"blue"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"},{"text":" | Blue Team spawn point Resistance II Bonus","color":"aqua"}]

execute as @a[tag=TC_inminigame,team=red] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_blueguard,tag=!TC_emeraldtime,distance=..2,scores={front=1}] run title @s[tag=TC_inminigame] actionbar ["",{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_health"},"color":"yellow"},{"text":"/","color":"blue"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"blue"},{"text":" Health Remaining | ","color":"blue"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]
execute as @a[tag=TC_inminigame,team=red] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_blueguard,tag=TC_emeraldtime,distance=..2,scores={front=1}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"EMERALD TIME! ","color":"green"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_health"},"color":"green"},{"text":"/","color":"blue"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"green"},{"text":" Health Remaining | ","color":"blue"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"}]
execute as @a[tag=TC_inminigame,team=red] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_blueguard,tag=!TC_emeraldtime,distance=..2,scores={front=0}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"IMMORTAL","color":"yellow"},{"text":"/","color":"blue"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"blue"},{"text":" Health Remaining | ","color":"blue"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]
execute as @a[tag=TC_inminigame,team=red] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_blueguard,tag=TC_emeraldtime,distance=..2,scores={front=0}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"EMERALD TIME! ","color":"green"},{"text":"IMMORTAL","color":"green"},{"text":"/","color":"blue"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"green"},{"text":" Health Remaining | ","color":"blue"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"}]

#Red
execute as @a[tag=TC_inminigame] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=!TC_spawn,tag=TC_redguard,tag=!TC_emeraldtime,distance=..2,scores={front=1}] run title @s[tag=TC_inminigame] actionbar ["",{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_health"},"color":"yellow"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"red"},{"text":" Health Remaining | ","color":"red"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]
execute as @a[tag=TC_inminigame] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=!TC_spawn,tag=TC_redguard,tag=TC_emeraldtime,distance=..2,scores={front=1}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"EMERALD TIME! ","color":"green"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_health"},"color":"green"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"green"},{"text":" Health Remaining | ","color":"red"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]
execute as @a[tag=TC_inminigame] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=!TC_spawn,tag=TC_redguard,tag=!TC_emeraldtime,distance=..2,scores={front=0}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"IMMORTAL","color":"yellow"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"red"},{"text":" Health Remaining | ","color":"red"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]
execute as @a[tag=TC_inminigame] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=!TC_spawn,tag=TC_redguard,tag=TC_emeraldtime,distance=..2,scores={front=0}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"EMERALD TIME! ","color":"green"},{"text":"IMMORTAL","color":"green"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"green"},{"text":" Health Remaining | ","color":"red"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]

execute as @a[tag=TC_inminigame,team=red] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard,tag=!TC_emeraldtime,distance=..2,scores={front=1}] run title @s[tag=TC_inminigame] actionbar ["",{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_health"},"color":"yellow"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"red"},{"text":" Health Remaining | ","color":"red"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"},{"text":" | Red Team spawn point Resistance II Bonus","color":"gold"}]
execute as @a[tag=TC_inminigame,team=red] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard,tag=TC_emeraldtime,distance=..2,scores={front=1}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"EMERALD TIME! ","color":"green"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_health"},"color":"green"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"green"},{"text":" Health Remaining | ","color":"red"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"},{"text":" | Red Team spawn point Resistance II Bonus","color":"gold"}]
execute as @a[tag=TC_inminigame,team=red] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard,tag=!TC_emeraldtime,distance=..2,scores={front=0}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"IMMORTAL","color":"yellow"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"red"},{"text":" Health Remaining | ","color":"red"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"},{"text":" | Red Team spawn point Resistance II Bonus","color":"gold"}]
execute as @a[tag=TC_inminigame,team=red] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard,tag=TC_emeraldtime,distance=..2,scores={front=0}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"EMERALD TIME! ","color":"green"},{"text":"IMMORTAL","color":"green"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"green"},{"text":" Health Remaining | ","color":"red"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"},{"text":" | Red Team spawn point Resistance II Bonus","color":"gold"}]

execute as @a[tag=TC_inminigame,team=blue] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard,tag=!TC_emeraldtime,distance=..2,scores={front=1}] run title @s[tag=TC_inminigame] actionbar ["",{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_health"},"color":"yellow"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"red"},{"text":" Health Remaining | ","color":"red"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]
execute as @a[tag=TC_inminigame,team=blue] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard,tag=TC_emeraldtime,distance=..2,scores={front=1}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"EMERALD TIME! ","color":"green"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_health"},"color":"green"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"green"},{"text":" Health Remaining | ","color":"red"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]
execute as @a[tag=TC_inminigame,team=blue] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard,tag=!TC_emeraldtime,distance=..2,scores={front=0}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"IMMORTAL","color":"yellow"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=!TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"red"},{"text":" Health Remaining | ","color":"red"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]
execute as @a[tag=TC_inminigame,team=blue] at @s[tag=TC_inminigame] if entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard,tag=TC_emeraldtime,distance=..2,scores={front=0}] run title @s[tag=TC_inminigame] actionbar ["",{"text":"EMERALD TIME! ","color":"green"},{"text":"IMMORTAL","color":"green"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_emeraldtime,distance=..2,sort=nearest,limit=1]","objective":"TC_totalhp"},"color":"green"},{"text":" Health Remaining | ","color":"red"},{"text":"Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]

scoreboard players add @a[tag=TC_inminigame,scores={TC_supplygrace=0}] TC_outofsupply 1
execute at @a[tag=TC_inminigame,scores={TC_supplygrace=0}] run kill @e[tag=TC_inminigame,type=firework_rocket,distance=..2]
scoreboard players set @a[tag=TC_inminigame,scores={TC_supplygrace=1..}] TC_outofsupply 0

#Player encirclement loop
execute as @a[tag=TC_inminigame,team=blue,tag=!TC_flying] at @s[tag=TC_inminigame] unless block ~ 2 ~ red_concrete if block ~ 0 ~ blue_concrete run tag @s[tag=TC_inminigame] add TC_encircled
execute as @a[tag=TC_inminigame,team=red,tag=!TC_flying] at @s[tag=TC_inminigame] unless block ~ 2 ~ blue_concrete if block ~ 0 ~ red_concrete run tag @s[tag=TC_inminigame] add TC_encircled
execute as @a[tag=TC_inminigame,tag=TC_encircled,team=blue] at @s[tag=TC_inminigame] unless block ~ 2 ~ red_concrete unless entity @e[tag=TC_inminigame,type=villager,tag=TC_guard,distance=..2.1] run title @s[tag=TC_inminigame] actionbar [{"text":"You are encircled! Get back to the ","color":"yellow"},{"text":"front lines","color":"aqua"},{"text":" or ","color":"yellow"},{"text":"secured territory","color":"blue"},{"text":"!","color":"yellow"},{"text":" | Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]
execute as @a[tag=TC_inminigame,tag=TC_encircled,team=red] at @s[tag=TC_inminigame] unless block ~ 2 ~ blue_concrete unless entity @e[tag=TC_inminigame,type=villager,tag=TC_guard,distance=..2.1] run title @s[tag=TC_inminigame] actionbar [{"text":"You are encircled! Get back to the ","color":"yellow"},{"text":"front lines","color":"light_purple"},{"text":" or ","color":"yellow"},{"text":"secured territory","color":"red"},{"text":"!","color":"yellow"},{"text":" | Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]
execute as @a[tag=TC_inminigame,tag=TC_encircled,team=blue] at @s[tag=TC_inminigame] unless block ~ 2 ~ red_concrete if block ~ 2 ~ #tc:blueblocks run tag @s[tag=TC_inminigame] remove TC_encircled 
execute as @a[tag=TC_inminigame,tag=TC_encircled,team=red] at @s[tag=TC_inminigame] unless block ~ 2 ~ blue_concrete if block ~ 2 ~ #tc:redblocks run tag @s[tag=TC_inminigame] remove TC_encircled 

execute as @a[tag=TC_inminigame,tag=!TC_encircled,team=red,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run title @s[tag=TC_inminigame] actionbar [{"text":"WARNING: You are in enemy territory. Get out!","color":"yellow"},{"text":" | Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]
execute as @a[tag=TC_inminigame,tag=!TC_encircled,team=blue,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run title @s[tag=TC_inminigame] actionbar [{"text":"WARNING: You are in enemy territory. Get out!","color":"yellow"},{"text":" | Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]

execute as @a[tag=TC_inminigame,tag=TC_encircled,team=red,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run title @s[tag=TC_inminigame] actionbar [{"text":"WARNING: You are in enemy territory. Get out!","color":"yellow"},{"text":" | Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]
execute as @a[tag=TC_inminigame,tag=TC_encircled,team=blue,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run title @s[tag=TC_inminigame] actionbar [{"text":"WARNING: You are in enemy territory. Get out!","color":"yellow"},{"text":" | Supply Status: ","color":"green"},{"score":{"name":"@s","objective":"TC_supplygrace"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"@s","objective":"TC_supplygracemx"},"color":"green"},{"text":"%","color":"green"}]

#Player Supply
execute as @a[tag=TC_inminigame,team=blue,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run scoreboard players remove @s[tag=TC_inminigame] TC_supplygracem 4
execute as @a[tag=TC_inminigame,team=blue,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ light_blue_concrete run scoreboard players remove @s[tag=TC_inminigame] TC_supplygracem 2

execute as @a[tag=TC_inminigame,team=red,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run scoreboard players remove @s[tag=TC_inminigame] TC_supplygracem 4
execute as @a[tag=TC_inminigame,team=red,tag=!TC_flying] at @s[tag=TC_inminigame] if block ~ 2 ~ pink_concrete run scoreboard players remove @s[tag=TC_inminigame] TC_supplygracem 2

scoreboard players add @a[tag=TC_inminigame,tag=TC_flying,gamemode=!creative,gamemode=!spectator] TC_supplygracem 4
scoreboard players add @a[tag=TC_inminigame,tag=!TC_flying,gamemode=!creative,gamemode=!spectator] TC_supplygracem 3
scoreboard players add @a[tag=TC_inminigame,tag=TC_encircled,gamemode=!creative,gamemode=!spectator] TC_supplygracem 5

scoreboard players remove @a[tag=TC_inminigame,scores={TC_supplygracem=40..,TC_supplygrace=1..}] TC_supplygrace 1
scoreboard players remove @a[tag=TC_inminigame,scores={TC_supplygracem=40..}] TC_supplygracem 40

scoreboard players add @a[tag=TC_inminigame,scores={TC_supplygracem=..-20}] TC_supplygrace 1
scoreboard players add @a[tag=TC_inminigame,scores={TC_supplygracem=..-20}] TC_supplygracem 20

#Dead player loop
tag @a[tag=TC_inminigame,scores={death=1..},gamemode=!spectator] add TC_tipme
scoreboard players operation @a[tag=TC_inminigame,scores={death=1..},gamemode=!spectator,team=blue] respawnTimer = TC_territory TC_b_land 
scoreboard players operation @a[tag=TC_inminigame,scores={death=1..},gamemode=!spectator,team=red] respawnTimer = TC_territory TC_r_land 
scoreboard players operation @a[tag=TC_inminigame,scores={death=1..},gamemode=!spectator] respawnTimer /= 2div TC_2div
scoreboard players operation @a[tag=TC_inminigame,scores={death=1..},gamemode=!spectator] respawnTimer /= 2div TC_2div
scoreboard players operation @a[tag=TC_inminigame,scores={death=1..},gamemode=!spectator] respawnTimer /= 2div TC_2div
scoreboard players add @a[tag=TC_inminigame,scores={death=1..},gamemode=!spectator] respawnTimer 5
scoreboard players set @a[tag=TC_inminigame,scores={death=1..},gamemode=!spectator] disorient 0
scoreboard players set @a[tag=TC_inminigame,scores={death=1..},gamemode=!spectator] TC_suicidedelay 0
scoreboard players set @a[tag=TC_inminigame,scores={death=1..},gamemode=!spectator] suicide 0
execute as @a[tag=TC_inminigame,scores={death=1..},gamemode=!spectator,team=blue] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run tp @s[tag=TC_inminigame] @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,limit=1,sort=random]
execute as @a[tag=TC_inminigame,scores={death=1..},gamemode=!spectator,team=red] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run tp @s[tag=TC_inminigame] @e[tag=TC_inminigame,type=villager,tag=TC_redguard,limit=1,sort=random]

title @a[tag=TC_inminigame,scores={death=1..},gamemode=!spectator] title {"text":"YOU ARE DEAD","color":"red"} 
gamemode spectator @a[tag=TC_inminigame,scores={death=1..},gamemode=!spectator]

scoreboard players add @a[tag=TC_inminigame,scores={death=1..,respawnTimer=0..}] respawnSplit 1
scoreboard players remove @a[tag=TC_inminigame,scores={death=1..,respawnTimer=0..,respawnSplit=2..}] respawnMilli 1
scoreboard players remove @a[tag=TC_inminigame,scores={death=1..,respawnTimer=0..,respawnSplit=2..}] respawnSplit 2
scoreboard players remove @a[tag=TC_inminigame,scores={death=1..,respawnTimer=0..,respawnMilli=..0}] respawnTimer 1
scoreboard players set @a[tag=TC_inminigame,scores={death=1..,respawnTimer=0..,respawnMilli=..0}] respawnMilli 9
execute as @a[tag=TC_inminigame,scores={death=1..,respawnTimer=0..},gamemode=spectator] run title @s[tag=TC_inminigame] actionbar ["",{"text":"Respawn in ","color":"yellow"},{"score":{"name":"@s","objective":"respawnTimer"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"@s","objective":"respawnMilli"},"color":"red"},{"text":" seconds.","color":"yellow"}]

scoreboard players set @a[tag=TC_inminigame,scores={respawnSplit=..0,respawnMilli=..0,respawnTimer=..-1,death=1..}] death 0
gamemode survival @a[tag=TC_inminigame,scores={respawnSplit=..0,respawnMilli=..0,respawnTimer=..-1}]

title @a[tag=TC_inminigame,scores={respawnSplit=..0,respawnMilli=..0,respawnTimer=..-1}] actionbar {"text":"Prepare to respawn.","color":"green"}
tp @a[tag=TC_inminigame,scores={respawnSplit=..0,respawnMilli=..0,respawnTimer=..-1},team=blue] @e[tag=TC_inminigame,type=villager,tag=TC_spawn,limit=1,tag=TC_blueguard]
tp @a[tag=TC_inminigame,scores={respawnSplit=..0,respawnMilli=..0,respawnTimer=..-1},team=red] @e[tag=TC_inminigame,type=villager,tag=TC_spawn,limit=1,tag=TC_redguard]
scoreboard players set @a[tag=TC_inminigame,scores={respawnSplit=..0,respawnMilli=..0,respawnTimer=..-1}] TC_supplygrace 1
scoreboard players set @a[tag=TC_inminigame,scores={respawnSplit=..0,respawnMilli=..0,respawnTimer=..-1}] TC_supplygracemx 100
scoreboard players reset @a[tag=TC_inminigame,scores={respawnSplit=..0,respawnMilli=..0,respawnTimer=..-1}] respawnTimer

#Entities logic loop
scoreboard players add @e[tag=TC_inminigame,type=creeper,tag=landmine,nbt={HurtTime:10s}] hit 1

scoreboard players set @e[tag=TC_inminigame,type=arrow,tag=explode,nbt={inGround:1b}] boom 1 
execute at @e[tag=TC_inminigame,type=arrow,tag=explode,scores={boom=1..}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2,CustomName:"{\"text\":\"Explosive Arrow\",\"color\":\"red\"}"}
kill @e[tag=TC_inminigame,type=arrow,tag=explode,scores={boom=1..}]
execute at @e[tag=TC_inminigame,type=arrow,tag=explode] run particle minecraft:damage_indicator ~ ~ ~ 0 0 0 0 1 force

kill @e[tag=TC_inminigame,type=item,nbt={Item:{id:"minecraft:name_tag"}}]
kill @e[tag=TC_inminigame,type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}]
kill @e[tag=TC_inminigame,type=item,nbt={Item:{id:"minecraft:light_blue_concrete"}}]
kill @e[tag=TC_inminigame,type=item,nbt={Item:{id:"minecraft:blue_concrete"}}]
kill @e[tag=TC_inminigame,type=item,nbt={Item:{id:"minecraft:red_concrete"}}]
kill @e[tag=TC_inminigame,type=item,nbt={Item:{id:"minecraft:pink_concrete"}}]
kill @e[tag=TC_inminigame,type=item,nbt={Item:{id:"minecraft:yellow_concrete"}}]
kill @e[tag=TC_inminigame,type=item,nbt={Item:{tag:{DoNotDrop:1}}}]

execute as @e[tag=TC_inminigame,type=creeper,tag=landmine,tag=!TC_init] run function tc:landmineinit

scoreboard players add @e[tag=TC_inminigame,type=creeper,tag=landmine,scores={TC_landminearm=..199}] TC_landminearm 1

execute at @e[tag=TC_inminigame,type=creeper,tag=landmine,scores={TC_landminearm=..199}] run particle crit ~ ~1.1 ~ 0 0 0 1 0 normal @a[tag=TC_inminigame,distance=..4]

execute at @e[tag=TC_inminigame,type=creeper,tag=landmine,tag=TC_bluemine,scores={TC_landminearm=200..}] run particle dust 0 0 255 1 ~ ~1 ~ 0.1 1 1 1 0 normal @a[tag=TC_inminigame,distance=..6]
execute at @e[tag=TC_inminigame,type=creeper,tag=landmine,tag=TC_redmine,scores={TC_landminearm=200..}] run particle dust 255 0 0 1 ~ ~1 ~ 0.1 1 1 1 0 normal @a[tag=TC_inminigame,distance=..6]

effect give @e[tag=TC_inminigame,type=creeper,tag=landmine] invisibility 5 0 true
kill @e[tag=TC_inminigame,type=creeper,tag=landmine,scores={hit=3..}]

execute as @a[tag=TC_inminigame,team=blue,gamemode=!creative,gamemode=!spectator] at @s[tag=TC_inminigame] positioned ~ ~-1 ~ run tp @e[tag=TC_inminigame,type=creeper,tag=landmine,tag=TC_redmine,distance=..1,limit=1,sort=nearest,scores={TC_landminearm=200..}] @s[tag=TC_inminigame]
execute as @a[tag=TC_inminigame,team=blue,gamemode=!creative,gamemode=!spectator] at @s[tag=TC_inminigame] run data merge entity @e[tag=TC_inminigame,type=creeper,tag=landmine,tag=TC_redmine,distance=..1,limit=1,sort=nearest,scores={TC_landminearm=200..}] {Fuse:0,ExplosionRadius:3,CustomName:"{\"text\":\"Landmine\",\"color\":\"red\"}"}

execute as @a[tag=TC_inminigame,team=red,gamemode=!creative,gamemode=!spectator] at @s[tag=TC_inminigame] positioned ~ ~-1 ~ run tp @e[tag=TC_inminigame,type=creeper,tag=landmine,tag=TC_bluemine,distance=..1,scores={TC_landminearm=200..}] @s[tag=TC_inminigame]
execute as @a[tag=TC_inminigame,team=red,gamemode=!creative,gamemode=!spectator] at @s[tag=TC_inminigame] run data merge entity @e[tag=TC_inminigame,type=creeper,tag=landmine,tag=TC_bluemine,distance=..1,limit=1,scores={TC_landminearm=200..}] {Fuse:0,ExplosionRadius:3,CustomName:"{\"text\":\"Landmine\",\"color\":\"blue\"}"}

execute at @e[tag=TC_inminigame,type=blaze,tag=missile] run summon fireball ~ ~1 ~ {ExplosionPower:3,direction:[0.0,0.0,0.0]}
kill @e[tag=TC_inminigame,type=blaze,tag=missile]

effect give @e[tag=TC_inminigame,type=silverfish,tag=smoke] invisibility 10000 0 true
scoreboard players add @e[tag=TC_inminigame,type=silverfish,tag=smoke] smokeTimer 1
execute at @e[tag=TC_inminigame,type=silverfish,tag=smoke,scores={smokeTimer=25..110}] run particle smoke ~ ~ ~ .5 .5 .5 0 1
execute at @e[tag=TC_inminigame,type=silverfish,tag=smoke,scores={smokeTimer=45..110}] run particle smoke ~ ~ ~ 1 1 1 0 1
execute at @e[tag=TC_inminigame,type=silverfish,tag=smoke,scores={smokeTimer=65..110}] run particle smoke ~ ~ ~ 1.5 1.5 1.5 0 1
execute at @e[tag=TC_inminigame,type=silverfish,tag=smoke,scores={smokeTimer=80..110}] run particle smoke ~ ~ ~ 2 2 2 0 1
execute at @e[tag=TC_inminigame,type=silverfish,tag=smoke,scores={smokeTimer=95..110}] run particle smoke ~ ~ ~ 3 3 3 0 1
execute at @e[tag=TC_inminigame,type=silverfish,tag=smoke,scores={smokeTimer=110..}] run particle cloud ~ ~ ~ 3 3 3 0 5
execute at @e[tag=TC_inminigame,type=silverfish,tag=smoke,scores={smokeTimer=50..110}] run effect give @a[tag=TC_inminigame,distance=..7] blindness 2 0
kill @e[tag=TC_inminigame,type=silverfish,tag=smoke,scores={smokeTimer=140}]

execute at @e[tag=TC_inminigame,type=armor_stand,tag=back] positioned ~ 4 ~ run tag @e[tag=TC_inminigame,type=villager,tag=!back,distance=..2] add back
execute at @e[tag=TC_inminigame,type=armor_stand,tag=TC_ogspawn_blue] positioned ~ 4 ~ run tag @e[tag=TC_inminigame,type=villager,tag=!TC_ogspawn_blue,distance=..2] add TC_ogspawn_blue
execute at @e[tag=TC_inminigame,type=armor_stand,tag=TC_ogspawn_red] positioned ~ 4 ~ run tag @e[tag=TC_inminigame,type=villager,tag=!TC_ogspawn_red,distance=..2] add TC_ogspawn_red

#Original spawn
execute as @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_ogspawn_blue,tag=!TC_spawn] run function tc:newspawn

execute as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_ogspawn_red,tag=!TC_spawn] run function tc:newspawn

#New spawn points
execute unless entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard] run function tc:newspawn
execute unless entity @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_blueguard] run function tc:newspawn

#Spawn resistance
execute at @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_blueguard] run effect give @a[tag=TC_inminigame,team=blue,distance=..11] resistance 1 1 true
execute at @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard] run effect give @a[tag=TC_inminigame,team=red,distance=..11] resistance 1 1 true

execute at @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard] run scoreboard players add @a[tag=TC_inminigame,distance=..11,team=red] TC_supplygrace 1
execute at @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_blueguard] run scoreboard players add @a[tag=TC_inminigame,distance=..11,team=blue] TC_supplygrace 1

#Merchant death loop
kill @e[tag=TC_inminigame,type=villager,tag=TC_merchant,scores={hit=15..}]

#Powerup loop
execute if score TC_trucetime TC_trucetime matches 0 run scoreboard players add powerupTimer powerupTimer 1
execute if score powerupTimer powerupTimer matches 2400.. as @e[tag=TC_inminigame,type=villager,sort=random,limit=1,scores={front=1},tag=!TC_encircled] run tag @s[tag=TC_inminigame] add poweringup
execute at @e[tag=TC_inminigame,type=villager,tag=poweringup] run particle happy_villager ~ ~ ~ 0 255 0 0 1000 force @a[tag=TC_inminigame,distance=..12]
execute as @e[tag=TC_inminigame,type=villager,tag=poweringup] run tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"A power-up has spawned.","color":"white"}]
execute at @e[tag=TC_inminigame,type=villager,tag=poweringup] run tellraw @a[tag=TC_inminigame,team=red,distance=..40] [{"text":"Territorial Control: ","color":"green"},{"text":"The power-up is available near your location.","color":"red"}]
execute at @e[tag=TC_inminigame,type=villager,tag=poweringup] run tellraw @a[tag=TC_inminigame,team=blue,distance=..40] [{"text":"Territorial Control: ","color":"green"},{"text":"The power-up is available near your location.","color":"blue"}]
execute at @e[tag=TC_inminigame,type=villager,tag=poweringup] run summon item ^ ^ ^3 {Item:{id:"minecraft:nether_star",Count:1b},Tags:["TC_inminigame","TC_powerupitem"]}
execute as @e[tag=TC_inminigame,type=villager,tag=poweringup] run scoreboard players set powerupTimer powerupTimer 0
tag @e[tag=TC_inminigame,type=villager,tag=poweringup] remove poweringup

#Powered up players
tag @a[tag=TC_inminigame,nbt={Inventory:[{id:"minecraft:nether_star"}]}] add poweredup 
effect give @a[tag=TC_inminigame,tag=poweredup] minecraft:health_boost 30 0 true
effect give @a[tag=TC_inminigame,tag=poweredup] minecraft:instant_health 1 0 true
effect give @a[tag=TC_inminigame,tag=poweredup] minecraft:speed 30 2 true
effect give @a[tag=TC_inminigame,tag=poweredup] minecraft:resistance 30 2 false
effect give @a[tag=TC_inminigame,tag=poweredup] minecraft:regeneration 30 2 true
effect give @a[tag=TC_inminigame,tag=poweredup] minecraft:saturation 200 0 true
effect give @a[tag=TC_inminigame,tag=poweredup] minecraft:jump_boost 30 1 true
effect give @a[tag=TC_inminigame,tag=poweredup] minecraft:fire_resistance 30 0 true
effect give @a[tag=TC_inminigame,tag=poweredup] minecraft:strength 30 0 false
xp add @a[tag=TC_inminigame,tag=poweredup] 50 points
scoreboard players add @a[tag=TC_inminigame,tag=poweredup] TC_supplygrace 100
scoreboard players add @a[tag=TC_inminigame,tag=poweredup] TC_supplygracemx 50
clear @a[tag=TC_inminigame,tag=poweredup] nether_star
execute as @a[tag=TC_inminigame,team=red,tag=poweredup] run tellraw @a[tag=TC_inminigame,team=blue] ["",{"selector":"@s","color":"red","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Run!","color":"red"}]}}},{"text":" got the power-up!","color":"red","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Run!","color":"red"}]}}}]
execute as @a[tag=TC_inminigame,team=red,tag=poweredup] run tellraw @a[tag=TC_inminigame,team=red] ["",{"selector":"@s","color":"red","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Fight!","color":"red"}]}}},{"text":" got the power-up!","color":"red","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Fight!","color":"red"}]}}}]
execute as @a[tag=TC_inminigame,team=blue,tag=poweredup] run tellraw @a[tag=TC_inminigame,team=red] ["",{"selector":"@s","color":"blue","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Run!","color":"blue"}]}}},{"text":" got the power-up!","color":"blue","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Run!","color":"blue"}]}}}]
execute as @a[tag=TC_inminigame,team=blue,tag=poweredup] run tellraw @a[tag=TC_inminigame,team=blue] ["",{"selector":"@s","color":"blue","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Fight!","color":"blue"}]}}},{"text":" got the power-up!","color":"blue","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Fight!","color":"blue"}]}}}]
execute as @a[tag=TC_inminigame,tag=poweredup] run scoreboard players set powerupTimer powerupTimer 0
execute as @a[tag=TC_inminigame,tag=poweredup] run scoreboard players set TC_poweruptime TC_poweruptime 0
tag @a[tag=TC_inminigame,tag=poweredup] remove poweredup

#Power up remover
execute if entity @e[tag=TC_inminigame,type=item,tag=TC_powerupitem] run scoreboard players add TC_poweruptime TC_poweruptime 1
execute if score TC_poweruptime TC_poweruptime matches 900.. run tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"The power-up has despawned.","color":"white"}]
execute if score TC_poweruptime TC_poweruptime matches 900.. run kill @e[tag=TC_inminigame,type=item,tag=TC_powerupitem]
execute if score TC_poweruptime TC_poweruptime matches 900.. run scoreboard players set TC_poweruptime TC_poweruptime 0

#Tips
scoreboard players add @a[tag=TC_inminigame,tag=TC_tipme] TC_tips 1
scoreboard players set @a[tag=TC_inminigame,tag=TC_tipme,scores={TC_tips=27..}] TC_tips 1
execute as @a[tag=TC_inminigame,tag=TC_tipme,scores={TC_set_tips=1}] run function tc:tips
tag @a[tag=TC_inminigame,tag=TC_tipme] remove TC_tipme

#Trigger key
scoreboard players set @a[tag=TC_inminigame,scores={TC_key=1..},team=!] keyDrop 1
execute as @a[tag=TC_inminigame,scores={TC_key=1..,TC_set_seffect=1}] at @s[tag=TC_inminigame] run playsound minecraft:block.note_block.pling master @s[tag=TC_inminigame] ~ ~ ~ 1 1
scoreboard players set @a[tag=TC_inminigame,scores={TC_key=1..}] TC_key 0

#Animal bonuses
execute as @e[tag=TC_inminigame,type=chicken,tag=!TC_redguard,tag=!TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run data merge entity @s[tag=TC_inminigame] {CustomName:"{\"text\":\"Blue Chicken\",\"color\":\"blue\"}",CustomNameVisible:1}
execute as @e[tag=TC_inminigame,type=chicken,tag=!TC_redguard,tag=!TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run tag @s[tag=TC_inminigame] add TC_blueguard

execute as @e[tag=TC_inminigame,type=cow,tag=!TC_redguard,tag=!TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run data merge entity @s[tag=TC_inminigame] {CustomName:"{\"text\":\"Blue Cow\",\"color\":\"blue\"}",CustomNameVisible:1}
execute as @e[tag=TC_inminigame,type=cow,tag=!TC_redguard,tag=!TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run tag @s[tag=TC_inminigame] add TC_blueguard

execute as @e[tag=TC_inminigame,type=pig,tag=!TC_redguard,tag=!TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run data merge entity @s[tag=TC_inminigame] {CustomName:"{\"text\":\"Blue Pig\",\"color\":\"blue\"}",CustomNameVisible:1}
execute as @e[tag=TC_inminigame,type=pig,tag=!TC_redguard,tag=!TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run tag @s[tag=TC_inminigame] add TC_blueguard

execute as @e[tag=TC_inminigame,type=sheep,tag=!TC_redguard,tag=!TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run data merge entity @s[tag=TC_inminigame] {CustomName:"{\"text\":\"Blue Sheep\",\"color\":\"blue\"}",CustomNameVisible:1}
execute as @e[tag=TC_inminigame,type=sheep,tag=!TC_redguard,tag=!TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run tag @s[tag=TC_inminigame] add TC_blueguard

execute as @e[tag=TC_inminigame,type=chicken,tag=!TC_redguard,tag=!TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run data merge entity @s[tag=TC_inminigame] {CustomName:"{\"text\":\"Red Chicken\",\"color\":\"red\"}",CustomNameVisible:1}
execute as @e[tag=TC_inminigame,type=chicken,tag=!TC_redguard,tag=!TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run tag @s[tag=TC_inminigame] add TC_redguard

execute as @e[tag=TC_inminigame,type=cow,tag=!TC_redguard,tag=!TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run data merge entity @s[tag=TC_inminigame] {CustomName:"{\"text\":\"Red Cow\",\"color\":\"red\"}",CustomNameVisible:1}
execute as @e[tag=TC_inminigame,type=cow,tag=!TC_redguard,tag=!TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run tag @s[tag=TC_inminigame] add TC_redguard

execute as @e[tag=TC_inminigame,type=pig,tag=!TC_redguard,tag=!TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run data merge entity @s[tag=TC_inminigame] {CustomName:"{\"text\":\"Red Pig\",\"color\":\"red\"}",CustomNameVisible:1}
execute as @e[tag=TC_inminigame,type=pig,tag=!TC_redguard,tag=!TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run tag @s[tag=TC_inminigame] add TC_redguard

execute as @e[tag=TC_inminigame,type=sheep,tag=!TC_redguard,tag=!TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run data merge entity @s[tag=TC_inminigame] {CustomName:"{\"text\":\"Red Sheep\",\"color\":\"red\"}",CustomNameVisible:1}
execute as @e[tag=TC_inminigame,type=sheep,tag=!TC_redguard,tag=!TC_blueguard] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run tag @s[tag=TC_inminigame] add TC_redguard

#Teampoints
execute store result score TeamPoints TC_giveBPoints if entity @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_guard] 
execute store result score TeamPoints TC_giveRPoints if entity @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_guard] 

scoreboard players operation TeamPoints TC_giveBPoints *= 2mul TC_2mul
scoreboard players operation TeamPoints TC_giveRPoints *= 2mul TC_2mul

execute as @e[tag=TC_inminigame,type=chicken,tag=TC_blueguard] run scoreboard players add TeamPoints TC_giveBPoints 1
execute as @e[tag=TC_inminigame,type=cow,tag=TC_blueguard] run scoreboard players add TeamPoints TC_giveBPoints 2
execute as @e[tag=TC_inminigame,type=pig,tag=TC_blueguard] run scoreboard players add TeamPoints TC_giveBPoints 1
execute as @e[tag=TC_inminigame,type=sheep,tag=TC_blueguard] run scoreboard players add TeamPoints TC_giveBPoints 1

execute as @e[tag=TC_inminigame,type=chicken,tag=TC_redguard] run scoreboard players add TeamPoints TC_giveRPoints 1
execute as @e[tag=TC_inminigame,type=cow,tag=TC_redguard] run scoreboard players add TeamPoints TC_giveRPoints 2
execute as @e[tag=TC_inminigame,type=pig,tag=TC_redguard] run scoreboard players add TeamPoints TC_giveRPoints 1
execute as @e[tag=TC_inminigame,type=sheep,tag=TC_redguard] run scoreboard players add TeamPoints TC_giveRPoints 1

scoreboard players operation TeamPoints TC_giveBPoints *= TeamPoints TC_bpointsmodif
scoreboard players operation TeamPoints TC_giveBPoints /= 100div TC_100div
execute if score TeamPoints TC_giveBPoints matches 1.. run scoreboard players operation TeamPoints TC_tbpoints += TeamPoints TC_giveBPoints

scoreboard players operation TeamPoints TC_giveRPoints *= TeamPoints TC_rpointsmodif
scoreboard players operation TeamPoints TC_giveRPoints /= 100div TC_100div
execute if score TeamPoints TC_giveRPoints matches 1.. run scoreboard players operation TeamPoints TC_trpoints += TeamPoints TC_giveRPoints

execute if score TeamPoints TC_tbpoints matches 600.. run function tc:teampoints/give/blue
execute if score TeamPoints TC_trpoints matches 600.. run function tc:teampoints/give/red

scoreboard players set TeamPoints TC_giveBPoints 0
scoreboard players set TeamPoints TC_giveRPoints 0

#Blue team points from kills
execute unless score TeamPoints TC_bKillPtsTimer matches 1.. as @a[tag=TC_inminigame,scores={TC_hasDied=1..},team=red] run scoreboard players add TeamPoints TC_bpointsmodif 300
execute as @a[tag=TC_inminigame,scores={TC_hasDied=1..},team=red] run scoreboard players set TeamPoints TC_bKillPtsTimer 900
execute as @a[tag=TC_inminigame,scores={TC_hasDied=1..},team=red] run bossbar set minecraft:btpointsboost visible true
execute as @a[tag=TC_inminigame,scores={TC_hasDied=1..},team=red] run tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"text":"Territorial Control: ","color":"green"},{"text":"+300% ","color":"blue"},{"text":"Team Points gain speed from kill.","color":"white"}]

#Red team points from kills
execute unless score TeamPoints TC_rKillPtsTimer matches 1.. as @a[tag=TC_inminigame,scores={TC_hasDied=1..},team=blue] run scoreboard players add TeamPoints TC_rpointsmodif 300
execute as @a[tag=TC_inminigame,scores={TC_hasDied=1..},team=blue] run scoreboard players set TeamPoints TC_rKillPtsTimer 900
execute as @a[tag=TC_inminigame,scores={TC_hasDied=1..},team=blue] run bossbar set minecraft:rtpointsboost visible true
execute as @a[tag=TC_inminigame,scores={TC_hasDied=1..},team=blue] run tellraw @a[tag=TC_inminigame,team=red,scores={TC_set_notif=1}] [{"text":"Territorial Control: ","color":"green"},{"text":"+300% ","color":"red"},{"text":"Team Points gain speed from kill.","color":"white"}]

#Blue team points reduction from death
execute unless score TeamPoints TC_bDthPtsTimer matches 1.. as @a[tag=TC_inminigame,scores={TC_hasDied=1..},team=blue] run scoreboard players remove TeamPoints TC_bpointsmodif 100
execute as @a[tag=TC_inminigame,scores={TC_hasDied=1..},team=blue] run scoreboard players set TeamPoints TC_bDthPtsTimer 400
execute as @a[tag=TC_inminigame,scores={TC_hasDied=1..},team=blue] run bossbar set minecraft:btpointsreduc visible true
execute as @a[tag=TC_inminigame,scores={TC_hasDied=1..},team=blue] run tellraw @a[tag=TC_inminigame,team=blue,scores={TC_set_notif=1}] [{"text":"Territorial Control: ","color":"green"},{"text":"-100% ","color":"yellow"},{"text":"Team Points gain speed from teammate death.","color":"white"}]

#Red team points reduction from death
execute unless score TeamPoints TC_rDthPtsTimer matches 1.. as @a[tag=TC_inminigame,scores={TC_hasDied=1..},team=red] run scoreboard players remove TeamPoints TC_rpointsmodif 100
execute as @a[tag=TC_inminigame,scores={TC_hasDied=1..},team=red] run scoreboard players set TeamPoints TC_rDthPtsTimer 400
execute as @a[tag=TC_inminigame,scores={TC_hasDied=1..},team=red] run bossbar set minecraft:rtpointsreduc visible true
execute as @a[tag=TC_inminigame,scores={TC_hasDied=1..},team=red] run tellraw @a[tag=TC_inminigame,team=red,scores={TC_set_notif=1}] [{"text":"Territorial Control: ","color":"green"},{"text":"-100% ","color":"yellow"},{"text":"Team Points gain speed from teammate death.","color":"white"}]

#Reset points from kills
scoreboard players set @a[tag=TC_inminigame,scores={TC_hasDied=1..}] TC_hasDied 0
scoreboard players set TeamPoints TC_btemppoints 0
scoreboard players set TeamPoints TC_rtemppoints 0

#Bossbar btpointsboost
bossbar set minecraft:btpointsboost players @a[tag=TC_inminigame,team=blue]
execute if score TeamPoints TC_bKillPtsTimer matches 1.. run scoreboard players remove TeamPoints TC_bKillPtsTimer 1
execute store result bossbar minecraft:btpointsboost value run scoreboard players get TeamPoints TC_bKillPtsTimer
execute if score TeamPoints TC_bKillPtsTimer matches 0 run bossbar set minecraft:btpointsboost visible false
execute if score TeamPoints TC_bKillPtsTimer matches 0 run scoreboard players remove TeamPoints TC_bpointsmodif 300
execute if score TeamPoints TC_bKillPtsTimer matches 0 run scoreboard players reset TeamPoints TC_bKillPtsTimer 

#Bossbar rtpointsboost
bossbar set minecraft:rtpointsboost players @a[tag=TC_inminigame,team=red]
execute if score TeamPoints TC_rKillPtsTimer matches 1.. run scoreboard players remove TeamPoints TC_rKillPtsTimer 1
execute store result bossbar minecraft:rtpointsboost value run scoreboard players get TeamPoints TC_rKillPtsTimer
execute if score TeamPoints TC_rKillPtsTimer matches 0 run bossbar set minecraft:rtpointsboost visible false
execute if score TeamPoints TC_rKillPtsTimer matches 0 run scoreboard players remove TeamPoints TC_rpointsmodif 300
execute if score TeamPoints TC_rKillPtsTimer matches 0 run scoreboard players reset TeamPoints TC_rKillPtsTimer

#Bossbar btpointsreduc
bossbar set minecraft:btpointsreduc players @a[tag=TC_inminigame,team=blue]
execute if score TeamPoints TC_bDthPtsTimer matches 1.. run scoreboard players remove TeamPoints TC_bDthPtsTimer 1
execute store result bossbar minecraft:btpointsreduc value run scoreboard players get TeamPoints TC_bDthPtsTimer
execute if score TeamPoints TC_bDthPtsTimer matches 0 run bossbar set minecraft:btpointsreduc visible false
execute if score TeamPoints TC_bDthPtsTimer matches 0 run scoreboard players add TeamPoints TC_bpointsmodif 100
execute if score TeamPoints TC_bDthPtsTimer matches 0 run scoreboard players reset TeamPoints TC_bDthPtsTimer

#Bossbar rtpointsreduc
bossbar set minecraft:rtpointsreduc players @a[tag=TC_inminigame,team=red]
execute if score TeamPoints TC_rDthPtsTimer matches 1.. run scoreboard players remove TeamPoints TC_rDthPtsTimer 1
execute store result bossbar minecraft:rtpointsreduc value run scoreboard players get TeamPoints TC_rDthPtsTimer
execute if score TeamPoints TC_rDthPtsTimer matches 0 run bossbar set minecraft:rtpointsreduc visible false
execute if score TeamPoints TC_rDthPtsTimer matches 0 run scoreboard players add TeamPoints TC_rpointsmodif 100
execute if score TeamPoints TC_rDthPtsTimer matches 0 run scoreboard players reset TeamPoints TC_rDthPtsTimer

#Max Team Points
execute if score TeamPoints TC_bpoints > TeamPoints TC_bpointsmax run scoreboard players operation TeamPoints TC_bpoints = TeamPoints TC_bpointsmax
execute if score TeamPoints TC_rpoints > TeamPoints TC_rpointsmax run scoreboard players operation TeamPoints TC_rpoints = TeamPoints TC_rpointsmax

#team actions
execute as @a[tag=TC_inminigame,scores={TC_taction=1}] run function tc:teamactions/taction1index

#Blue team action handling

#Fortify Front Lines (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=2}] if score TeamPoints TC_bpoints matches 150.. run function tc:teamactions/blue/taction2

#Last Stand (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=3}] if score TeamPoints TC_bpoints matches 300.. run function tc:teamactions/blue/taction3

#Give Experience (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=4}] if score TeamPoints TC_bpoints matches 100.. run function tc:teamactions/blue/taction4

#Instant respawn (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=5,respawnTimer=1..}] if score TeamPoints TC_bpoints matches 300.. run function tc:teamactions/blue/taction5

#1x Coal (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=6}] if score TeamPoints TC_bpoints matches 50.. run function tc:teamactions/blue/taction6

#1x Iron Ingot (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=7}] if score TeamPoints TC_bpoints matches 90.. run function tc:teamactions/blue/taction7

#1x Gold Ingot (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=8}] if score TeamPoints TC_bpoints matches 150.. run function tc:teamactions/blue/taction8

#Absorption Boost (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=10}] if score TeamPoints TC_bpoints matches 300.. run function tc:teamactions/blue/taction10

#Health Boost (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=11}] if score TeamPoints TC_bpoints matches 1000.. run function tc:teamactions/blue/taction11

#Haste Boost (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=15}] if score TeamPoints TC_bpoints matches 200.. run function tc:teamactions/blue/taction15

#Rampage (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=16}] if score TeamPoints TC_bpoints matches 750.. run function tc:teamactions/blue/taction16

#Instant Teleport (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=17}] if score TeamPoints TC_bpoints matches 100.. run function tc:teamactions/blue/taction17

#Extraction upgrade (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=18}] if score TeamPoints TC_bpoints matches 1000.. run function tc:teamactions/blue/taction18

#Increase max team points (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=19}] if score TeamPoints TC_bpoints matches 300.. run function tc:teamactions/blue/taction19

#Increase team points gain (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=20}] if score TeamPoints TC_bpoints matches 1000.. run function tc:teamactions/blue/taction20

#Guard max health increase (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=21}] if score TeamPoints TC_bpoints matches 1000.. run function tc:teamactions/blue/taction21

#1x Log (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=22}] if score TeamPoints TC_bpoints matches 30.. run function tc:teamactions/blue/taction22

#Instant Spawn Teleport (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=23}] if score TeamPoints TC_bpoints matches 300.. run function tc:teamactions/blue/taction23

#Extra supplies (blue)
execute as @a[tag=TC_inminigame,team=blue,scores={TC_taction=24}] if score TeamPoints TC_bpoints matches 400.. run function tc:teamactions/blue/taction24

#Red team action handling

#Fortify Front Lines (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=2}] if score TeamPoints TC_rpoints matches 150.. run function tc:teamactions/red/taction2

#Last Stand (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=3}] if score TeamPoints TC_rpoints matches 300.. run function tc:teamactions/red/taction3

#Give Experience (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=4}] if score TeamPoints TC_rpoints matches 100.. run function tc:teamactions/red/taction4

#Instant respawn (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=5,respawnTimer=1..}] if score TeamPoints TC_rpoints matches 300.. run function tc:teamactions/red/taction5

#1x Coal (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=6}] if score TeamPoints TC_rpoints matches 50.. run function tc:teamactions/red/taction6

#1x Iron Ingot (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=7}] if score TeamPoints TC_rpoints matches 90.. run function tc:teamactions/red/taction7

#1x Gold Ingot (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=8}] if score TeamPoints TC_rpoints matches 150.. run function tc:teamactions/red/taction8

#Absorption Boost (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=10}] if score TeamPoints TC_rpoints matches 300.. run function tc:teamactions/red/taction10

#Health Boost (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=11}] if score TeamPoints TC_rpoints matches 1000.. run function tc:teamactions/red/taction11

#Haste Boost (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=15}] if score TeamPoints TC_rpoints matches 200.. run function tc:teamactions/red/taction15

#Rampage (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=16}] if score TeamPoints TC_rpoints matches 750.. run function tc:teamactions/red/taction16

#Instant Teleport (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=17}] if score TeamPoints TC_rpoints matches 100.. run function tc:teamactions/red/taction17

#Extraction upgrade (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=18}] if score TeamPoints TC_rpoints matches 1000.. run function tc:teamactions/red/taction18

#Increase max team points (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=19}] if score TeamPoints TC_rpoints matches 300.. run function tc:teamactions/red/taction19

#Increase team points gain (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=20}] if score TeamPoints TC_rpoints matches 1000.. run function tc:teamactions/red/taction20

#Guard max health increase (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=21}] if score TeamPoints TC_rpoints matches 1000.. run function tc:teamactions/red/taction21

#1x Log (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=22}] if score TeamPoints TC_rpoints matches 30.. run function tc:teamactions/red/taction22

#Instant Spawn Teleport (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=23}] if score TeamPoints TC_rpoints matches 300.. run function tc:teamactions/red/taction23

#Extra supplies (red)
execute as @a[tag=TC_inminigame,team=red,scores={TC_taction=24}] if score TeamPoints TC_rpoints matches 400.. run function tc:teamactions/red/taction24

#Free tip
execute as @a[tag=TC_inminigame,scores={TC_taction=9}] run tag @s[tag=TC_inminigame] add TC_tipme

#Vote Restart game
execute if score TC_votes TC_totalplayers matches 0 as @a[tag=TC_inminigame,scores={TC_taction=12}] run tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"selector":"@s"},{"text":" has called a vote to ","color":"white"},{"text":"restart the game","color":"green"},{"text":". A majority vote is needed to pass.","color":"white"}]
execute if score TC_votes TC_totalplayers matches 0 as @a[tag=TC_inminigame,scores={TC_taction=12}] run tellraw @a[tag=TC_inminigame] ["",{"text":"Territorial Control: ","color":"green"},{"text":"Cast your votes!\n","color":"white"},{"text":"Yes ","color":"green","clickEvent":{"action":"run_command","value":"/trigger TC_taction set 13"}},{"text":"| ","color":"white"},{"text":"No","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger TC_taction set 14"}}]
execute if score TC_votes TC_totalplayers matches 0 as @a[tag=TC_inminigame,scores={TC_taction=12}] run scoreboard players set @a[tag=TC_inminigame] TC_voteyes 0
execute if score TC_votes TC_totalplayers matches 0 as @a[tag=TC_inminigame,scores={TC_taction=12}] run scoreboard players set @a[tag=TC_inminigame] TC_voteno 0
execute if score TC_votes TC_totalplayers matches 0 as @a[tag=TC_inminigame,scores={TC_taction=12}] run scoreboard players set TC_votes TC_votetimer 0

execute if score TC_votes TC_totalplayers matches 1.. as @a[tag=TC_inminigame,scores={TC_taction=12}] run tellraw @s[tag=TC_inminigame] ["",{"text":"Territorial Control: ","color":"green"},{"text":"Votings are already in progress!","color":"white"}]
execute if score TC_votes TC_totalplayers matches 1.. as @a[tag=TC_inminigame,scores={TC_taction=12}] run scoreboard players set @s[tag=TC_inminigame] TC_taction 0

execute as @a[tag=TC_inminigame,scores={TC_taction=12}] run execute as @a[tag=TC_inminigame] run scoreboard players set TC_votes TC_totalplayers 0
execute as @a[tag=TC_inminigame,scores={TC_taction=12}] run execute as @a[tag=TC_inminigame] run scoreboard players add TC_votes TC_totalplayers 1

execute as @a[tag=TC_inminigame,scores={TC_taction=12}] run scoreboard players set TC_votes TC_voteyes 0
execute as @a[tag=TC_inminigame,scores={TC_taction=12}] run scoreboard players set TC_votes TC_voteno 0

execute as @a[tag=TC_inminigame,scores={TC_taction=13..14,TC_voteno=1}] run tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"You already voted for ","color":"white"},{"text":"'No'","color":"yellow"},{"text":"!","color":"white"}]
execute as @a[tag=TC_inminigame,scores={TC_taction=13..14,TC_voteyes=1}] run tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"You already voted for ","color":"white"},{"text":"'Yes'","color":"green"},{"text":"!","color":"white"}]

execute as @a[tag=TC_inminigame,scores={TC_taction=13,TC_voteyes=1}] run scoreboard players set @s[tag=TC_inminigame] TC_taction 0
execute as @a[tag=TC_inminigame,scores={TC_taction=14,TC_voteno=1}] run scoreboard players set @s[tag=TC_inminigame] TC_taction 0

execute unless score TC_votes TC_votetimer matches 0 as @a[tag=TC_inminigame,scores={TC_taction=13,TC_voteno=0,TC_voteyes=0}] run scoreboard players set @s[tag=TC_inminigame] TC_voteyes 1
execute unless score TC_votes TC_votetimer matches 0 as @a[tag=TC_inminigame,scores={TC_taction=14,TC_voteyes=0,TC_voteno=0}] run scoreboard players set @s[tag=TC_inminigame] TC_voteno 1

execute if score TC_votes TC_votetimer matches 0 as @a[tag=TC_inminigame,scores={TC_taction=13}] run tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"Votings are already closed. Sorry!","color":"white"}]
execute if score TC_votes TC_votetimer matches 0 as @a[tag=TC_inminigame,scores={TC_taction=14}] run tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"Votings are already closed. Sorry!","color":"white"}]

execute as @a[tag=TC_inminigame,scores={TC_taction=13,TC_voteyes=1}] run tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"selector":"@s"},{"text":" has voted for ","color":"white"},{"text":"Yes","color":"green"}]
execute as @a[tag=TC_inminigame,scores={TC_taction=14,TC_voteno=1}] run tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"selector":"@s"},{"text":" has voted for ","color":"white"},{"text":"No","color":"yellow"}]

execute if score TC_votes TC_totalplayers matches 1.. run scoreboard players add TC_votes TC_votetimer 1

execute if score TC_votes TC_votetimer matches 300 run tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"15 more seconds to vote!","color":"white"}]
execute if score TC_votes TC_votetimer matches 300 run tellraw @a[tag=TC_inminigame] ["",{"text":"Territorial Control: ","color":"green"},{"text":"Cast your votes!\n","color":"white"},{"text":"Yes ","color":"green","clickEvent":{"action":"run_command","value":"/trigger TC_taction set 13"}},{"text":"| ","color":"white"},{"text":"No","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger TC_taction set 14"}}]

execute if score TC_votes TC_votetimer matches 500 run tellraw @a[tag=TC_inminigame,scores={TC_set_notif=1}] [{"text":"Territorial Control: ","color":"green"},{"text":"5 more seconds to vote!","color":"white"}]
execute if score TC_votes TC_votetimer matches 500 run tellraw @a[tag=TC_inminigame,scores={TC_set_notif=1}] ["",{"text":"Territorial Control: ","color":"green"},{"text":"Cast your votes!\n","color":"white"},{"text":"Yes ","color":"green","clickEvent":{"action":"run_command","value":"/trigger TC_taction set 13"}},{"text":"| ","color":"white"},{"text":"No","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger TC_taction set 14"}}]

execute if score TC_votes TC_votetimer matches 600 run tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"Votings are closed!","color":"white"}]

execute if score TC_votes TC_votetimer matches 600 as @a[tag=TC_inminigame,scores={TC_voteyes=1}] run scoreboard players add TC_votes TC_voteyes 1
execute if score TC_votes TC_votetimer matches 600 as @a[tag=TC_inminigame,scores={TC_voteno=1}] run scoreboard players add TC_votes TC_voteno 1

execute if score TC_votes TC_votetimer matches 600 run scoreboard players set @a[tag=TC_inminigame] TC_voteyes 0
execute if score TC_votes TC_votetimer matches 600 run scoreboard players set @a[tag=TC_inminigame] TC_voteno 0

execute if score TC_votes TC_votetimer matches 600 run tellraw @a[tag=TC_inminigame] ["",{"text":"Territorial Control: ","color":"green"},{"score":{"name":"TC_votes","objective":"TC_voteyes"},"color":"green"},{"text":" votes for ","color":"white"},{"text":"'Yes'","color":"green"},{"text":" versus ","color":"white"},{"score":{"name":"TC_votes","objective":"TC_voteno"},"color":"yellow"},{"text":" votes for ","color":"white"},{"text":"'No'","color":"yellow"},{"text":"!","color":"white"}]

#If votes are tied
execute if score TC_votes TC_votetimer matches 600.. if score TC_votes TC_voteno = TC_votes TC_voteyes run tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"The votes are tied! The game will continue.","color":"white"}]

#If yes is more than no
execute if score TC_votes TC_votetimer matches 600.. if score TC_votes TC_voteyes > TC_votes TC_voteno run tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"The votes are passed! The game will now restart.","color":"white"}]
execute if score TC_votes TC_votetimer matches 600.. if score TC_votes TC_voteyes > TC_votes TC_voteno run scoreboard players set actioncontrol TC_actioncontrol 2

#If no is more than yes
execute if score TC_votes TC_votetimer matches 600.. if score TC_votes TC_voteno > TC_votes TC_voteyes run tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"The votes are not passed! The game will continue.","color":"white"}]

#Reset votes
execute if score TC_votes TC_votetimer matches 600.. run scoreboard players set @a[tag=TC_inminigame] TC_voteyes 0
execute if score TC_votes TC_votetimer matches 600.. run scoreboard players set @a[tag=TC_inminigame] TC_voteno 0
execute if score TC_votes TC_votetimer matches 600.. run scoreboard players set TC_votes TC_voteyes 0
execute if score TC_votes TC_votetimer matches 600.. run scoreboard players set TC_votes TC_voteno 0
execute if score TC_votes TC_votetimer matches 600.. run scoreboard players set TC_votes TC_totalplayers 0
execute if score TC_votes TC_votetimer matches 600.. run scoreboard players set TC_votes TC_votetimer 0

#Sound effects (TC_taction)
execute as @a[tag=TC_inminigame,scores={TC_taction=2..,TC_set_seffect=1}] at @s[tag=TC_inminigame] run playsound minecraft:block.note_block.pling master @s[tag=TC_inminigame] ~ ~ ~ 1 1

#Reset taction
scoreboard players set @a[tag=TC_inminigame,scores={TC_taction=1..}] TC_taction 0

#No concrete allowed!
clear @a[tag=TC_inminigame,gamemode=!creative] red_concrete
clear @a[tag=TC_inminigame,gamemode=!creative] #tc:frontlines
clear @a[tag=TC_inminigame,gamemode=!creative] blue_concrete

#Gamemodes
execute as @a[tag=TC_inminigame,team=blue,gamemode=adventure] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run gamemode survival @s[tag=TC_inminigame]
execute as @a[tag=TC_inminigame,team=red,gamemode=adventure] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run gamemode survival @s[tag=TC_inminigame]

#Enemy territory glowing
execute as @a[tag=TC_inminigame,team=red] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run effect give @s[tag=TC_inminigame] glowing 1 0 true
execute as @a[tag=TC_inminigame,team=blue] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run effect give @s[tag=TC_inminigame] glowing 1 0 true

##Max health for guards
#execute as @e[tag=TC_inminigame,type=villager,tag=TC_guard,team=blue] if score @s[tag=TC_inminigame] TC_maxhealth > TC_guards TC_bmaxguardhp run scoreboard players operation @s[tag=TC_inminigame] TC_maxhealth = TC_guards TC_bmaxguardhp
#execute as @e[tag=TC_inminigame,type=villager,tag=TC_guard,team=red] if score @s[tag=TC_inminigame] TC_maxhealth > TC_guards TC_rmaxguardhp run scoreboard players operation @s[tag=TC_inminigame] TC_maxhealth = TC_guards TC_rmaxguardhp

#Rampage (blue)
bossbar set minecraft:brampage players @a[tag=TC_inminigame,team=blue]
execute if score TC_TeamActions TC_brampage matches 1.. store result bossbar minecraft:brampage value run scoreboard players get TC_TeamActions TC_brampage
execute if score TC_TeamActions TC_brampage matches 1.. run bossbar set minecraft:brampage visible true
execute if score TC_TeamActions TC_brampage matches 0 run bossbar set minecraft:brampage visible false
execute if score TC_TeamActions TC_brampage matches 1.. run scoreboard players remove TC_TeamActions TC_brampage 1
bossbar set minecraft:brampageenemy players @a[tag=TC_inminigame,team=red]
execute if score TC_TeamActions TC_brampage matches 1.. store result bossbar minecraft:brampageenemy value run scoreboard players get TC_TeamActions TC_brampage
execute if score TC_TeamActions TC_brampage matches 1.. run bossbar set minecraft:brampageenemy visible true
execute if score TC_TeamActions TC_brampage matches 0 run bossbar set minecraft:brampageenemy visible false

#Rampage (red)
bossbar set minecraft:rrampage players @a[tag=TC_inminigame,team=red]
execute if score TC_TeamActions TC_rrampage matches 1.. store result bossbar minecraft:rrampage value run scoreboard players get TC_TeamActions TC_rrampage
execute if score TC_TeamActions TC_rrampage matches 1.. run bossbar set minecraft:rrampage visible true
execute if score TC_TeamActions TC_rrampage matches 0 run bossbar set minecraft:rrampage visible false
execute if score TC_TeamActions TC_rrampage matches 1.. run scoreboard players remove TC_TeamActions TC_rrampage 1
bossbar set minecraft:rrampageenemy players @a[tag=TC_inminigame,team=blue]
execute if score TC_TeamActions TC_rrampage matches 1.. store result bossbar minecraft:rrampageenemy value run scoreboard players get TC_TeamActions TC_rrampage
execute if score TC_TeamActions TC_rrampage matches 1.. run bossbar set minecraft:rrampageenemy visible true
execute if score TC_TeamActions TC_rrampage matches 0 run bossbar set minecraft:rrampageenemy visible false

#Changing speed settings
execute as @a[tag=TC_inminigame,scores={TC_settings=2}] run scoreboard players set @s[tag=TC_inminigame] TC_set_sboost 1
execute as @a[tag=TC_inminigame,scores={TC_settings=3}] run scoreboard players set @s[tag=TC_inminigame] TC_set_sboost 0

#Changing dust settings
execute as @a[tag=TC_inminigame,scores={TC_settings=4}] run scoreboard players set @s[tag=TC_inminigame] TC_set_dust 1
execute as @a[tag=TC_inminigame,scores={TC_settings=5}] run scoreboard players set @s[tag=TC_inminigame] TC_set_dust 0

#Changing notification settings
execute as @a[tag=TC_inminigame,scores={TC_settings=6}] run scoreboard players set @s[tag=TC_inminigame] TC_set_notif 1
execute as @a[tag=TC_inminigame,scores={TC_settings=7}] run scoreboard players set @s[tag=TC_inminigame] TC_set_notif 0

#Changing sound effect settings
execute as @a[tag=TC_inminigame,scores={TC_settings=8}] run scoreboard players set @s[tag=TC_inminigame] TC_set_seffect 1
execute as @a[tag=TC_inminigame,scores={TC_settings=9}] run scoreboard players set @s[tag=TC_inminigame] TC_set_seffect 0

#Changing sound effect settings
execute as @a[tag=TC_inminigame,scores={TC_settings=10}] run scoreboard players set @s[tag=TC_inminigame] TC_set_tips 1
execute as @a[tag=TC_inminigame,scores={TC_settings=11}] run scoreboard players set @s[tag=TC_inminigame] TC_set_tips 0

#Sound effects (TC_settings)
execute as @a[tag=TC_inminigame,scores={TC_settings=2..,TC_set_seffect=1}] at @s[tag=TC_inminigame] run playsound minecraft:block.note_block.pling master @s[tag=TC_inminigame] ~ ~ ~ 1 1

#Personal settings
tellraw @a[tag=TC_inminigame,scores={TC_settings=1..}] {"text":"\nPersonal Settings","color":"green"}
tellraw @a[tag=TC_inminigame,scores={TC_settings=1..,TC_set_sboost=0}] ["",{"text":"Speed boost: ","color":"white"},{"text":"[DISABLED]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger TC_settings set 2"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Speed boost from territory and infrastructure.","color":"light_purple"}]}}}]
tellraw @a[tag=TC_inminigame,scores={TC_settings=1..,TC_set_sboost=1}] ["",{"text":"Speed boost: ","color":"white"},{"text":"[ENABLED]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TC_settings set 3"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Speed boost from territory and infrastructure.","color":"light_purple"}]}}}]
tellraw @a[tag=TC_inminigame,scores={TC_settings=1..,TC_set_dust=0}] ["",{"text":"Villager guard dust effect: ","color":"white"},{"text":"[DISABLED]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger TC_settings set 4"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"The dust above the heads of your guards.","color":"light_purple"}]}}}]
tellraw @a[tag=TC_inminigame,scores={TC_settings=1..,TC_set_dust=1}] ["",{"text":"Villager guard dust effect: ","color":"white"},{"text":"[ENABLED]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TC_settings set 5"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"The dust above the heads of your guards.","color":"light_purple"}]}}}]
tellraw @a[tag=TC_inminigame,scores={TC_settings=1..,TC_set_notif=0}] ["",{"text":"Notifications: ","color":"white"},{"text":"[DISABLED]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger TC_settings set 6"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Game notifications. Important ones will still be shown.","color":"light_purple"}]}}}]
tellraw @a[tag=TC_inminigame,scores={TC_settings=1..,TC_set_notif=1}] ["",{"text":"Notifications: ","color":"white"},{"text":"[ENABLED]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TC_settings set 7"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Game notifications. Important ones will still be shown.","color":"light_purple"}]}}}]
tellraw @a[tag=TC_inminigame,scores={TC_settings=1..,TC_set_seffect=0}] ["",{"text":"Sound effects: ","color":"white"},{"text":"[DISABLED]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger TC_settings set 8"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Sound effects when clicking things in chat.","color":"light_purple"}]}}}]
tellraw @a[tag=TC_inminigame,scores={TC_settings=1..,TC_set_seffect=1}] ["",{"text":"Sound effects: ","color":"white"},{"text":"[ENABLED]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TC_settings set 9"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Sound effects when clicking things in chat.","color":"light_purple"}]}}}]
tellraw @a[tag=TC_inminigame,scores={TC_settings=1..,TC_set_tips=0}] ["",{"text":"Death tips: ","color":"white"},{"text":"[DISABLED]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger TC_settings set 10"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Tips you may get when dying.","color":"light_purple"}]}}}]
tellraw @a[tag=TC_inminigame,scores={TC_settings=1..,TC_set_tips=1}] ["",{"text":"Death tips: ","color":"white"},{"text":"[ENABLED]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TC_settings set 11"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Tips you may get when dying.","color":"light_purple"}]}}}]

#Resources available
execute as @e[tag=TC_inminigame,type=armor_stand] at @s[tag=TC_inminigame] positioned ~ 4 ~ run scoreboard players operation @e[tag=TC_inminigame,type=villager,tag=TC_guard,distance=..1,tag=!TC_given] TC_resources = @s[tag=TC_inminigame] TC_resources

execute as @e[tag=TC_inminigame,type=villager,tag=!TC_given,scores={TC_resources=1}] run data merge entity @s[tag=TC_inminigame] {ArmorItems:[{},{},{},{id:"minecraft:coal",Count:1,tag:{DoNotDrop:1}}]}
execute as @e[tag=TC_inminigame,type=villager,tag=!TC_given,scores={TC_resources=2}] run data merge entity @s[tag=TC_inminigame] {ArmorItems:[{},{},{},{id:"minecraft:iron_ingot",Count:1,tag:{DoNotDrop:1}}]}
execute as @e[tag=TC_inminigame,type=villager,tag=!TC_given,scores={TC_resources=3}] run data merge entity @s[tag=TC_inminigame] {ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1,tag:{DoNotDrop:1}}]}
execute as @e[tag=TC_inminigame,type=villager,tag=!TC_given,scores={TC_resources=4}] run data merge entity @s[tag=TC_inminigame] {ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1,tag:{DoNotDrop:1}}]}
tag @e[tag=TC_inminigame,type=villager,tag=TC_guard,tag=!TC_given,scores={TC_resources=0..}] add TC_given

#Reset settings
scoreboard players set @a[tag=TC_inminigame,scores={TC_settings=1..}] TC_settings 0
scoreboard players set TC_territory TC_b_land 0
scoreboard players set TC_territory TC_r_land 0

#Resource extraction (blue)
bossbar set minecraft:bcoalextract visible true
bossbar set minecraft:bironextract visible true
bossbar set minecraft:bgoldextract visible true
bossbar set minecraft:bdiamextract visible true

execute as @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,scores={TC_resources=1},tag=!TC_encircled,tag=TC_pulseconnected] run scoreboard players add TC_bextract TC_tcoalextract 1
execute as @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,scores={TC_resources=2},tag=!TC_encircled,tag=TC_pulseconnected] run scoreboard players add TC_bextract TC_tironextract 1
execute as @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,scores={TC_resources=3},tag=!TC_encircled,tag=TC_pulseconnected] run scoreboard players add TC_bextract TC_tgoldextract 1
execute as @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,scores={TC_resources=4},tag=!TC_encircled,tag=TC_pulseconnected] run scoreboard players add TC_bextract TC_tdiamextract 1

execute if score TC_bextract TC_tcoalextract matches 1.. run bossbar set minecraft:bcoalextract color green
execute if score TC_bextract TC_tironextract matches 1.. run bossbar set minecraft:bironextract color green
execute if score TC_bextract TC_tgoldextract matches 1.. run bossbar set minecraft:bgoldextract color green
execute if score TC_bextract TC_tdiamextract matches 1.. run bossbar set minecraft:bdiamextract color green

execute unless score TC_bextract TC_tcoalextract matches 1.. run bossbar set minecraft:bcoalextract color yellow
execute unless score TC_bextract TC_tironextract matches 1.. run bossbar set minecraft:bironextract color yellow
execute unless score TC_bextract TC_tgoldextract matches 1.. run bossbar set minecraft:bgoldextract color yellow
execute unless score TC_bextract TC_tdiamextract matches 1.. run bossbar set minecraft:bdiamextract color yellow

scoreboard players operation TC_bextract TC_tcoalextract *= 10mul TC_10mul
scoreboard players operation TC_bextract TC_tironextract *= 10mul TC_10mul
scoreboard players operation TC_bextract TC_tgoldextract *= 10mul TC_10mul
scoreboard players operation TC_bextract TC_tdiamextract *= 10mul TC_10mul

scoreboard players operation TC_bextract TC_tcoalextract *= TC_bextract TC_bextractmodif
scoreboard players operation TC_bextract TC_tironextract *= TC_bextract TC_bextractmodif
scoreboard players operation TC_bextract TC_tgoldextract *= TC_bextract TC_bextractmodif
scoreboard players operation TC_bextract TC_tdiamextract *= TC_bextract TC_bextractmodif

scoreboard players operation TC_bextract TC_tcoalextract /= 100div TC_100div
scoreboard players operation TC_bextract TC_tironextract /= 100div TC_100div
scoreboard players operation TC_bextract TC_tgoldextract /= 100div TC_100div
scoreboard players operation TC_bextract TC_tdiamextract /= 100div TC_100div

scoreboard players operation TC_bextract TC_coalextract += TC_bextract TC_tcoalextract
scoreboard players operation TC_bextract TC_ironextract += TC_bextract TC_tironextract
scoreboard players operation TC_bextract TC_goldextract += TC_bextract TC_tgoldextract
scoreboard players operation TC_bextract TC_diamextract += TC_bextract TC_tdiamextract

execute if score TC_bextract TC_coalextract matches 24000.. at @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_spawn] run summon item ~ ~ ~ {Item:{id:"minecraft:coal",Count:1}}
execute if score TC_bextract TC_ironextract matches 24000.. at @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_spawn] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ore",Count:1}}
execute if score TC_bextract TC_goldextract matches 24000.. at @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_spawn] run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ore",Count:1}}
execute if score TC_bextract TC_diamextract matches 24000.. at @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_spawn] run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_ore",Count:1}}

execute if score TC_bextract TC_coalextract matches 24000.. run scoreboard players remove TC_bextract TC_coalextract 24000
execute if score TC_bextract TC_ironextract matches 24000.. run scoreboard players remove TC_bextract TC_ironextract 24000
execute if score TC_bextract TC_goldextract matches 24000.. run scoreboard players remove TC_bextract TC_goldextract 24000
execute if score TC_bextract TC_diamextract matches 24000.. run scoreboard players remove TC_bextract TC_diamextract 24000

scoreboard players set TC_bextract TC_tcoalextract 0
scoreboard players set TC_bextract TC_tironextract 0
scoreboard players set TC_bextract TC_tgoldextract 0
scoreboard players set TC_bextract TC_tdiamextract 0

scoreboard players operation TC_bextract TC_tbextractmod = TC_bextract TC_bextractmodif
scoreboard players remove TC_bextract TC_tbextractmod 100

execute unless score TC_bextract TC_blextractmod = TC_bextract TC_bextractmodif run bossbar remove minecraft:bcoalextract
execute unless score TC_bextract TC_blextractmod = TC_bextract TC_bextractmodif run bossbar remove minecraft:bironextract
execute unless score TC_bextract TC_blextractmod = TC_bextract TC_bextractmodif run bossbar remove minecraft:bgoldextract
execute unless score TC_bextract TC_blextractmod = TC_bextract TC_bextractmodif run bossbar remove minecraft:bdiamextract
execute unless score TC_bextract TC_blextractmod = TC_bextract TC_bextractmodif run scoreboard players operation TC_bextract TC_blextractmod = TC_bextract TC_bextractmodif

bossbar add bcoalextract [{"text":"Coal Extraction","color":"black"},{"text":" (+","color":"green"},{"score":{"name":"TC_bextract","objective":"TC_tbextractmod"},"color":"blue"},{"text":"%)","color":"green"}]
bossbar add bironextract [{"text":"Iron Ore Extraction","color":"gray"},{"text":" (+","color":"green"},{"score":{"name":"TC_bextract","objective":"TC_tbextractmod"},"color":"blue"},{"text":"%)","color":"green"}]
bossbar add bgoldextract [{"text":"Gold Ore Extraction","color":"gold"},{"text":" (+","color":"green"},{"score":{"name":"TC_bextract","objective":"TC_tbextractmod"},"color":"blue"},{"text":"%)","color":"green"}]
bossbar add bdiamextract [{"text":"Diamond Ore Extraction","color":"aqua"},{"text":" (+","color":"green"},{"score":{"name":"TC_bextract","objective":"TC_tbextractmod"},"color":"blue"},{"text":"%)","color":"green"}]

bossbar set minecraft:bcoalextract max 24000
bossbar set minecraft:bironextract max 24000
bossbar set minecraft:bgoldextract max 24000
bossbar set minecraft:bdiamextract max 24000

execute at @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_blueguard] run bossbar set minecraft:bcoalextract players @a[tag=TC_inminigame,distance=..3,team=blue]
execute at @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_blueguard] run bossbar set minecraft:bironextract players @a[tag=TC_inminigame,distance=..3,team=blue]
execute at @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_blueguard] run bossbar set minecraft:bgoldextract players @a[tag=TC_inminigame,distance=..3,team=blue]
execute at @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_blueguard] run bossbar set minecraft:bdiamextract players @a[tag=TC_inminigame,distance=..3,team=blue]

execute store result bossbar minecraft:bcoalextract value run scoreboard players get TC_bextract TC_coalextract
execute store result bossbar minecraft:bironextract value run scoreboard players get TC_bextract TC_ironextract
execute store result bossbar minecraft:bgoldextract value run scoreboard players get TC_bextract TC_goldextract
execute store result bossbar minecraft:bdiamextract value run scoreboard players get TC_bextract TC_diamextract

#Resource extraction (red)
bossbar set minecraft:rcoalextract visible true
bossbar set minecraft:rironextract visible true
bossbar set minecraft:rgoldextract visible true
bossbar set minecraft:rdiamextract visible true

execute as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,scores={TC_resources=1},tag=!TC_encircled,tag=TC_pulseconnected] run scoreboard players add TC_rextract TC_tcoalextract 1
execute as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,scores={TC_resources=2},tag=!TC_encircled,tag=TC_pulseconnected] run scoreboard players add TC_rextract TC_tironextract 1
execute as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,scores={TC_resources=3},tag=!TC_encircled,tag=TC_pulseconnected] run scoreboard players add TC_rextract TC_tgoldextract 1
execute as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,scores={TC_resources=4},tag=!TC_encircled,tag=TC_pulseconnected] run scoreboard players add TC_rextract TC_tdiamextract 1

execute if score TC_rextract TC_tcoalextract matches 1.. run bossbar set minecraft:rcoalextract color green
execute if score TC_rextract TC_tironextract matches 1.. run bossbar set minecraft:rironextract color green
execute if score TC_rextract TC_tgoldextract matches 1.. run bossbar set minecraft:rgoldextract color green
execute if score TC_rextract TC_tdiamextract matches 1.. run bossbar set minecraft:rdiamextract color green

execute unless score TC_rextract TC_tcoalextract matches 1.. run bossbar set minecraft:rcoalextract color yellow
execute unless score TC_rextract TC_tironextract matches 1.. run bossbar set minecraft:rironextract color yellow
execute unless score TC_rextract TC_tgoldextract matches 1.. run bossbar set minecraft:rgoldextract color yellow
execute unless score TC_rextract TC_tdiamextract matches 1.. run bossbar set minecraft:rdiamextract color yellow

scoreboard players operation TC_rextract TC_tcoalextract *= 10mul TC_10mul
scoreboard players operation TC_rextract TC_tironextract *= 10mul TC_10mul
scoreboard players operation TC_rextract TC_tgoldextract *= 10mul TC_10mul
scoreboard players operation TC_rextract TC_tdiamextract *= 10mul TC_10mul

scoreboard players operation TC_rextract TC_tcoalextract *= TC_rextract TC_rextractmodif
scoreboard players operation TC_rextract TC_tironextract *= TC_rextract TC_rextractmodif
scoreboard players operation TC_rextract TC_tgoldextract *= TC_rextract TC_rextractmodif
scoreboard players operation TC_rextract TC_tdiamextract *= TC_rextract TC_rextractmodif

scoreboard players operation TC_rextract TC_tcoalextract /= 100div TC_100div
scoreboard players operation TC_rextract TC_tironextract /= 100div TC_100div
scoreboard players operation TC_rextract TC_tgoldextract /= 100div TC_100div
scoreboard players operation TC_rextract TC_tdiamextract /= 100div TC_100div

scoreboard players operation TC_rextract TC_coalextract += TC_rextract TC_tcoalextract
scoreboard players operation TC_rextract TC_ironextract += TC_rextract TC_tironextract
scoreboard players operation TC_rextract TC_goldextract += TC_rextract TC_tgoldextract
scoreboard players operation TC_rextract TC_diamextract += TC_rextract TC_tdiamextract

execute if score TC_rextract TC_coalextract matches 24000.. at @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard] run summon item ~ ~ ~ {Item:{id:"minecraft:coal",Count:1}}
execute if score TC_rextract TC_ironextract matches 24000.. at @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ore",Count:1}}
execute if score TC_rextract TC_goldextract matches 24000.. at @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard] run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ore",Count:1}}
execute if score TC_rextract TC_diamextract matches 24000.. at @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard] run summon item ~ ~ ~ {Item:{id:"minecraft:diamond_ore",Count:1}}

execute if score TC_rextract TC_coalextract matches 24000.. run scoreboard players remove TC_rextract TC_coalextract 24000
execute if score TC_rextract TC_ironextract matches 24000.. run scoreboard players remove TC_rextract TC_ironextract 24000
execute if score TC_rextract TC_goldextract matches 24000.. run scoreboard players remove TC_rextract TC_goldextract 24000
execute if score TC_rextract TC_diamextract matches 24000.. run scoreboard players remove TC_rextract TC_diamextract 24000

scoreboard players set TC_rextract TC_tcoalextract 0
scoreboard players set TC_rextract TC_tironextract 0
scoreboard players set TC_rextract TC_tgoldextract 0
scoreboard players set TC_rextract TC_tdiamextract 0

scoreboard players operation TC_rextract TC_trextractmod = TC_rextract TC_rextractmodif
scoreboard players remove TC_rextract TC_trextractmod 100

execute unless score TC_rextract TC_rlextractmod = TC_rextract TC_rextractmodif run bossbar remove minecraft:rcoalextract
execute unless score TC_rextract TC_rlextractmod = TC_rextract TC_rextractmodif run bossbar remove minecraft:rironextract
execute unless score TC_rextract TC_rlextractmod = TC_rextract TC_rextractmodif run bossbar remove minecraft:rgoldextract
execute unless score TC_rextract TC_rlextractmod = TC_rextract TC_rextractmodif run bossbar remove minecraft:rdiamextract
execute unless score TC_rextract TC_rlextractmod = TC_rextract TC_rextractmodif run scoreboard players operation TC_rextract TC_rlextractmod = TC_rextract TC_rextractmodif

bossbar add rcoalextract [{"text":"Coal Extraction","color":"black"},{"text":" (+","color":"green"},{"score":{"name":"TC_rextract","objective":"TC_trextractmod"},"color":"red"},{"text":"%)","color":"green"}]
bossbar add rironextract [{"text":"Iron Ore Extraction","color":"gray"},{"text":" (+","color":"green"},{"score":{"name":"TC_rextract","objective":"TC_trextractmod"},"color":"red"},{"text":"%)","color":"green"}]
bossbar add rgoldextract [{"text":"Gold Ore Extraction","color":"gold"},{"text":" (+","color":"green"},{"score":{"name":"TC_rextract","objective":"TC_trextractmod"},"color":"red"},{"text":"%)","color":"green"}]
bossbar add rdiamextract [{"text":"Diamond Ore Extraction","color":"aqua"},{"text":" (+","color":"green"},{"score":{"name":"TC_rextract","objective":"TC_trextractmod"},"color":"red"},{"text":"%)","color":"green"}]

bossbar set minecraft:rcoalextract max 24000
bossbar set minecraft:rironextract max 24000
bossbar set minecraft:rgoldextract max 24000
bossbar set minecraft:rdiamextract max 24000

execute at @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard] run bossbar set minecraft:rcoalextract players @a[tag=TC_inminigame,distance=..3,team=red]
execute at @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard] run bossbar set minecraft:rironextract players @a[tag=TC_inminigame,distance=..3,team=red]
execute at @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard] run bossbar set minecraft:rgoldextract players @a[tag=TC_inminigame,distance=..3,team=red]
execute at @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=TC_redguard] run bossbar set minecraft:rdiamextract players @a[tag=TC_inminigame,distance=..3,team=red]

execute store result bossbar minecraft:rcoalextract value run scoreboard players get TC_rextract TC_coalextract
execute store result bossbar minecraft:rironextract value run scoreboard players get TC_rextract TC_ironextract
execute store result bossbar minecraft:rgoldextract value run scoreboard players get TC_rextract TC_goldextract
execute store result bossbar minecraft:rdiamextract value run scoreboard players get TC_rextract TC_diamextract

#No respawning people in enemy territory
execute unless score TC_system TC_debug matches 1 as @a[tag=TC_inminigame,scores={respawnTimer=1..,TC_set_notif=1},team=blue] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"You are not allowed to go into enemy territory while respawning!","color":"white"}]
execute unless score TC_system TC_debug matches 1 as @a[tag=TC_inminigame,scores={respawnTimer=1..},team=blue] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run tp @s[tag=TC_inminigame] @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,limit=1]
execute unless score TC_system TC_debug matches 1 as @a[tag=TC_inminigame,scores={respawnTimer=1..,TC_set_notif=1},team=red] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"You are not allowed to go into enemy territory while respawning!","color":"white"}]
execute unless score TC_system TC_debug matches 1 as @a[tag=TC_inminigame,scores={respawnTimer=1..},team=red] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run tp @s[tag=TC_inminigame] @e[tag=TC_inminigame,type=villager,tag=TC_redguard,limit=1]

#No out of bounds
execute unless score TC_system TC_debug matches 1 as @a[tag=TC_inminigame,gamemode=!creative,scores={TC_set_notif=1}] at @s[tag=TC_inminigame] unless block ~ 1 ~ bedrock run tellraw @s[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"You are not allowed to go out of bounds of the map.","color":"white"}]
execute unless score TC_system TC_debug matches 1 as @a[tag=TC_inminigame,gamemode=!creative,team=blue] at @s[tag=TC_inminigame] unless block ~ 1 ~ bedrock run tp @s[tag=TC_inminigame] @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,limit=1]
execute unless score TC_system TC_debug matches 1 as @a[tag=TC_inminigame,gamemode=!creative,team=red] at @s[tag=TC_inminigame] unless block ~ 1 ~ bedrock run tp @s[tag=TC_inminigame] @e[tag=TC_inminigame,type=villager,tag=TC_redguard,limit=1]

#Late joiners
scoreboard players add TC_teamrand TC_teamrand 1
execute if score TC_teamrand TC_teamrand matches 2.. run scoreboard players set TC_teamrand TC_teamrand 0

scoreboard players set TC_playersnum TC_playersnum 0
execute as @a[tag=TC_inminigame,team=blue] run scoreboard players add TC_playersnum TC_playersnum 1
execute as @a[tag=TC_inminigame,team=red] run scoreboard players remove TC_playersnum TC_playersnum 1
execute as @a[tag=TC_inminigame,team=] if score TC_playersnum TC_playersnum matches 1.. run tag @s[tag=TC_inminigame] add TC_toRed
execute as @a[tag=TC_inminigame,team=] if score TC_playersnum TC_playersnum matches ..-1 run tag @s[tag=TC_inminigame] add TC_toBlue
execute as @a[tag=TC_inminigame,team=] if score TC_playersnum TC_playersnum matches 0 if score TC_teamrand TC_teamrand matches 0 run tag @s[tag=TC_inminigame] add TC_toRed
execute as @a[tag=TC_inminigame,team=] if score TC_playersnum TC_playersnum matches 0 if score TC_teamrand TC_teamrand matches 1 run tag @s[tag=TC_inminigame] add TC_toBlue

execute as @a[tag=TC_inminigame,tag=TC_toBlue] run function tc:latejointoblue

execute as @a[tag=TC_inminigame,tag=TC_toRed] run function tc:latejointored

#Different game ID
execute as @a[tag=TC_inminigame] unless score @s[tag=TC_inminigame] TC_gameid = TC_gameid TC_gameid run team leave @s[tag=TC_inminigame]

#Rename spawn villagers
execute as @e[tag=TC_inminigame,type=villager,tag=TC_spawn,team=red,tag=!TC_renamedspawn] run data merge entity @s[tag=TC_inminigame] {CustomName:"{\"text\":\"Red Villager Guard Spawn Point\",\"color\":\"gold\"}"}
execute as @e[tag=TC_inminigame,type=villager,tag=TC_spawn,team=blue,tag=!TC_renamedspawn] run data merge entity @s[tag=TC_inminigame] {CustomName:"{\"text\":\"Blue Villager Guard Spawn Point\",\"color\":\"aqua\"}"}
tag @e[tag=TC_inminigame,type=villager,tag=TC_spawn,tag=!TC_renamedspawn] add TC_renamedspawn

#Unintentional rename
scoreboard players set @a[tag=TC_inminigame,scores={TC_rename=1..}] keyDrop 1
scoreboard players set @a[tag=TC_inminigame,scores={TC_rename=1..}] TC_rename 0

#Invisible guards
scoreboard players add @e[tag=TC_inminigame,type=villager] TC_invistimer 0
scoreboard players set @e[tag=TC_inminigame,type=villager,tag=TC_guard,scores={front=1}] TC_invistimer 0
scoreboard players add @e[tag=TC_inminigame,type=villager,scores={front=0,TC_invistimer=..1},tag=!TC_spawn,tag=TC_guard] TC_invistimer 1

effect clear @e[tag=TC_inminigame,type=villager,scores={TC_invistimer=0}] invisibility
effect give @e[tag=TC_inminigame,type=villager,scores={TC_invistimer=2..}] invisibility 1 0 true
scoreboard players set @e[tag=TC_inminigame,type=villager,scores={TC_invistimer=2..}] TC_invistimer 0

#Spawn point
execute as @a[tag=TC_inminigame] at @s[tag=TC_inminigame] run spawnpoint @s[tag=TC_inminigame] ~ ~ ~

#Extra supplies
scoreboard players add @a[tag=TC_inminigame,scores={TC_supplygracemx=101..}] TC_extrasupplies 1
scoreboard players set @a[tag=TC_inminigame,scores={TC_supplygracemx=251..}] TC_supplygracemx 250
execute as @a[tag=TC_inminigame,scores={TC_supplygracemx=101..,TC_extrasupplies=20..}] run function tc:reducemaxsupply

#Walls
scoreboard players add TC_halfrate TC_halfrate 1
execute if score TC_halfrate TC_halfrate matches 10.. run function tc:halfrate
execute if score TC_halfrate TC_halfrate matches 10.. run scoreboard players set TC_halfrate TC_halfrate 0

#debug
#function tc:simulatepulsemovement