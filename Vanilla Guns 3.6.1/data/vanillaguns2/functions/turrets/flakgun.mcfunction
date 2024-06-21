#Initiation
execute at @e[type=item,nbt={Item:{id:"minecraft:diamond_block"}}] unless entity @e[type=armor_stand,tag=VG_turret,distance=..2] run function vanillaguns2:turrets/turretinit/flakiteminit

execute as @e[type=armor_stand,tag=VG_flakguninit] run function vanillaguns2:turrets/turretinit/flakguninit

#Add ammo
execute as @e[type=armor_stand,tag=VG_flakgun] if score @s VG_flakgunammo < VG_defines VG_def_flakammo at @s if entity @e[type=item,nbt={Item:{id:"minecraft:diamond"}},distance=..1] run function vanillaguns2:turrets/addammo/flakgun

#Ammo limit
execute as @e[type=armor_stand,tag=VG_flakgun] if score @s VG_flakgunammo > VG_defines VG_def_flakammo run scoreboard players operation @s VG_flakgunammo = VG_defines VG_def_flakammo

#Info
execute if score VG_defines VG_def_flakammo matches 1.. as @e[type=armor_stand,tag=VG_flakgun,tag=!VG_overheat] at @s run title @a[gamemode=!spectator,sort=nearest,limit=1,distance=..1,gamemode=!creative,tag=!VG_bayonetcooldown] actionbar ["",{"text":"Flak Gun Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_flakgunammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_flakammo"},"color":"green"},{"text":" | Temperature: ","color":"green"},{"score":{"name":"@s","objective":"VG_flakguntemp"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_flaktemp"},"color":"red"},{"text":"C","color":"green"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]
execute if score VG_defines VG_def_flakammo matches 1.. as @e[type=armor_stand,tag=VG_flakgun,tag=VG_overheat] at @s run title @a[gamemode=!spectator,sort=nearest,limit=1,distance=..1,gamemode=!creative,tag=!VG_bayonetcooldown] actionbar ["",{"text":"Flak Gun Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_flakgunammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_flakammo"},"color":"green"},{"text":" | Temperature: ","color":"green"},{"score":{"name":"@s","objective":"VG_flakguntemp"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_flaktemp"},"color":"red"},{"text":"C","color":"green"},{"text":" - OVERHEAT","color":"red"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]
execute if score VG_defines VG_def_flakammo matches 1.. as @e[type=armor_stand,tag=VG_flakgun] at @s run title @a[sort=nearest,limit=1,distance=..1,gamemode=creative] actionbar ["",{"text":"Flak Gun: ","color":"green"},{"text":"Creative mode unlimited firing","color":"yellow"},{"text":" | Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_flakgunammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_flakammo"},"color":"green"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]
execute unless score VG_defines VG_def_flakammo matches 1.. as @e[type=armor_stand,tag=VG_flakgun] at @s run title @a[gamemode=!spectator,sort=nearest,limit=1,distance=..1] actionbar ["",{"text":"Flak Gun: ","color":"green"},{"text":"WEAPON DISABLED","color":"red"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]

#Firing radius limit
execute as @a[x_rotation=0.1..90,scores={VG_sneak=1..}] at @s if entity @e[type=armor_stand,tag=VG_flakgun,distance=..1] run tp @s ~ ~ ~ ~ -5.1
execute as @a[x_rotation=-5..0,scores={VG_sneak=1..}] at @s if entity @e[type=armor_stand,tag=VG_flakgun,distance=..1] run tp @s ~ ~ ~ ~ -5.1
execute as @a[x_rotation=-90..-60,scores={VG_sneak=1..}] at @s if entity @e[type=armor_stand,tag=VG_flakgun,distance=..1] run tp @s ~ ~ ~ ~ -59.9

#Invisible and teleport
execute as @a[scores={VG_sneak=1..}] at @s as @e[type=armor_stand,tag=VG_flakgun,distance=..1,sort=nearest] run function vanillaguns2:turrets/makeinvisible
#execute as @e[type=armor_stand,tag=VG_flakgun] at @s run tp @a[scores={VG_sneak=1..},distance=..1,sort=nearest,limit=1] ~ ~ ~

#Firing
execute as @e[type=armor_stand,tag=VG_flakgun] at @s as @a[scores={VG_sneak=1..},limit=1,distance=..1,sort=nearest,tag=!VG_bayonetcooldown] run scoreboard players add @s VG_flakguntime 1
execute as @e[type=armor_stand,tag=VG_flakgun] at @s as @a[scores={VG_sneak=1..},limit=1,distance=..1,sort=nearest,tag=!VG_bayonetcooldown] run effect give @s slowness 2 9 true
execute as @a[scores={VG_flakguntime=5..}] at @s if score @e[sort=nearest,limit=1,distance=..1,type=armor_stand,tag=VG_flakgun] VG_flakgunammo matches 0 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 0.5 2
execute as @a[scores={VG_flakguntime=5..}] at @s if score @e[sort=nearest,limit=1,distance=..1,type=armor_stand,tag=VG_flakgun,tag=!VG_overheat] VG_flakgunammo matches 1.. run tag @s add VG_flakgunready
execute as @a[scores={VG_flakguntime=5..}] run scoreboard players set @s VG_flakguntime 0 
execute as @e[type=armor_stand,tag=VG_flakgun] at @s as @a[scores={VG_sneak=1..},sort=nearest,limit=1,distance=0.1..1.5] run tp @s ~ ~ ~ 

execute as @a[tag=VG_flakgunready] at @s run function vanillaguns2:turrets/turretinit/flakgunready

execute as @e[type=armor_stand,tag=VG_flakgunbullet] run scoreboard players set @s VG_flaktimer 0 
execute as @e[type=armor_stand,tag=VG_flakgunbullet] at @s run function vanillaguns2:turrets/moveflakbullet

tag @a[tag=VG_flakgunready] remove VG_flakgunready

#Cooling down
scoreboard players remove @e[type=armor_stand,tag=VG_flakgun,scores={VG_flakguntemp=31..}] VG_flakguntemp 1
execute as @e[type=armor_stand,tag=VG_flakgun,scores={VG_flakguntemp=31..}] at @s if block ~ ~ ~ water run scoreboard players remove @s VG_flakguntemp 1
execute at @e[type=armor_stand,tag=VG_flakgun,scores={VG_flakguntemp=30}] run function vanillaguns2:turrets/overheat/cooleddown
tag @e[type=armor_stand,tag=VG_flakgun,scores={VG_flakguntemp=30}] remove VG_overheat

#Overheat
execute as @e[type=armor_stand,tag=VG_flakgun,tag=!VG_overheat] if score @s VG_flakguntemp >= VG_defines VG_def_flaktemp at @s run function vanillaguns2:turrets/overheat/turretoverheat