#Initiation
execute at @e[type=item,nbt={Item:{id:"minecraft:redstone_block"}}] unless entity @e[type=armor_stand,tag=VG_turret,distance=..2] run function vanillaguns2:turrets/turretinit/laseriteminit

execute as @e[type=armor_stand,tag=VG_laserinit] run function vanillaguns2:turrets/turretinit/laserinit

#Add ammo
execute as @e[type=armor_stand,tag=VG_laserturret] if score @s VG_laserammo < VG_defines VG_def_laserammo at @s if entity @e[type=item,nbt={Item:{id:"minecraft:redstone"}},distance=..1] run function vanillaguns2:turrets/addammo/laserturret

#Ammo limit
execute as @e[type=armor_stand,tag=VG_laserturret] if score @s VG_laserammo > VG_defines VG_def_laserammo run scoreboard players operation @s VG_laserammo = VG_defines VG_def_laserammo

#Info
execute if score VG_defines VG_def_laserammo matches 1.. as @e[type=armor_stand,tag=VG_laserturret,tag=!VG_overheat] at @s run title @a[gamemode=!spectator,sort=nearest,limit=1,distance=..1,gamemode=!creative,tag=!VG_bayonetcooldown] actionbar ["",{"text":"Laser Turret Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_laserammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_laserammo"},"color":"green"},{"text":" | Temperature: ","color":"green"},{"score":{"name":"@s","objective":"VG_lasertemp"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_lasertemp"},"color":"red"},{"text":"C","color":"green"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]
execute if score VG_defines VG_def_laserammo matches 1.. as @e[type=armor_stand,tag=VG_laserturret,tag=VG_overheat] at @s run title @a[gamemode=!spectator,sort=nearest,limit=1,distance=..1,gamemode=!creative,tag=!VG_bayonetcooldown] actionbar ["",{"text":"Laser Turret Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_laserammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_laserammo"},"color":"green"},{"text":" | Temperature: ","color":"green"},{"score":{"name":"@s","objective":"VG_lasertemp"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_lasertemp"},"color":"red"},{"text":"C","color":"green"},{"text":" - OVERHEAT","color":"red"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]
execute if score VG_defines VG_def_laserammo matches 1.. as @e[type=armor_stand,tag=VG_laserturret] at @s run title @a[sort=nearest,limit=1,distance=..1,gamemode=creative] actionbar ["",{"text":"Laser Turret: ","color":"green"},{"text":"Creative mode unlimited firing","color":"yellow"},{"text":" | Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_laserammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_laserammo"},"color":"green"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]
execute unless score VG_defines VG_def_laserammo matches 1.. as @e[type=armor_stand,tag=VG_laserturret] at @s run title @a[gamemode=!spectator,sort=nearest,limit=1,distance=..1] actionbar ["",{"text":"Laser Turret ","color":"green"},{"text":"WEAPON DISABLED","color":"red"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]

#Firing radius limit
execute as @a[x_rotation=50..90,scores={VG_sneak=1..}] at @s if entity @e[type=armor_stand,tag=VG_laserturret,distance=..1] run tp @s ~ ~ ~ ~ 49.9
execute as @a[x_rotation=-90..-55,scores={VG_sneak=1..}] at @s if entity @e[type=armor_stand,tag=VG_laserturret,distance=..1] run tp @s ~ ~ ~ ~ -54.9

#Invisible and teleport
execute as @a[scores={VG_sneak=1..}] at @s as @e[type=armor_stand,tag=VG_laserturret,distance=..1,sort=nearest] run function vanillaguns2:turrets/makeinvisible
#execute as @e[type=armor_stand,tag=VG_laserturret] at @s run tp @a[scores={VG_sneak=1..},distance=..1,sort=nearest,limit=1] ~ ~ ~

#Firing
execute as @e[type=armor_stand,tag=VG_laserturret,tag=!VG_overheat,scores={VG_laserammo=1..}] at @s as @a[scores={VG_sneak=1..},limit=1,distance=..1,sort=nearest,tag=!VG_bayonetcooldown] run scoreboard players add @s VG_laserdelay 1
execute as @e[type=armor_stand,tag=VG_laserturret,tag=!VG_overheat] at @s as @a[scores={VG_sneak=1..},limit=1,distance=..1,sort=nearest,tag=!VG_bayonetcooldown] run effect give @s slowness 2 9 true
execute as @e[type=armor_stand,tag=VG_laserturret] at @s as @a[scores={VG_sneak=1..,VG_laserdelay=2..},limit=1,distance=..1,sort=nearest] run function vanillaguns2:turrets/turretinit/laserturretready
execute as @e[type=armor_stand,tag=VG_laserturret] at @s as @a[scores={VG_sneak=1..,VG_laserdelay=2..},limit=1,distance=..1,sort=nearest] run scoreboard players set @s VG_laserdelay 0
execute as @e[type=armor_stand,tag=VG_laserturret] at @s as @a[scores={VG_sneak=1..},sort=nearest,limit=1,distance=0..1.5] run tp @s ~ ~ ~ 

#Cooling down
scoreboard players remove @e[type=armor_stand,tag=VG_laserturret,scores={VG_lasertemp=31..}] VG_lasertemp 1
execute as @e[type=armor_stand,tag=VG_laserturret,scores={VG_lasertemp=31..}] at @s if block ~ ~ ~ water run scoreboard players remove @s VG_lasertemp 1
execute at @e[type=armor_stand,tag=VG_laserturret,scores={VG_lasertemp=30}] run function vanillaguns2:turrets/overheat/cooleddown
tag @e[type=armor_stand,tag=VG_laserturret,scores={VG_lasertemp=30}] remove VG_overheat

#Overheat
execute as @e[type=armor_stand,tag=VG_laserturret,tag=!VG_overheat] if score @s VG_lasertemp >= VG_defines VG_def_lasertemp at @s run function vanillaguns2:turrets/overheat/turretoverheat