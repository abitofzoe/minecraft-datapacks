#Initiation
execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] unless entity @e[type=armor_stand,tag=VG_turret,distance=..2] run function vanillaguns2:turrets/turretinit/hmgiteminit

execute as @e[type=armor_stand,tag=VG_hmginit] run function vanillaguns2:turrets/turretinit/hmginit

#Add ammo
execute as @e[type=armor_stand,tag=VG_hmg] if score @s VG_hmgammo < VG_defines VG_def_hmgammo at @s if entity @e[type=item,nbt={Item:{id:"minecraft:emerald"}},distance=..1] run function vanillaguns2:turrets/addammo/hmg

#Ammo limit
execute as @e[type=armor_stand,tag=VG_hmg] if score @s VG_hmgammo > VG_defines VG_def_hmgammo run scoreboard players operation @s VG_hmgammo = VG_defines VG_def_hmgammo

#Info
execute if score VG_defines VG_def_hmgammo matches 1.. as @e[type=armor_stand,tag=VG_hmg,tag=!VG_overheat] at @s run title @a[gamemode=!spectator,sort=nearest,limit=1,distance=..1,gamemode=!creative,tag=!VG_bayonetcooldown] actionbar ["",{"text":"Heavy Machine Gun Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_hmgammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_hmgammo"},"color":"green"},{"text":" | Temperature: ","color":"green"},{"score":{"name":"@s","objective":"VG_hmgtemp"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_hmgtemp"},"color":"red"},{"text":"C","color":"green"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]
execute if score VG_defines VG_def_hmgammo matches 1.. as @e[type=armor_stand,tag=VG_hmg,tag=VG_overheat] at @s run title @a[gamemode=!spectator,sort=nearest,limit=1,distance=..1,gamemode=!creative,tag=!VG_bayonetcooldown] actionbar ["",{"text":"Heavy Machine Gun Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_hmgammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_hmgammo"},"color":"green"},{"text":" | Temperature: ","color":"green"},{"score":{"name":"@s","objective":"VG_hmgtemp"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_hmgtemp"},"color":"red"},{"text":"C","color":"green"},{"text":" - OVERHEAT","color":"red"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]
execute if score VG_defines VG_def_hmgammo matches 1.. as @e[type=armor_stand,tag=VG_hmg] at @s run title @a[sort=nearest,limit=1,distance=..1,gamemode=creative] actionbar ["",{"text":"Heavy Machine Gun: ","color":"green"},{"text":"Creative mode unlimited firing","color":"yellow"},{"text":" | Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_hmgammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_hmgammo"},"color":"green"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]
execute unless score VG_defines VG_def_hmgammo matches 1.. as @e[type=armor_stand,tag=VG_hmg] at @s run title @a[gamemode=!spectator,sort=nearest,limit=1,distance=..1] actionbar ["",{"text":"Heavy Machine Gun: ","color":"green"},{"text":"WEAPON DISABLED","color":"red"},{"text":" | Turret HP: ","color":"green"},{"score":{"name":"@e[type=villager,tag=VG_hpvillager,distance=..0.5,limit=1,sort=nearest] ","objective":"VG_turrethp"},"color":"yellow"},{"text":"%","color":"green"}]

#Firing radius limit
execute as @a[x_rotation=5..90,scores={VG_sneak=1..}] at @s if entity @e[type=armor_stand,tag=VG_hmg,distance=..1] run tp @s ~ ~ ~ ~ 4.9
execute as @a[x_rotation=-90..-15,scores={VG_sneak=1..}] at @s if entity @e[type=armor_stand,tag=VG_hmg,distance=..1] run tp @s ~ ~ ~ ~ -14.9

#Invisible and teleport
execute as @a[scores={VG_sneak=1..}] at @s as @e[type=armor_stand,tag=VG_hmg,distance=..1,sort=nearest] run function vanillaguns2:turrets/makeinvisible
#execute as @e[type=armor_stand,tag=VG_hmg] at @s run tp @a[scores={VG_sneak=1..},distance=..1,sort=nearest,limit=1] ~ ~ ~

#Firing
execute as @e[type=armor_stand,tag=VG_hmg] at @s as @a[scores={VG_sneak=1..},limit=1,distance=..1,sort=nearest,tag=!VG_bayonetcooldown] run scoreboard players add @s VG_hmgtime 1
execute as @e[type=armor_stand,tag=VG_hmg] at @s as @a[scores={VG_sneak=1..},limit=1,distance=..1,sort=nearest,tag=!VG_bayonetcooldown] run effect give @s slowness 2 9 true
execute as @a[scores={VG_hmgtime=5..}] at @s if score @e[sort=nearest,limit=1,distance=..1,type=armor_stand,tag=VG_hmg] VG_hmgammo matches 0 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 0.5 2
execute as @a[scores={VG_hmgtime=5..}] at @s if score @e[sort=nearest,limit=1,distance=..1,type=armor_stand,tag=VG_hmg,tag=!VG_overheat] VG_hmgammo matches 1.. run tag @s add VG_hmgready
execute as @a[scores={VG_hmgtime=5..}] run scoreboard players set @s VG_hmgtime 0 
execute as @e[type=armor_stand,tag=VG_hmg] at @s as @a[scores={VG_sneak=1..},sort=nearest,limit=1,distance=0.1..1.5] run tp @s ~ ~ ~ 

execute as @a[tag=VG_hmgready,limit=1] at @s run function vanillaguns2:turrets/turretinit/hmgready

tag @a[tag=VG_hmgready] remove VG_hmgready

execute as @e[type=arrow,tag=VG_hmgbullet,tag=!VG_init] run function vanillaguns2:bulletinit/hmgbullet

#Cooling down
scoreboard players remove @e[type=armor_stand,tag=VG_hmg,scores={VG_hmgtemp=31..}] VG_hmgtemp 1
execute as @e[type=armor_stand,tag=VG_hmg,scores={VG_hmgtemp=31..}] at @s if block ~ ~ ~ water run scoreboard players remove @s VG_hmgtemp 1
execute at @e[type=armor_stand,tag=VG_hmg,scores={VG_hmgtemp=30}] run function vanillaguns2:turrets/overheat/cooleddown
tag @e[type=armor_stand,tag=VG_hmg,scores={VG_hmgtemp=30}] remove VG_overheat

#Overheat
execute as @e[type=armor_stand,tag=VG_hmg,tag=!VG_overheat] if score @s VG_hmgtemp >= VG_defines VG_def_hmgtemp at @s run function vanillaguns2:turrets/overheat/turretoverheat

#Exploding bullets
execute at @e[type=arrow,tag=VG_hmgbullet,tag=VG_bullet,nbt={inGround:1b}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1,CustomName:"{\"text\":\"Heavy Machine Gun\"}"}