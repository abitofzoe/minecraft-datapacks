execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=-180}] if block ~ ~ ~ #minecraft:rails[shape=south_east] run tp @s[tag=TC_inminigame] ~ ~ ~ ~90 ~
execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=90}] if block ~ ~ ~ #minecraft:rails[shape=south_east] run tp @s[tag=TC_inminigame] ~ ~ ~ ~-90 ~

execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=-180}] if block ~ ~ ~ #minecraft:rails[shape=south_west] run tp @s[tag=TC_inminigame] ~ ~ ~ ~-90 ~
execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=-90}] if block ~ ~ ~ #minecraft:rails[shape=south_west] run tp @s[tag=TC_inminigame] ~ ~ ~ ~90 ~

execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=-90}] if block ~ ~ ~ #minecraft:rails[shape=north_west] run tp @s[tag=TC_inminigame] ~ ~ ~ ~-90 ~
execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=0}] if block ~ ~ ~ #minecraft:rails[shape=north_west] run tp @s[tag=TC_inminigame] ~ ~ ~ ~90 ~

execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=0}] if block ~ ~ ~ #minecraft:rails[shape=north_east] run tp @s[tag=TC_inminigame] ~ ~ ~ ~-90 ~
execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=90}] if block ~ ~ ~ #minecraft:rails[shape=north_east] run tp @s[tag=TC_inminigame] ~ ~ ~ ~90 ~

execute store result score @s[tag=TC_inminigame] TC_pulselastrot run data get entity @s[tag=TC_inminigame] Rotation[0]

execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=-180}] if block ^ ^-1 ^1 #minecraft:rails[shape=ascending_south] run tp @s[tag=TC_inminigame] ^ ^-1 ^
execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=0}] if block ^ ^ ^ #minecraft:rails[shape=ascending_south] run tp @s[tag=TC_inminigame] ^ ^1 ^

execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=-180}] if block ^ ^ ^ #minecraft:rails[shape=ascending_north] run tp @s[tag=TC_inminigame] ^ ^1 ^
execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=0}] if block ^ ^-1 ^1 #minecraft:rails[shape=ascending_north] run tp @s[tag=TC_inminigame] ^ ^-1 ^

execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=-90}] if block ^ ^-1 ^1 #minecraft:rails[shape=ascending_west] run tp @s[tag=TC_inminigame] ^ ^-1 ^
execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=90}] if block ^ ^ ^ #minecraft:rails[shape=ascending_west] run tp @s[tag=TC_inminigame] ^ ^1 ^

execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=-90}] if block ^ ^ ^ #minecraft:rails[shape=ascending_east] run tp @s[tag=TC_inminigame] ^ ^1 ^
execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=90}] if block ^ ^-1 ^1 #minecraft:rails[shape=ascending_east] run tp @s[tag=TC_inminigame] ^ ^-1 ^

execute at @s[tag=TC_inminigame] run tp @s[tag=TC_inminigame] ^ ^ ^1
execute at @s[tag=TC_inminigame] unless block ~ ~ ~ #minecraft:rails run scoreboard players set @s[tag=TC_inminigame] TC_pulserepeat 1250

execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=0}] unless score @s[tag=TC_inminigame] TC_childspawned matches 15.. if block ~ ~ ~ #minecraft:rails[shape=north_south] if block ~-1 ~ ~ #minecraft:rails[shape=east_west] run summon minecraft:area_effect_cloud ~-1 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,NoAI:1,Invisible:1,NoGravity:1,Invulnerable:1,Tags:["TC_inminigame","TC_pulsecheck","TC_pulsered","TC_pendingimport","TC_pulseinit"],Rotation:[90.0f,0.0f],Team:red}
execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=0}] unless score @s[tag=TC_inminigame] TC_childspawned matches 15.. if block ~ ~ ~ #minecraft:rails[shape=north_south] if block ~1 ~ ~ #minecraft:rails[shape=east_west] run summon minecraft:area_effect_cloud ~1 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,NoAI:1,Invisible:1,NoGravity:1,Invulnerable:1,Tags:["TC_inminigame","TC_pulsecheck","TC_pulsered","TC_pendingimport","TC_pulseinit"],Rotation:[-90.0f,0.0f],Team:red}
execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=-180}] unless score @s[tag=TC_inminigame] TC_childspawned matches 15.. if block ~ ~ ~ #minecraft:rails[shape=north_south] if block ~-1 ~ ~ #minecraft:rails[shape=east_west] run summon minecraft:area_effect_cloud ~-1 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,NoAI:1,Invisible:1,NoGravity:1,Invulnerable:1,Tags:["TC_inminigame","TC_pulsecheck","TC_pulsered","TC_pendingimport","TC_pulseinit"],Rotation:[90.0f,0.0f],Team:red}
execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=-180}] unless score @s[tag=TC_inminigame] TC_childspawned matches 15.. if block ~ ~ ~ #minecraft:rails[shape=north_south] if block ~1 ~ ~ #minecraft:rails[shape=east_west] run summon minecraft:area_effect_cloud ~1 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,NoAI:1,Invisible:1,NoGravity:1,Invulnerable:1,Tags:["TC_inminigame","TC_pulsecheck","TC_pulsered","TC_pendingimport","TC_pulseinit"],Rotation:[-90.0f,0.0f],Team:red}
execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=90}] unless score @s[tag=TC_inminigame] TC_childspawned matches 15.. if block ~ ~ ~ #minecraft:rails[shape=east_west] if block ~ ~ ~-1 #minecraft:rails[shape=north_south] run summon minecraft:area_effect_cloud ~ ~ ~-1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,NoAI:1,Invisible:1,NoGravity:1,Invulnerable:1,Tags:["TC_inminigame","TC_pulsecheck","TC_pulsered","TC_pendingimport","TC_pulseinit"],Rotation:[-180.0f,0.0f],Team:red}
execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=90}] unless score @s[tag=TC_inminigame] TC_childspawned matches 15.. if block ~ ~ ~ #minecraft:rails[shape=east_west] if block ~ ~ ~1 #minecraft:rails[shape=north_south] run summon minecraft:area_effect_cloud ~ ~ ~1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,NoAI:1,Invisible:1,NoGravity:1,Invulnerable:1,Tags:["TC_inminigame","TC_pulsecheck","TC_pulsered","TC_pendingimport","TC_pulseinit"],Rotation:[0.0f,0.0f],Team:red}
execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=-90}] unless score @s[tag=TC_inminigame] TC_childspawned matches 15.. if block ~ ~ ~ #minecraft:rails[shape=east_west] if block ~ ~ ~-1 #minecraft:rails[shape=north_south] run summon minecraft:area_effect_cloud ~ ~ ~-1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,NoAI:1,Invisible:1,NoGravity:1,Invulnerable:1,Tags:["TC_inminigame","TC_pulsecheck","TC_pulsered","TC_pendingimport","TC_pulseinit"],Rotation:[-180.0f,0.0f],Team:red}
execute at @s[tag=TC_inminigame,scores={TC_pulselastrot=-90}] unless score @s[tag=TC_inminigame] TC_childspawned matches 15.. if block ~ ~ ~ #minecraft:rails[shape=east_west] if block ~ ~ ~1 #minecraft:rails[shape=north_south] run summon minecraft:area_effect_cloud ~ ~ ~1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,NoAI:1,Invisible:1,NoGravity:1,Invulnerable:1,Tags:["TC_inminigame","TC_pulsecheck","TC_pulsered","TC_pendingimport","TC_pulseinit"],Rotation:[0.0f,0.0f],Team:red}

execute as @e[tag=TC_inminigame,type=area_effect_cloud,limit=1,tag=TC_pendingimport,tag=TC_pulsered] at @s[tag=TC_inminigame] run function tc:spawnchildred

execute at @s[tag=TC_inminigame] run tag @e[tag=TC_inminigame,type=villager,distance=..1,tag=TC_redguard,tag=TC_guard,tag=!TC_encircled,scores={TC_resources=1..}] add TC_pulseconnected
execute at @s[tag=TC_inminigame] run scoreboard players set @a[tag=TC_inminigame,distance=..1,team=red] TC_supplygracem -50

scoreboard players add @s[tag=TC_inminigame] TC_pulserepeat 1

particle minecraft:crit ~ ~1 ~ 0 0 0 0 1 normal @a[tag=TC_inminigame,scores={TC_set_dust=1},team=red]

execute as @s[tag=TC_inminigame,scores={TC_pulserepeat=1250..}] run function tc:pulsehandoffred

execute at @s[tag=TC_inminigame,scores={TC_pulserepeat=..1249}] if block ~ ~ ~ #minecraft:rails run function tc:simulatepulsemovementred