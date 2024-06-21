clear @a[tag=IZ_inminigame,gamemode=!creative] red_concrete
clear @a[tag=IZ_inminigame,gamemode=!creative] yellow_concrete
clear @a[tag=IZ_inminigame,gamemode=!creative] lime_concrete
clear @a[tag=IZ_inminigame,gamemode=!creative] blue_concrete
gamemode spectator @a[tag=IZ_inminigame,scores={IZ_deaths=1..}]
scoreboard players reset @a[tag=IZ_inminigame,scores={IZ_deaths=1..}] IZ_deaths 

#Start a new wave
execute if score Wave temp matches 1 run scoreboard players set NextWaveTimer temp 0
execute if score Wave temp matches 1 run scoreboard players set NextWaveTimerTick temp 0
execute if score Wave temp matches 1 run scoreboard players set Constant temp 8
execute if score Wave temp matches 1 if score difficulty IZ_adifficulty matches 1..2 run scoreboard players set ZombiesMultiplier temp 1
execute if score Wave temp matches 1 if score difficulty IZ_adifficulty matches 3..4 run scoreboard players set ZombiesMultiplier temp 2
execute if score Wave temp matches 1 if score difficulty IZ_adifficulty matches 5..6 run scoreboard players set ZombiesMultiplier temp 3
execute if score Wave temp matches 1 run scoreboard players add Wave info 1
execute if score Wave temp matches 1 if score difficulty IZ_adifficulty matches 1 run scoreboard players add SpawnLimit info 2
execute if score Wave temp matches 1 if score difficulty IZ_adifficulty matches 2 run scoreboard players add SpawnLimit info 3
execute if score Wave temp matches 1 if score difficulty IZ_adifficulty matches 3 run scoreboard players add SpawnLimit info 4
execute if score Wave temp matches 1 if score difficulty IZ_adifficulty matches 4 run scoreboard players add SpawnLimit info 5
execute if score Wave temp matches 1 if score difficulty IZ_adifficulty matches 5 run scoreboard players add SpawnLimit info 6
execute if score Wave temp matches 1 if score difficulty IZ_adifficulty matches 6 run scoreboard players add SpawnLimit info 8
execute if score Wave temp matches 1 run scoreboard players operation ZombiesMultiplier temp *= Wave info
execute if score Wave temp matches 1 run scoreboard players operation ZombiesMultiplier temp *= Constant temp
execute if score Wave temp matches 1 run scoreboard players operation TotalZombies info = ZombiesMultiplier temp
execute if score Wave temp matches 1 run scoreboard players set CreeperTimer info 60
execute if score Wave temp matches 1 run scoreboard players set SkeletonTimer info 30
execute if score Wave temp matches 1 run scoreboard players set WallBusterTimer info 90
execute if score Wave temp matches 1 run scoreboard players set Wave temp 0

#Creeper Movement
execute as @e[tag=IZ_inminigame,x=0,type=creeper] at @s run tp @s ~ ~ ~ facing entity @p[tag=IZ_inminigame,gamemode=survival]
execute as @e[tag=IZ_inminigame,x=0,type=creeper] at @s run tp @s ~ ~ ~ ~ 0
execute if score difficulty IZ_adifficulty matches 1 as @e[tag=IZ_inminigame,x=0,type=creeper] at @s run tp @s ^ ^ ^.4
execute if score difficulty IZ_adifficulty matches 2 as @e[tag=IZ_inminigame,x=0,type=creeper] at @s run tp @s ^ ^ ^.5
execute if score difficulty IZ_adifficulty matches 3 as @e[tag=IZ_inminigame,x=0,type=creeper] at @s run tp @s ^ ^ ^.6
execute if score difficulty IZ_adifficulty matches 4 as @e[tag=IZ_inminigame,x=0,type=creeper] at @s run tp @s ^ ^ ^.7
execute if score difficulty IZ_adifficulty matches 5 as @e[tag=IZ_inminigame,x=0,type=creeper] at @s run tp @s ^ ^ ^.8
execute if score difficulty IZ_adifficulty matches 6 as @e[tag=IZ_inminigame,x=0,type=creeper] at @s run tp @s ^ ^ ^.9
execute as @e[tag=IZ_inminigame,x=0,type=creeper] at @s unless block ~-1 ~1 ~ air run data merge entity @s {Fuse:0}
execute as @e[tag=IZ_inminigame,x=0,type=creeper] at @s unless block ~1 ~1 ~ air run data merge entity @s {Fuse:0}
execute as @e[tag=IZ_inminigame,x=0,type=creeper] at @s unless block ~ ~1 ~1 air run data merge entity @s {Fuse:0}
execute as @e[tag=IZ_inminigame,x=0,type=creeper] at @s unless block ~ ~1 ~-1 air run data merge entity @s {Fuse:0}
execute as @e[tag=IZ_inminigame,x=0,type=creeper] at @s unless block ~-1 ~ ~ air run data merge entity @s {Fuse:0}
execute as @e[tag=IZ_inminigame,x=0,type=creeper] at @s unless block ~1 ~ ~ air run data merge entity @s {Fuse:0}
execute as @e[tag=IZ_inminigame,x=0,type=creeper] at @s unless block ~ ~ ~1 air run data merge entity @s {Fuse:0}
execute as @e[tag=IZ_inminigame,x=0,type=creeper] at @s unless block ~ ~ ~-1 air run data merge entity @s {Fuse:0}
execute at @a[tag=IZ_inminigame,gamemode=survival] run data merge entity @e[tag=IZ_inminigame,x=0,type=creeper,limit=1,distance=..1.5] {Fuse:0}

#Zombie Spawned
execute as @e[tag=IZ_inminigame,x=0,type=zombie] run scoreboard players add Spawned temp 1
scoreboard players operation Spawned info = Spawned temp
scoreboard players set Spawned temp 0

#Creeper Timer
execute if score Wave info matches 1.. run scoreboard players add CreeperTimer temp 1
execute if score CreeperTimer temp matches 20.. run scoreboard players remove CreeperTimer info 1
execute if score CreeperTimer temp matches 20.. run scoreboard players reset CreeperTimer temp

#Spawn Creeper (LEVEL 1)
execute if score CreeperTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 1 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=1}] run summon creeper ~ 4 ~ {PersistenceRequired:1,Tags:["IZ_inminigame"]}

#Spawn Creeper (LEVEL 2)
execute if score CreeperTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 2 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=2}] run summon creeper ~ 4 ~ {PersistenceRequired:1,Tags:["IZ_inminigame"]}

#Spawn Creeper (LEVEL 3)
execute if score CreeperTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 3 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=3},tag=IZS_creeperonly] run summon creeper ~ 4 ~ {PersistenceRequired:1,Tags:["IZ_inminigame"]}



execute if score CreeperTimer info matches ..0 run scoreboard players set CreeperTimer info 60

#Spawn Zombies
execute if score TotalZombies info matches 1.. run scoreboard players operation LimitSpawning temp = SpawnLimit info 
execute if score TotalZombies info matches 1.. run scoreboard players operation LimitSpawning temp -= Spawned info


#LEVEL 1
execute if score difficulty IZ_adifficulty matches 1 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 1 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=1}] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:136.0f},{Name:"generic.movement_speed",Base:0.20f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 2 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 1 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=1}] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:136.0f},{Name:"generic.movement_speed",Base:0.24f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 3 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 1 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=1}] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:136.0f},{Name:"generic.movement_speed",Base:0.28f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 4 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 1 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=1}] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:136.0f},{Name:"generic.movement_speed",Base:0.32f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 5 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 1 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=1}] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:136.0f},{Name:"generic.movement_speed",Base:0.36f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 6 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 1 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=1}] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:136.0f},{Name:"generic.movement_speed",Base:0.4f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}

#LEVEL 2
execute if score difficulty IZ_adifficulty matches 1 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 2 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=2}] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:64.0f},{Name:"generic.movement_speed",Base:0.20f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 2 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 2 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=2}] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:64.0f},{Name:"generic.movement_speed",Base:0.24f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 3 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 2 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=2}] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:64.0f},{Name:"generic.movement_speed",Base:0.28f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 4 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 2 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=2}] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:64.0f},{Name:"generic.movement_speed",Base:0.32f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 5 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 2 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=2}] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:64.0f},{Name:"generic.movement_speed",Base:0.36f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 6 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 2 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=2}] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:64.0f},{Name:"generic.movement_speed",Base:0.4f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}

#LEVEL 3
execute if score difficulty IZ_adifficulty matches 1 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 3 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=3},tag=IZS_zombieonly] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:192.0f},{Name:"generic.movement_speed",Base:0.20f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 2 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 3 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=3},tag=IZS_zombieonly] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:192.0f},{Name:"generic.movement_speed",Base:0.24f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 3 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 3 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=3},tag=IZS_zombieonly] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:192.0f},{Name:"generic.movement_speed",Base:0.28f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 4 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 3 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=3},tag=IZS_zombieonly] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:192.0f},{Name:"generic.movement_speed",Base:0.32f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 5 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 3 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=3},tag=IZS_zombieonly] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:192.0f},{Name:"generic.movement_speed",Base:0.36f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 6 if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 if score currentlvl IZS_LvlSelected matches 3 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=3},tag=IZS_zombieonly] run summon minecraft:zombie ~ 4 ~ {LeftHanded:0,CanPickUpLoot:1b,Attributes:[{Name:"generic.follow_range",Base:192.0f},{Name:"generic.movement_speed",Base:0.4f}],IsBaby:0,CanBreakDoors:1,Rotation:[90f,0f],PersistenceRequired:1,HandItems:[{id:"minecraft:coal",Count:1},{id:"minecraft:iron_ingot",Count:1}],HandDropChances:[0.25F,0.1F],Tags:["IZ_inminigame"]}

execute if score LimitSpawning temp matches 1.. unless score TotalZombies info matches ..0 run scoreboard players remove TotalZombies info 1

#Death handling
execute if entity @a[tag=IZ_inminigame,gamemode=survival] run title @a[tag=IZ_inminigame,gamemode=spectator] actionbar {"text":"Move close to mobs to slow them down or move close to players to speed them up! Respawn at the end of the wave.","color":"green"}
execute if entity @a[tag=IZ_inminigame,gamemode=survival] run execute as @a[tag=IZ_inminigame,gamemode=spectator] at @s if block ~ ~-1 ~ gold_block if score currentlvl IZS_LvlSelected matches 1 run tp @s 10 4 3
execute if entity @a[tag=IZ_inminigame,gamemode=survival] run execute as @a[tag=IZ_inminigame,gamemode=spectator] at @s if block ~ ~-1 ~ gold_block if score currentlvl IZS_LvlSelected matches 2 run tp @s 12.5 4 -20.5
execute if entity @a[tag=IZ_inminigame,gamemode=survival] run execute as @a[tag=IZ_inminigame,gamemode=spectator] at @s if block ~ ~-1 ~ gold_block if score currentlvl IZS_LvlSelected matches 3 run tp @s 71.5 4 134.5

execute unless entity @a[tag=IZ_inminigame,gamemode=survival] run title @a[tag=IZ_inminigame,gamemode=!survival] actionbar {"text":"GAME OVER -- Go back to the gold spawn to retry.","color":"red"}
execute unless entity @a[tag=IZ_inminigame,gamemode=survival] run scoreboard players set difficulty IZ_adifficulty 0
execute unless entity @a[tag=IZ_inminigame,gamemode=survival] run scoreboard players set CreeperTimer temp 0
execute unless entity @a[tag=IZ_inminigame,gamemode=survival] run scoreboard players set SkeletonTimer temp 0
execute unless entity @a[tag=IZ_inminigame,gamemode=survival] run scoreboard players set WallBusterTimer temp 0
execute unless entity @a[tag=IZ_inminigame,gamemode=survival] run scoreboard players set Wave temp 0
execute at @a[tag=IZ_inminigame,gamemode=survival] if block ~ 4 ~ gold_block run scoreboard players set CreeperTimer temp 0
execute at @a[tag=IZ_inminigame,gamemode=survival] if block ~ 4 ~ gold_block run scoreboard players set SkeletonTimer temp 0
execute at @a[tag=IZ_inminigame,gamemode=survival] if block ~ 4 ~ gold_block run scoreboard players set WallBusterTimer temp 0
execute at @a[tag=IZ_inminigame,gamemode=survival] if block ~ 4 ~ gold_block run scoreboard players set Wave temp 0
execute unless entity @a[tag=IZ_inminigame,gamemode=survival] run execute as @a[tag=IZ_inminigame,gamemode=spectator] at @s if block ~ ~-1 ~ gold_block run tp @a 1 5 3
execute unless entity @a[tag=IZ_inminigame,gamemode=survival] run execute as @a[tag=IZ_inminigame,gamemode=spectator] at @s if block ~ ~-1 ~ gold_block run gamemode adventure @a[tag=IZ_inminigame,gamemode=!adventure]

#Wall Buster
execute if score Wave info matches 1.. run scoreboard players add WallBusterTimer temp 1
execute if score Wave info matches 1.. if score WallBusterTimer temp matches 20.. run scoreboard players remove WallBusterTimer info 1
execute if score Wave info matches 1.. if score WallBusterTimer temp matches 20.. run scoreboard players reset WallBusterTimer temp

#Spawn Wall Buster (LEVEL 1)
execute if score WallBusterTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 1 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=1}] run summon spider ~ 4 ~ {NoAI:1,Invulnerable:0,Rotation:[90f,0f],CustomName:"{\"text\":\"Wall Buster\",\"color\":\"red\"}",CustomNameVisible:1,Health:5,Tags:["IZ_inminigame"]}

#Spawn Wall Buster (LEVEL 2)
execute if score WallBusterTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 2 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=2}] run summon spider ~ 4 ~ {NoAI:1,Invulnerable:0,Rotation:[90f,0f],CustomName:"{\"text\":\"Wall Buster\",\"color\":\"red\"}",CustomNameVisible:1,Health:5,Tags:["IZ_inminigame"]}

#Spawn Wall Buster (LEVEL 3)
execute if score WallBusterTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 3 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,sort=random,limit=1,scores={IZS_lvlmarker=3},tag=IZS_busteronly] run summon spider ~ 4 ~ {NoAI:1,Invulnerable:0,Rotation:[90f,0f],CustomName:"{\"text\":\"Wall Buster\",\"color\":\"red\"}",CustomNameVisible:1,Health:5,Tags:["IZ_inminigame"]}

effect give @e[tag=IZ_inminigame,x=0,type=spider] resistance 3 3 true
execute if score WallBusterTimer info matches ..0 run scoreboard players set WallBusterTimer info 45

#Wall Buster Movement
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s run tp @s ~ ~ ~ facing entity @p[tag=IZ_inminigame,gamemode=survival]
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s run tp @s ~ ~ ~ ~ 0
execute if score difficulty IZ_adifficulty matches 1 as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 minecraft:air run tp @s ^ ^ ^.4
execute if score difficulty IZ_adifficulty matches 2 as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 minecraft:air run tp @s ^ ^ ^.5
execute if score difficulty IZ_adifficulty matches 3 as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 minecraft:air run tp @s ^ ^ ^.6
execute if score difficulty IZ_adifficulty matches 4 as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 minecraft:air run tp @s ^ ^ ^.7
execute if score difficulty IZ_adifficulty matches 5 as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 minecraft:air run tp @s ^ ^ ^.8
execute if score difficulty IZ_adifficulty matches 6 as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 minecraft:air run tp @s ^ ^ ^.9
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 minecraft:bedrock run tp @s ^ ^ ^-2
execute at @e[tag=IZ_inminigame,x=0,type=spider,scores={IZS_BusterTimer=200..}] run fill ^ ^ ^ ^ ^32 ^1 air destroy
execute at @e[tag=IZ_inminigame,x=0,type=spider] if block ^ ^ ^.5 air run fill ^ ^ ^ ^ ^32 ^.25 air destroy
execute as @e[tag=IZ_inminigame,x=0,type=spider,scores={IZS_BusterTimer=200..}] run scoreboard players remove @s IZS_BusterTimer 200

#Wall Buster Block Breaking Timer
#CORE
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 ladder run scoreboard players add @s IZS_BusterTimer 100
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 oak_slab run scoreboard players add @s IZS_BusterTimer 75
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 snow run scoreboard players add @s IZS_BusterTimer 50
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 snow_block run scoreboard players add @s IZS_BusterTimer 40
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 dirt run scoreboard players add @s IZS_BusterTimer 35
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 oak_planks run scoreboard players add @s IZS_BusterTimer 30
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 oak_log run scoreboard players add @s IZS_BusterTimer 25
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 chest run scoreboard players add @s IZS_BusterTimer 25
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 cobblestone run scoreboard players add @s IZS_BusterTimer 25
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 stone run scoreboard players add @s IZS_BusterTimer 20
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 bookshelf run scoreboard players add @s IZS_BusterTimer 20
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 end_stone_bricks run scoreboard players add @s IZS_BusterTimer 20
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 white_concrete run scoreboard players add @s IZS_BusterTimer 15
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 bone_block run scoreboard players add @s IZS_BusterTimer 12
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 stone_bricks run scoreboard players add @s IZS_BusterTimer 10
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 end_stone run scoreboard players add @s IZS_BusterTimer 5
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 obsidian run scoreboard players add @s IZS_BusterTimer 1

execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 coal_block run scoreboard players add @s IZS_BusterTimer 20
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 iron_block run scoreboard players add @s IZS_BusterTimer 15
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 gold_block run scoreboard players add @s IZS_BusterTimer 10
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 redstone_block run scoreboard players add @s IZS_BusterTimer 8
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 lapis_block run scoreboard players add @s IZS_BusterTimer 5
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 emerald_block run scoreboard players add @s IZS_BusterTimer 1
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^1 diamond_block run scoreboard players add @s IZS_BusterTimer 0

execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 oak_slab run scoreboard players add @s IZS_BusterTimer 75
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 snow run scoreboard players add @s IZS_BusterTimer 50
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 snow_block run scoreboard players add @s IZS_BusterTimer 40
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 dirt run scoreboard players add @s IZS_BusterTimer 35
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 oak_planks run scoreboard players add @s IZS_BusterTimer 30
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 oak_log run scoreboard players add @s IZS_BusterTimer 25
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 chest run scoreboard players add @s IZS_BusterTimer 25
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 end_stone_bricks run scoreboard players add @s IZS_BusterTimer 20
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 white_concrete run scoreboard players add @s IZS_BusterTimer 15
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 bone_block run scoreboard players add @s IZS_BusterTimer 12
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 stone_bricks run scoreboard players add @s IZS_BusterTimer 10
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 end_stone run scoreboard players add @s IZS_BusterTimer 5
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 obsidian run scoreboard players add @s IZS_BusterTimer 1
                                               
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 coal_block run scoreboard players add @s IZS_BusterTimer 20
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 iron_block run scoreboard players add @s IZS_BusterTimer 15
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 gold_block run scoreboard players add @s IZS_BusterTimer 10
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 redstone_block run scoreboard players add @s IZS_BusterTimer 8
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 lapis_block run scoreboard players add @s IZS_BusterTimer 5
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 emerald_block run scoreboard players add @s IZS_BusterTimer 1
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 diamond_block run scoreboard players add @s IZS_BusterTimer 0

#Level 3 (Zombie Invasion)
execute as @e[tag=IZ_inminigame,x=0,type=spider] at @s if block ^ ^ ^0.5 polished_granite run scoreboard players add @s IZS_BusterTimer 3

#Resetting Entity Spawns
execute if score NextWaveTimer temp matches 1.. run scoreboard players set WallBusterTimer temp 0
execute if score NextWaveTimer temp matches 1.. run scoreboard players set WallBusterTimer info 90
execute if score NextWaveTimer temp matches 1.. run scoreboard players set CreeperTimer temp 0
execute if score NextWaveTimer temp matches 1.. run scoreboard players set CreeperTimer info 60
execute if score NextWaveTimer temp matches 1.. run scoreboard players set SkeletonTimer temp 0
execute if score NextWaveTimer temp matches 1.. run scoreboard players set SkeletonTimer info 30

#Skeleton Timer
execute if score Wave info matches 1.. run scoreboard players add SkeletonTimer temp 1
execute if score Wave info matches 1.. if score SkeletonTimer temp matches 20.. run scoreboard players remove SkeletonTimer info 1
execute if score Wave info matches 1.. if score SkeletonTimer temp matches 20.. run scoreboard players reset SkeletonTimer temp

#Spawn Skeleton (LEVEL 1)
execute if score difficulty IZ_adifficulty matches 1 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 1 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=1}] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:136.0f},{Name:"generic.movement_speed",Base:0.30f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 2 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 1 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=1}] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:136.0f},{Name:"generic.movement_speed",Base:0.36f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 3 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 1 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=1}] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:136.0f},{Name:"generic.movement_speed",Base:0.42f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 4 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 1 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=1}] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:136.0f},{Name:"generic.movement_speed",Base:0.48f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 5 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 1 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=1}] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:136.0f},{Name:"generic.movement_speed",Base:0.54f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 6 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 1 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=1}] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:136.0f},{Name:"generic.movement_speed",Base:0.60f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}

#Spawn Skeleton (LEVEL 2)
execute if score difficulty IZ_adifficulty matches 1 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 2 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=2}] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:64.0f},{Name:"generic.movement_speed",Base:0.30f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 2 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 2 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=2}] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:64.0f},{Name:"generic.movement_speed",Base:0.36f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 3 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 2 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=2}] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:64.0f},{Name:"generic.movement_speed",Base:0.42f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 4 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 2 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=2}] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:64.0f},{Name:"generic.movement_speed",Base:0.48f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 5 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 2 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=2}] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:64.0f},{Name:"generic.movement_speed",Base:0.54f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 6 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 2 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=2}] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:64.0f},{Name:"generic.movement_speed",Base:0.60f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}


#Spawn Skeleton (LEVEL 3)
execute if score difficulty IZ_adifficulty matches 1 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 3 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=3},tag=IZS_skeleonly] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:192.0f},{Name:"generic.movement_speed",Base:0.30f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 2 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 3 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=3},tag=IZS_skeleonly] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:192.0f},{Name:"generic.movement_speed",Base:0.36f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 3 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 3 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=3},tag=IZS_skeleonly] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:192.0f},{Name:"generic.movement_speed",Base:0.42f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 4 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 3 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=3},tag=IZS_skeleonly] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:192.0f},{Name:"generic.movement_speed",Base:0.48f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 5 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 3 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=3},tag=IZS_skeleonly] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:192.0f},{Name:"generic.movement_speed",Base:0.54f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score difficulty IZ_adifficulty matches 6 if score SkeletonTimer info matches ..0 if score currentlvl IZS_LvlSelected matches 3 run execute at @e[tag=IZ_inminigame,x=0,type=armor_stand,tag=IZ_spawnpoint,limit=1,scores={IZS_lvlmarker=3},tag=IZS_skeleonly] run summon skeleton ~ 4 ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:192.0f},{Name:"generic.movement_speed",Base:0.60f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}


execute if score SkeletonTimer info matches ..0 run scoreboard players set SkeletonTimer info 30
execute if score difficulty IZ_adifficulty matches 5 run effect give @e[tag=IZ_inminigame,type=skeleton] resistance 3 2 true
execute if score difficulty IZ_adifficulty matches 6 run effect give @e[tag=IZ_inminigame,type=skeleton] resistance 3 3 true

#Dead Player
execute at @a[tag=IZ_inminigame,gamemode=spectator] run effect give @e[tag=IZ_inminigame,type=!player,distance=..3] slowness 1 1 
execute at @a[tag=IZ_inminigame,gamemode=spectator] run effect give @a[tag=IZ_inminigame,distance=..3] speed 1 0 
execute at @a[tag=IZ_inminigame,gamemode=spectator] run particle crit ~ ~1 ~ 0 0 0 0 1 force @a
execute if entity @a[tag=IZ_inminigame,gamemode=spectator] run title @a[tag=IZ_inminigame,gamemode=!spectator] actionbar {"text":"Those sparkles are your fallen teammates! They're going to assist you!","color":"green"}

#End of Wave
execute if score Wave info matches 1.. if score Spawned info matches ..0 run title @a[tag=IZ_inminigame] actionbar ["",{"score":{"name":"NextWaveTimer","objective":"temp"},"color":"red"},{"text":" seconds up out of 30 seconds to prepare for the next wave.","color":"none"}]
execute if score Wave info matches 1.. if score Spawned info matches ..0 run scoreboard players add NextWaveTimerTick temp 1
execute if score Wave info matches 1.. if score Spawned info matches ..0 if score NextWaveTimerTick temp matches 20.. run scoreboard players add NextWaveTimer temp 1
execute if score Wave info matches 1.. if score Spawned info matches ..0 if score NextWaveTimerTick temp matches 20.. run scoreboard players remove NextWaveTimerTick temp 20
execute if score Wave info matches 1.. if score Spawned info matches ..0 run tp @a[tag=IZ_inminigame,gamemode=spectator] 10.5 4 3.5
execute if score Wave info matches 1.. if score Spawned info matches ..0 run gamemode survival @a[tag=IZ_inminigame,gamemode=spectator]
execute if score NextWaveTimer temp matches 30.. run scoreboard players set Wave temp 1
execute if score NextWaveTimer temp matches 30.. run scoreboard players set IZ_system IZ_hurttimer 390
execute if score NextWaveTimer temp matches 30.. run scoreboard players reset NextWaveTimer

#Fill concrete (LEVEL 1)
execute if score currentlvl IZS_LvlSelected matches 1 run fill 10 3 0 30 3 20 red_concrete 
execute if score currentlvl IZS_LvlSelected matches 1 run fill 31 3 0 51 3 20 yellow_concrete
execute if score currentlvl IZS_LvlSelected matches 1 run fill 52 3 0 93 3 20 lime_concrete
execute if score currentlvl IZS_LvlSelected matches 1 run fill 94 3 0 114 3 20 blue_concrete
execute if score currentlvl IZS_LvlSelected matches 1 run fill 10 2 0 30 2 20 bedrock
execute if score currentlvl IZS_LvlSelected matches 1 run fill 31 2 0 51 2 20 bedrock 
execute if score currentlvl IZS_LvlSelected matches 1 run fill 52 2 0 93 2 20 bedrock
execute if score currentlvl IZS_LvlSelected matches 1 run fill 94 2 0 114 2 20 bedrock 

#Fill concrete (LEVEL 2)
execute if score currentlvl IZS_LvlSelected matches 2 run fill 10 3 -46 36 3 -21 red_concrete

#Fill Concrete (LEVEL 3)
execute if score currentlvl IZS_LvlSelected matches 3 run fill -68 3 102 1 3 136 blue_concrete
execute if score currentlvl IZS_LvlSelected matches 3 run fill 3 3 102 71 3 136 red_concrete

#Next Wave Timer Entity Clear
execute if score NextWaveTimer temp matches 1.. run kill @e[tag=IZ_inminigame,x=0,type=skeleton]
execute if score NextWaveTimer temp matches 1.. run kill @e[tag=IZ_inminigame,x=0,type=creeper]
execute if score NextWaveTimer temp matches 1.. run kill @e[tag=IZ_inminigame,x=0,type=spider]

#Mob Damage Resistance
execute if score difficulty IZ_adifficulty matches 5 run effect give @e[tag=IZ_inminigame,x=0,type=!player,type=!villager,type=!armor_stand,type=!skeleton] resistance 3 0 true
execute if score difficulty IZ_adifficulty matches 6 run effect give @e[tag=IZ_inminigame,x=0,type=!player,type=!villager,type=!armor_stand,type=!skeleton] resistance 3 1 true
execute if score difficulty IZ_adifficulty matches 1.. run effect give @e[tag=IZ_inminigame,x=0,type=zombie] fire_resistance 3 0 true
execute if score difficulty IZ_adifficulty matches 1.. run effect give @e[tag=IZ_inminigame,x=0,type=skeleton] fire_resistance 3 1 true

#Hurt timer
#scoreboard players add IZ_system IZ_hurttimer 1
#execute if score IZ_system IZ_hurttimer matches 400.. as @e[tag=IZ_inminigame,type=#zombie:hostile] at @s run function zombie:makeaggro
#execute if score IZ_system IZ_hurttimer matches 400.. run function zombie:makeaggro

execute as @e[tag=IZ_inminigame,type=#zombie:hostile,tag=!IZ_aggroed] at @s run function zombie:makeaggro