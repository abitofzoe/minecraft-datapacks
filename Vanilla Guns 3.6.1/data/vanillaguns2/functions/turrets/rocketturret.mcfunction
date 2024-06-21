#Initiation
execute at @e[type=item,nbt={Item:{id:"minecraft:gold_block"}}] unless entity @e[type=armor_stand,tag=VG_turret,distance=..2] run function vanillaguns2:turrets/turretinit/rturretiteminit

execute as @e[type=armor_stand,tag=VG_rturretinit] run function vanillaguns2:turrets/turretinit/rturretinit

#Add ammo
execute as @e[type=armor_stand,tag=VG_rturret] if score @s VG_rturretammo < VG_defines VG_def_rturammo at @s if entity @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..1] run function vanillaguns2:turrets/addammo/rocketturret

#Ammo limit
execute as @e[type=armor_stand,tag=VG_rturret] if score @s VG_rturretammo > VG_defines VG_def_rturammo run scoreboard players operation @s VG_rturretammo = VG_defines VG_def_rturammo

#Info
execute if score VG_defines VG_def_rturammo matches 1.. as @e[type=armor_stand,tag=VG_rturret] at @s run title @a[gamemode=!spectator,sort=nearest,limit=1,distance=..1,gamemode=!creative,tag=!VG_bayonetcooldown] actionbar ["",{"text":"Rocket Turret Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_rturretammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_rturammo"},"color":"green"},{"text":" | Charge: ","color":"green"},{"score":{"name":"@s","objective":"VG_rturretcharge"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_rturchrg"},"color":"green"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]
execute if score VG_defines VG_def_rturammo matches 1.. as @e[type=armor_stand,tag=VG_rturret] at @s run title @a[sort=nearest,limit=1,distance=..1,gamemode=creative,tag=!VG_bayonetcooldown] actionbar ["",{"text":"Rocket Turret: ","color":"green"},{"text":"Creative mode unlimited firing","color":"yellow"},{"text":" | Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_rturretammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_rturammo"},"color":"green"},{"text":" | Charge: ","color":"green"},{"score":{"name":"@s","objective":"VG_rturretcharge"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_rturchrg"},"color":"green"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]
execute unless score VG_defines VG_def_rturammo matches 1.. as @e[type=armor_stand,tag=VG_rturret] at @s run title @a[gamemode=!spectator,sort=nearest,limit=1,distance=..1] actionbar ["",{"text":"Rocket Turret: ","color":"green"},{"text":"WEAPON DISABLED","color":"red"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]

#Firing radius limit
execute as @a[x_rotation=15..90,scores={VG_sneak=1..}] at @s if entity @e[type=armor_stand,tag=VG_rturret,distance=..1] run tp @s ~ ~ ~ ~ 14.9
execute as @a[x_rotation=-90..-35,scores={VG_sneak=1..}] at @s if entity @e[type=armor_stand,tag=VG_rturret,distance=..1] run tp @s ~ ~ ~ ~ -34.9

#Charging up
execute as @a[gamemode=!spectator,scores={VG_sneak=1..}] at @s run scoreboard players add @e[type=armor_stand,tag=VG_rturret,distance=..1] VG_rturretcharge 2

#Charging down
execute as @e[type=armor_stand,tag=VG_rturret,scores={VG_rturretcharge=1..}] run scoreboard players remove @s VG_rturretcharge 1

#Invisible and teleport
execute as @a[scores={VG_sneak=1..}] at @s as @e[type=armor_stand,tag=VG_rturret,distance=..1,sort=nearest] run function vanillaguns2:turrets/makeinvisible
#execute as @e[type=armor_stand,tag=VG_rturret] at @s run tp @a[scores={VG_sneak=1..},distance=..1,sort=nearest] ~ ~ ~

#Firing
execute as @a[scores={VG_sneak=1..}] at @s if score @e[sort=nearest,limit=1,distance=..1,type=armor_stand,tag=VG_rturret] VG_rturretammo matches 0 if score @e[sort=nearest,limit=1,distance=..1,type=armor_stand,tag=VG_rturret] VG_rturretcharge >= VG_defines VG_def_rturchrg run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
execute as @a[scores={VG_sneak=1..}] at @s if entity @e[sort=nearest,limit=1,distance=..1,type=armor_stand,tag=VG_rturret] run effect give @s slowness 2 9 true
execute as @e[type=armor_stand,tag=VG_rturret] at @s if score @s VG_rturretammo matches 1.. if score @s VG_rturretcharge >= VG_defines VG_def_rturchrg run tag @a[scores={VG_sneak=1..},limit=1,distance=..1,sort=nearest,tag=!VG_bayonetcooldown] add VG_rturretready
execute as @e[type=armor_stand,tag=VG_rturret] at @s if score @s VG_rturretammo matches 1.. if score @s VG_rturretcharge >= VG_defines VG_def_rturchrg run effect give @a[scores={VG_sneak=1..},limit=1,distance=..1,sort=nearest,tag=!VG_bayonetcooldown] slowness 2 4 true

execute as @e[type=armor_stand,tag=VG_rturret] at @s as @a[scores={VG_sneak=1..},sort=nearest,limit=1,distance=..1.5] run tp @s ~ ~ ~ 

execute as @a[tag=VG_rturretready] at @s run function vanillaguns2:turrets/turretinit/rturretready

execute as @e[type=fireball,tag=VG_rturretbullet,tag=!VG_init] run function vanillaguns2:bulletinit/rturretbullet

execute as @e[type=armor_stand,tag=VG_rturret] if score @s VG_rturretcharge >= VG_defines VG_def_rturchrg run scoreboard players set @s VG_rturretcharge 0
tag @a[tag=VG_rturretready] remove VG_rturretready