#Initiation
execute at @e[type=item,nbt={Item:{id:"minecraft:iron_block"}}] unless entity @e[type=armor_stand,tag=VG_turret,distance=..2] run function vanillaguns2:turrets/turretinit/mguniteminit

execute as @e[type=armor_stand,tag=VG_mguninit] run function vanillaguns2:turrets/turretinit/mguninit

#Add ammo
execute as @e[type=armor_stand,tag=VG_mgun] if score @s VG_mgunammo < VG_defines VG_def_mgunammo at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..1] run function vanillaguns2:turrets/addammo/mgun

#Ammo limit
execute as @e[type=armor_stand,tag=VG_mgun] if score @s VG_mgunammo > VG_defines VG_def_mgunammo run scoreboard players operation @s VG_mgunammo = VG_defines VG_def_mgunammo

#Info
execute if score VG_defines VG_def_mgunammo matches 1.. as @e[type=armor_stand,tag=VG_mgun,tag=!VG_overheat] at @s run title @a[gamemode=!spectator,sort=nearest,limit=1,distance=..1,gamemode=!creative,tag=!VG_bayonetcooldown] actionbar ["",{"text":"Machine Gun Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_mgunammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_mgunammo"},"color":"green"},{"text":" | Temperature: ","color":"green"},{"score":{"name":"@s","objective":"VG_mguntemp"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_mguntemp"},"color":"red"},{"text":"C","color":"green"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]
execute if score VG_defines VG_def_mgunammo matches 1.. as @e[type=armor_stand,tag=VG_mgun,tag=VG_overheat] at @s run title @a[gamemode=!spectator,sort=nearest,limit=1,distance=..1,gamemode=!creative,tag=!VG_bayonetcooldown] actionbar ["",{"text":"Machine Gun Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_mgunammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_mgunammo"},"color":"green"},{"text":" | Temperature: ","color":"green"},{"score":{"name":"@s","objective":"VG_mguntemp"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_mguntemp"},"color":"red"},{"text":"C","color":"green"},{"text":" - OVERHEAT","color":"red"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]
execute if score VG_defines VG_def_mgunammo matches 1.. as @e[type=armor_stand,tag=VG_mgun] at @s run title @a[sort=nearest,limit=1,distance=..1,gamemode=creative] actionbar ["",{"text":"Machine Gun: ","color":"green"},{"text":"Creative mode unlimited firing","color":"yellow"},{"text":" | Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_mgunammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_mgunammo"},"color":"green"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]
execute unless score VG_defines VG_def_mgunammo matches 1.. as @e[type=armor_stand,tag=VG_mgun] at @s run title @a[gamemode=!spectator,sort=nearest,limit=1,distance=..1] actionbar ["",{"text":"Machine Gun: ","color":"green"},{"text":"WEAPON DISABLED","color":"red"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]

#Firing radius limit
execute as @a[x_rotation=15..90,scores={VG_sneak=1..}] at @s if entity @e[type=armor_stand,tag=VG_mgun,distance=..1] run tp @s ~ ~ ~ ~ 14.9
execute as @a[x_rotation=-90..-35,scores={VG_sneak=1..}] at @s if entity @e[type=armor_stand,tag=VG_mgun,distance=..1] run tp @s ~ ~ ~ ~ -34.9

#Invisible and teleport
execute as @a[scores={VG_sneak=1..}] at @s as @e[type=armor_stand,tag=VG_mgun,distance=..1,sort=nearest] run function vanillaguns2:turrets/makeinvisible
#execute as @e[type=armor_stand,tag=VG_mgun] at @s run tp @a[scores={VG_sneak=1..},distance=..1,sort=nearest,limit=1] ~ ~ ~

#Firing
execute as @a[scores={VG_sneak=1..}] at @s if score @e[sort=nearest,limit=1,distance=..1,type=armor_stand,tag=VG_mgun] VG_mgunammo matches 0 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 0.5 2
execute as @e[type=armor_stand,tag=VG_mgun,tag=!VG_overheat] at @s if score @s VG_mgunammo matches 1.. run tag @a[scores={VG_sneak=1..},limit=1,distance=..1,sort=nearest,tag=!VG_bayonetcooldown] add VG_mgunready
execute as @e[type=armor_stand,tag=VG_mgun,tag=!VG_overheat] at @s run effect give @a[scores={VG_sneak=1..},limit=1,distance=..1,sort=nearest,tag=!VG_bayonetcooldown] slowness 2 9 true

execute as @e[type=armor_stand,tag=VG_mgun] at @s as @a[scores={VG_sneak=1..},sort=nearest,limit=1,distance=0.1..1.5] run tp @s ~ ~ ~ 

execute as @a[tag=VG_mgunready,limit=1] at @s run function vanillaguns2:turrets/turretinit/mgunready

execute as @a[tag=VG_mgunready] run tag @s remove VG_mgunready

#Cooling down
scoreboard players remove @e[type=armor_stand,tag=VG_mgun,scores={VG_mguntemp=31..}] VG_mguntemp 1
execute as @e[type=armor_stand,tag=VG_mgun,scores={VG_mguntemp=31..}] at @s if block ~ ~ ~ water run scoreboard players remove @s VG_mguntemp 1
execute at @e[type=armor_stand,tag=VG_mgun,scores={VG_mguntemp=30}] run function vanillaguns2:turrets/overheat/cooleddown
tag @e[type=armor_stand,tag=VG_mgun,scores={VG_mguntemp=30}] remove VG_overheat

#Overheat
execute as @e[type=armor_stand,tag=VG_mgun,tag=!VG_overheat] if score @s VG_mguntemp >= VG_defines VG_def_mguntemp at @s run function vanillaguns2:turrets/overheat/turretoverheat