#Sneak
scoreboard players add @a VG_sneak 0
execute at @e[type=minecraft:arrow,tag=VG_bullet,scores={VG_bullettime=1..}] run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 normal
#Elytra status
execute as @a store result score @s VG_elytraflying run data get entity @s FallFlying

#New guns
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] at @s[nbt=!{Item:{tag:{VG_guninitialized:1b}}}] run function vanillaguns2:newgun/newguns

#Overflow ammo
execute as @a run function vanillaguns2:overflowammo

#NBT checker
tag @a remove VG_hasfighterelytra
tag @a remove VG_hascaselytra
tag @a remove VG_hasstratelytra
tag @a remove VG_ridingvehicle
scoreboard players set @a VG_selectedgun 0
tag @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{display:{Name:"{\"text\":\"Fighter\"}"}}}]}] add VG_hasfighterelytra
tag @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{display:{Name:"{\"text\":\"Close Air Support\"}"}}}]}] add VG_hascaselytra
tag @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{display:{Name:"{\"text\":\"Strategic Bomber\"}"}}}]}] add VG_hasstratelytra
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{VG_guninitialized:1b,display:{Name:"{\"text\":\"Pistol\"}"}}}}] VG_selectedgun 1
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{VG_guninitialized:1b,display:{Name:"{\"text\":\"SMG\"}"}}}}] VG_selectedgun 2
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{VG_guninitialized:1b,display:{Name:"{\"text\":\"Shotgun\"}"}}}}] VG_selectedgun 3
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{VG_guninitialized:1b,display:{Name:"{\"text\":\"Rifle\"}"}}}}] VG_selectedgun 4
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{VG_guninitialized:1b,display:{Name:"{\"text\":\"Rocket Gun\"}"}}}}] VG_selectedgun 5
#scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Turret Destroyer\"}"}}}}] VG_selectedgun 6
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{VG_guninitialized:1b,display:{Name:"{\"text\":\"Bayonet Charge\"}"}}}}] VG_selectedgun 7
tag @a[nbt={RootVehicle:{}}] add VG_ridingvehicle

#Elytra delay
scoreboard players set @a[scores={VG_elytraflying=0}] VG_elytradelay 0
execute as @a[scores={VG_elytraflying=1},tag=!VG_bayonetcooldown,tag=VG_hasfighterelytra] if score @s VG_elytradelay < VG_defines VG_def_flydelay run scoreboard players set @s VG_fegun 0
execute as @a[scores={VG_elytraflying=1},tag=!VG_bayonetcooldown,tag=VG_hascaselytra] if score @s VG_elytradelay < VG_defines VG_def_flydelay run scoreboard players set @s VG_fcasbomb 0
execute as @a[scores={VG_elytraflying=1},tag=!VG_bayonetcooldown,tag=VG_hasstratelytra] if score @s VG_elytradelay < VG_defines VG_def_flydelay run scoreboard players set @s VG_fstratbomb 0
execute as @a[scores={VG_elytraflying=1},tag=!VG_bayonetcooldown] if score @s VG_elytradelay < VG_defines VG_def_flydelay run scoreboard players add @s VG_elytradelay 1

#Equipping
execute as @a unless score @s VG_selectedgun matches 1 run scoreboard players set @s VG_pistolchange 0
execute as @a unless score @s VG_selectedgun matches 2 run scoreboard players set @s VG_smgchange 0
execute as @a unless score @s VG_selectedgun matches 3 run scoreboard players set @s VG_shotgunchange 0
execute as @a unless score @s VG_selectedgun matches 4 run scoreboard players set @s VG_riflechange 0
execute as @a unless score @s VG_selectedgun matches 5 run scoreboard players set @s VG_rgunchange 0
execute as @a unless score @s VG_selectedgun matches 7 run scoreboard players set @s VG_bayonetchange 0

execute as @a[tag=!VG_bayonetcooldown] if score @s VG_selectedgun matches 1 unless score @s VG_elytraflying matches 1 if score @s VG_pistolchange < VG_defines VG_def_pstlchng run scoreboard players add @s VG_pistolchange 1
execute as @a[tag=!VG_bayonetcooldown] if score @s VG_selectedgun matches 2 unless score @s VG_elytraflying matches 1 if score @s VG_smgchange < VG_defines VG_def_smgchng run scoreboard players add @s VG_smgchange 1
execute as @a[tag=!VG_bayonetcooldown] if score @s VG_selectedgun matches 3 unless score @s VG_elytraflying matches 1 if score @s VG_shotgunchange < VG_defines VG_def_shtgnchng run scoreboard players add @s VG_shotgunchange 1
execute as @a[tag=!VG_bayonetcooldown] if score @s VG_selectedgun matches 4 unless score @s VG_elytraflying matches 1 if score @s VG_riflechange < VG_defines VG_def_riflechng run scoreboard players add @s VG_riflechange 1
execute as @a[tag=!VG_bayonetcooldown] if score @s VG_selectedgun matches 5 unless score @s VG_elytraflying matches 1 if score @s VG_rgunchange < VG_defines VG_def_rgunchng run scoreboard players add @s VG_rgunchange 1
execute as @a[tag=!VG_bayonetcooldown] if score @s VG_selectedgun matches 7 unless score @s VG_elytraflying matches 1 if score @s VG_bayonetchange < VG_defines VG_def_bnetchng run scoreboard players add @s VG_bayonetchange 1

execute as @a[tag=!VG_bayonetcooldown] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] if score @s VG_selectedgun matches 1 unless score @s VG_elytraflying matches 1 if score @s VG_pistolchange < VG_defines VG_def_pstlchng run title @s actionbar ["",{"text":"Changing to pistol: ","color":"green"},{"score":{"name":"@s ","objective":"VG_pistolchange"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_pstlchng"},"color":"green"}]
execute as @a[tag=!VG_bayonetcooldown] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] if score @s VG_selectedgun matches 2 unless score @s VG_elytraflying matches 1 if score @s VG_smgchange < VG_defines VG_def_smgchng run title @s actionbar ["",{"text":"Changing to SMG: ","color":"green"},{"score":{"name":"@s ","objective":"VG_smgchange"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_smgchng"},"color":"green"}]
execute as @a[tag=!VG_bayonetcooldown] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] if score @s VG_selectedgun matches 3 unless score @s VG_elytraflying matches 1 if score @s VG_shotgunchange < VG_defines VG_def_shtgnchng run title @s actionbar ["",{"text":"Changing to Shotgun: ","color":"green"},{"score":{"name":"@s ","objective":"VG_shotgunchange"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_shtgnchng"},"color":"green"}]
execute as @a[tag=!VG_bayonetcooldown] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] if score @s VG_selectedgun matches 4 unless score @s VG_elytraflying matches 1 if score @s VG_riflechange < VG_defines VG_def_riflechng run title @s actionbar ["",{"text":"Changing to Rifle: ","color":"green"},{"score":{"name":"@s ","objective":"VG_riflechange"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_riflechng"},"color":"green"}]
execute as @a[tag=!VG_bayonetcooldown] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] if score @s VG_selectedgun matches 5 unless score @s VG_elytraflying matches 1 if score @s VG_rgunchange < VG_defines VG_def_rgunchng run title @s actionbar ["",{"text":"Changing to Rocket Gun: ","color":"green"},{"score":{"name":"@s ","objective":"VG_rgunchange"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_rgunchng"},"color":"green"}]
execute as @a[tag=!VG_bayonetcooldown] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] if score @s VG_selectedgun matches 7 unless score @s VG_elytraflying matches 1 if score @s VG_bayonetchange < VG_defines VG_def_bnetchng run title @s actionbar ["",{"text":"Changing to Bayonet: ","color":"green"},{"score":{"name":"@s ","objective":"VG_bayonetchange"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_bnetchng"},"color":"green"}]

#Tickdown
execute as @e[type=arrow,tag=VG_bullet,scores={VG_tickdown=1..}] run scoreboard players remove @s VG_tickdown 1
execute as @e[type=arrow,tag=VG_shotgunbullet,scores={VG_tickdown=0},tag=VG_shotgunbulletstraight] store result entity @s Motion[0] double 0.00000001 run scoreboard players get @s VG_ftarrowmtnX
execute as @e[type=arrow,tag=VG_shotgunbullet,scores={VG_tickdown=0},tag=VG_shotgunbulletstraight] store result entity @s Motion[1] double 0.00000001 run scoreboard players get @s VG_ftarrowmtnY
execute as @e[type=arrow,tag=VG_shotgunbullet,scores={VG_tickdown=0},tag=VG_shotgunbulletstraight] store result entity @s Motion[2] double 0.00000001 run scoreboard players get @s VG_ftarrowmtnZ

execute as @e[type=arrow,tag=VG_shotgunbullet,scores={VG_tickdown=0},tag=!VG_shotgunbulletstraight] store result entity @s Motion[0] double 0.00000001 run scoreboard players get @s VG_tarrowmtnX
execute as @e[type=arrow,tag=VG_shotgunbullet,scores={VG_tickdown=0},tag=!VG_shotgunbulletstraight] store result entity @s Motion[1] double 0.00000001 run scoreboard players get @s VG_tarrowmtnY
execute as @e[type=arrow,tag=VG_shotgunbullet,scores={VG_tickdown=0},tag=!VG_shotgunbulletstraight] store result entity @s Motion[2] double 0.00000001 run scoreboard players get @s VG_tarrowmtnZ

execute as @e[type=arrow,tag=VG_autoturbullet,scores={VG_tickdown=0}] store result entity @s Motion[0] double 0.00000001 run scoreboard players get @s VG_tarrowmtnX
execute as @e[type=arrow,tag=VG_autoturbullet,scores={VG_tickdown=0}] store result entity @s Motion[1] double 0.00000001 run scoreboard players get @s VG_tarrowmtnY
execute as @e[type=arrow,tag=VG_autoturbullet,scores={VG_tickdown=0}] store result entity @s Motion[2] double 0.00000001 run scoreboard players get @s VG_tarrowmtnZ

execute as @e[type=arrow,tag=VG_egunbullet,scores={VG_tickdown=0}] store result entity @s Motion[0] double 0.00000001 run scoreboard players get @s VG_tarrowmtnX
execute as @e[type=arrow,tag=VG_egunbullet,scores={VG_tickdown=0}] store result entity @s Motion[1] double 0.00000001 run scoreboard players get @s VG_tarrowmtnY
execute as @e[type=arrow,tag=VG_egunbullet,scores={VG_tickdown=0}] store result entity @s Motion[2] double 0.00000001 run scoreboard players get @s VG_tarrowmtnZ

execute as @e[type=arrow,tag=VG_mgunbullet,scores={VG_tickdown=0}] store result entity @s Motion[0] double 0.00000001 run scoreboard players get @s VG_tarrowmtnX
execute as @e[type=arrow,tag=VG_mgunbullet,scores={VG_tickdown=0}] store result entity @s Motion[1] double 0.00000001 run scoreboard players get @s VG_tarrowmtnY
execute as @e[type=arrow,tag=VG_mgunbullet,scores={VG_tickdown=0}] store result entity @s Motion[2] double 0.00000001 run scoreboard players get @s VG_tarrowmtnZ

execute as @e[type=fireball,tag=VG_rgunbullet,scores={VG_tickdown=0}] store result entity @s Motion[0] double 0.013 run scoreboard players get @s VG_tarrowmtnX
execute as @e[type=fireball,tag=VG_rgunbullet,scores={VG_tickdown=0}] store result entity @s Motion[1] double 0.013 run scoreboard players get @s VG_tarrowmtnY
execute as @e[type=fireball,tag=VG_rgunbullet,scores={VG_tickdown=0}] store result entity @s Motion[2] double 0.013 run scoreboard players get @s VG_tarrowmtnZ

execute as @e[type=arrow,tag=VG_pistolbullet,scores={VG_tickdown=0}] store result entity @s Motion[0] double 0.00000001 run scoreboard players get @s VG_tarrowmtnX
execute as @e[type=arrow,tag=VG_pistolbullet,scores={VG_tickdown=0}] store result entity @s Motion[1] double 0.00000001 run scoreboard players get @s VG_tarrowmtnY
execute as @e[type=arrow,tag=VG_pistolbullet,scores={VG_tickdown=0}] store result entity @s Motion[2] double 0.00000001 run scoreboard players get @s VG_tarrowmtnZ

execute as @e[type=arrow,tag=VG_hmgbullet,scores={VG_tickdown=0}] store result entity @s Motion[0] double 0.00000001 run scoreboard players get @s VG_tarrowmtnX
execute as @e[type=arrow,tag=VG_hmgbullet,scores={VG_tickdown=0}] store result entity @s Motion[1] double 0.00000001 run scoreboard players get @s VG_tarrowmtnY
execute as @e[type=arrow,tag=VG_hmgbullet,scores={VG_tickdown=0}] store result entity @s Motion[2] double 0.00000001 run scoreboard players get @s VG_tarrowmtnZ

execute as @e[type=arrow,tag=VG_riflebullet,scores={VG_tickdown=0}] store result entity @s Motion[0] double 0.00000001 run scoreboard players get @s VG_tarrowmtnX
execute as @e[type=arrow,tag=VG_riflebullet,scores={VG_tickdown=0}] store result entity @s Motion[1] double 0.00000001 run scoreboard players get @s VG_tarrowmtnY
execute as @e[type=arrow,tag=VG_riflebullet,scores={VG_tickdown=0}] store result entity @s Motion[2] double 0.00000001 run scoreboard players get @s VG_tarrowmtnZ

execute as @e[type=fireball,tag=VG_rturretbullet,scores={VG_tickdown=0}] store result entity @s Motion[0] double 0.02 run scoreboard players get @s VG_tarrowmtnX
execute as @e[type=fireball,tag=VG_rturretbullet,scores={VG_tickdown=0}] store result entity @s Motion[1] double 0.02 run scoreboard players get @s VG_tarrowmtnY
execute as @e[type=fireball,tag=VG_rturretbullet,scores={VG_tickdown=0}] store result entity @s Motion[2] double 0.02 run scoreboard players get @s VG_tarrowmtnZ

execute as @e[type=arrow,tag=VG_smgbullet,scores={VG_tickdown=0}] store result entity @s Motion[0] double 0.00000001 run scoreboard players get @s VG_tarrowmtnX
execute as @e[type=arrow,tag=VG_smgbullet,scores={VG_tickdown=0}] store result entity @s Motion[1] double 0.00000001 run scoreboard players get @s VG_tarrowmtnY
execute as @e[type=arrow,tag=VG_smgbullet,scores={VG_tickdown=0}] store result entity @s Motion[2] double 0.00000001 run scoreboard players get @s VG_tarrowmtnZ

execute as @e[type=arrow,tag=VG_vehicle_lmgbullet,scores={VG_tickdown=0}] store result entity @s Motion[0] double 0.00000001 run scoreboard players get @s VG_tarrowmtnX
execute as @e[type=arrow,tag=VG_vehicle_lmgbullet,scores={VG_tickdown=0}] store result entity @s Motion[1] double 0.00000001 run scoreboard players get @s VG_tarrowmtnY
execute as @e[type=arrow,tag=VG_vehicle_lmgbullet,scores={VG_tickdown=0}] store result entity @s Motion[2] double 0.00000001 run scoreboard players get @s VG_tarrowmtnZ

execute as @e[type=arrow,tag=VG_vehicle_hmgbullet,scores={VG_tickdown=0}] store result entity @s Motion[0] double 0.00000001 run scoreboard players get @s VG_tarrowmtnX
execute as @e[type=arrow,tag=VG_vehicle_hmgbullet,scores={VG_tickdown=0}] store result entity @s Motion[1] double 0.00000001 run scoreboard players get @s VG_tarrowmtnY
execute as @e[type=arrow,tag=VG_vehicle_hmgbullet,scores={VG_tickdown=0}] store result entity @s Motion[2] double 0.00000001 run scoreboard players get @s VG_tarrowmtnZ

execute as @e[type=arrow,tag=VG_vehicle_frag,scores={VG_tickdown=0}] store result entity @s Motion[0] double 0.00000001 run scoreboard players get @s VG_tarrowmtnX
execute as @e[type=arrow,tag=VG_vehicle_frag,scores={VG_tickdown=0}] store result entity @s Motion[1] double 0.00000001 run scoreboard players get @s VG_tarrowmtnY
execute as @e[type=arrow,tag=VG_vehicle_frag,scores={VG_tickdown=0}] store result entity @s Motion[2] double 0.00000001 run scoreboard players get @s VG_tarrowmtnZ

execute as @e[type=arrow,tag=VG_bullet,scores={VG_tickdown=0},tag=!VG_shotgunbulletstraight] run scoreboard players reset @s VG_tickdown

tag @e[type=arrow,tag=VG_bullet,tag=VG_shotgunbullet,tag=VG_shotgunbulletstraight] remove VG_shotgunbulletstraight

#Fire
tag @a[scores={VG_fireCoaS=1..,VG_selectedgun=1}] add VG_firingpistol
tag @a[scores={VG_fireCoaS=1..,VG_selectedgun=2}] add VG_firingsmg
tag @a[scores={VG_fireCoaS=1..,VG_selectedgun=3}] add VG_firingshotgun
tag @a[scores={VG_fireCoaS=1..,VG_selectedgun=4}] add VG_firingrifle
tag @a[scores={VG_fireCoaS=1..,VG_selectedgun=5}] add VG_firingrgun
tag @a[scores={VG_fireCoaS=1..,VG_selectedgun=6}] add VG_turretdestroyer
tag @a[scores={VG_fireCoaS=1..,VG_selectedgun=7}] add VG_bayonetcharging

#Setting fire status
execute as @a[tag=VG_firingpistol] if score @s VG_pistolchange >= VG_defines VG_def_pstlchng run scoreboard players add @s VG_fpistol 1
execute as @a[tag=VG_firingsmg] if score @s VG_smgchange >= VG_defines VG_def_smgchng run scoreboard players add @s VG_fsmg 1
execute as @a[tag=VG_firingshotgun] if score @s VG_shotgunchange >= VG_defines VG_def_shtgnchng run scoreboard players add @s VG_fshotgun 1
execute as @a[tag=VG_firingrifle] if score @s VG_riflechange >= VG_defines VG_def_riflechng run scoreboard players add @s VG_frifle 1
execute as @a[tag=VG_firingrgun] if score @s VG_rgunchange >= VG_defines VG_def_rgunchng run scoreboard players add @s VG_frgun 1
execute as @a[tag=VG_bayonetcharging,tag=!VG_nowcharging,tag=!VG_bayonetcooldown] if score @s VG_bayonetchange >= VG_defines VG_def_bnetchng run scoreboard players add @s VG_firebayonet 1
scoreboard players add @a[scores={VG_sneak=1,VG_elytraflying=1},tag=!VG_overheat,tag=VG_hasfighterelytra,tag=!VG_bayonetcooldown] VG_fegun 1
scoreboard players add @a[scores={VG_sneak=1,VG_elytraflying=1},tag=!VG_overheat,tag=VG_hascaselytra,tag=!VG_bayonetcooldown] VG_fcasbomb 1
scoreboard players add @a[scores={VG_sneak=1,VG_elytraflying=1},tag=!VG_overheat,tag=VG_hasstratelytra,tag=!VG_bayonetcooldown] VG_fstratbomb 1
tag @a remove VG_bayonetcharging 

#Gun info
execute if score VG_defines VG_def_egunammo matches 1.. as @a[tag=VG_hasfighterelytra,tag=!VG_bayonetcooldown,scores={VG_selectedgun=0,VG_elytraflying=0}] if score @s VG_elytradelay < VG_defines VG_def_flydelay at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Elytra Gun: ","color":"green"},{"text":"Fly to start warming the engines. ","color":"yellow"},{"text":"| ","color":"green"},{"text":"Ammo: ","color":"green"},{"score":{"name":"@s","objective":"VG_egunammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_egunammo"},"color":"green"}]
execute if score VG_defines VG_def_egunammo matches 1.. as @a[tag=VG_hasfighterelytra,tag=!VG_bayonetcooldown,scores={VG_selectedgun=0,VG_elytraflying=1}] if score @s VG_elytradelay < VG_defines VG_def_flydelay at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Elytra Gun: ","color":"green"},{"text":"Warming the engines: ","color":"yellow"},{"score":{"name":"@s","objective":"VG_elytradelay"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_flydelay"},"color":"green"},{"text":" | ","color":"green"},{"text":"Ammo: ","color":"green"},{"score":{"name":"@s","objective":"VG_egunammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_egunammo"},"color":"green"}]
execute if score VG_defines VG_def_egunammo matches 1.. as @a[gamemode=!creative,tag=!VG_overheat,tag=VG_hasfighterelytra,tag=!VG_bayonetcooldown,scores={VG_selectedgun=0}] if score @s VG_elytradelay >= VG_defines VG_def_flydelay at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Elytra Gun Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_egunammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_egunammo"},"color":"green"},{"text":" | Temperature: ","color":"green"},{"score":{"name":"@s","objective":"VG_eguntemp"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_eguntemp"},"color":"red"},{"text":"C","color":"green"}]
execute if score VG_defines VG_def_egunammo matches 1.. as @a[gamemode=!creative,tag=VG_overheat,tag=VG_hasfighterelytra,tag=!VG_bayonetcooldown,scores={VG_selectedgun=0}] if score @s VG_elytradelay >= VG_defines VG_def_flydelay at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Elytra Gun Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_egunammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_egunammo"},"color":"green"},{"text":" | Temperature: ","color":"green"},{"score":{"name":"@s","objective":"VG_eguntemp"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_eguntemp"},"color":"red"},{"text":"C","color":"green"},{"text":" - OVERHEAT","color":"red"}]
execute if score VG_defines VG_def_egunammo matches 1.. as @a[gamemode=creative,tag=VG_hasfighterelytra,scores={VG_selectedgun=0}] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] if score @s VG_elytradelay >= VG_defines VG_def_flydelay run title @s actionbar [{"text":"Elytra Gun: ","color":"green"},{"text":"Creative mode unlimited firing","color":"yellow"},{"text":" | Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_egunammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_egunammo"},"color":"green"}]
execute unless score VG_defines VG_def_egunammo matches 1.. as @a[tag=VG_hasfighterelytra,scores={VG_selectedgun=0}] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar [{"text":"Elytra Gun: ","color":"green"},{"text":"WEAPON DISABLED","color":"red"}]

execute if score VG_defines VG_def_casammo matches 1.. as @a[tag=VG_hascaselytra,tag=!VG_bayonetcooldown,scores={VG_selectedgun=0,VG_elytraflying=0}] at @s if score @s VG_elytradelay < VG_defines VG_def_flydelay unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Close Air Support: ","color":"green"},{"text":"Fly to start warming the engines. ","color":"yellow"},{"text":"| ","color":"green"},{"text":"Ammo: ","color":"green"},{"score":{"name":"@s","objective":"VG_casammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_casammo"},"color":"green"}]
execute if score VG_defines VG_def_casammo matches 1.. as @a[tag=VG_hascaselytra,tag=!VG_bayonetcooldown,scores={VG_selectedgun=0,VG_elytraflying=1}] at @s if score @s VG_elytradelay < VG_defines VG_def_flydelay unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Close Air Support: ","color":"green"},{"text":"Warming the engines: ","color":"yellow"},{"score":{"name":"@s","objective":"VG_elytradelay"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_flydelay"},"color":"green"},{"text":" | ","color":"green"},{"text":"Ammo: ","color":"green"},{"score":{"name":"@s","objective":"VG_casammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_casammo"},"color":"green"}]
execute if score VG_defines VG_def_casammo matches 1.. as @a[gamemode=!creative,tag=VG_hascaselytra,tag=!VG_bayonetcooldown,scores={VG_selectedgun=0}] at @s if score @s VG_elytradelay >= VG_defines VG_def_flydelay unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Close Air Support Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_casammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_casammo"},"color":"green"}]
execute if score VG_defines VG_def_casammo matches 1.. as @a[gamemode=!creative,tag=VG_hascaselytra,tag=!VG_bayonetcooldown,scores={VG_selectedgun=0}] at @s if score @s VG_elytradelay >= VG_defines VG_def_flydelay unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Close Air Support Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_casammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_casammo"},"color":"green"}]
execute if score VG_defines VG_def_casammo matches 1.. as @a[gamemode=creative,tag=VG_hascaselytra,scores={VG_selectedgun=0}] at @s if score @s VG_elytradelay >= VG_defines VG_def_flydelay unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar [{"text":"Close Air Support: ","color":"green"},{"text":"Creative mode unlimited firing","color":"yellow"},{"text":" | Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_casammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_casammo"},"color":"green"}]
execute unless score VG_defines VG_def_casammo matches 1.. as @a[tag=VG_hascaselytra,scores={VG_selectedgun=0}] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar [{"text":"Close Air Support: ","color":"green"},{"text":"WEAPON DISABLED","color":"red"}]

execute if score VG_defines VG_def_stratammo matches 1.. as @a[tag=VG_hasstratelytra,tag=!VG_bayonetcooldown,scores={VG_selectedgun=0,VG_elytraflying=0}] at @s if score @s VG_elytradelay < VG_defines VG_def_flydelay unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Strategic Bomber: ","color":"green"},{"text":"Fly to start warming the engines. ","color":"yellow"},{"text":"| ","color":"green"},{"text":"Ammo: ","color":"green"},{"score":{"name":"@s","objective":"VG_stratammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_stratammo"},"color":"green"}]
execute if score VG_defines VG_def_stratammo matches 1.. as @a[tag=VG_hasstratelytra,tag=!VG_bayonetcooldown,scores={VG_selectedgun=0,VG_elytraflying=1}] at @s if score @s VG_elytradelay < VG_defines VG_def_flydelay unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Strategic Bomber: ","color":"green"},{"text":"Warming the engines: ","color":"yellow"},{"score":{"name":"@s","objective":"VG_elytradelay"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_flydelay"},"color":"green"},{"text":" | ","color":"green"},{"text":"Ammo: ","color":"green"},{"score":{"name":"@s","objective":"VG_stratammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_stratammo"},"color":"green"}]
execute if score VG_defines VG_def_stratammo matches 1.. as @a[gamemode=!creative,tag=VG_hasstratelytra,tag=!VG_bayonetcooldown,scores={VG_selectedgun=0}] at @s if score @s VG_elytradelay >= VG_defines VG_def_flydelay unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Strategic Bomber Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_stratammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_stratammo"},"color":"green"}]
execute if score VG_defines VG_def_stratammo matches 1.. as @a[gamemode=!creative,tag=VG_hasstratelytra,tag=!VG_bayonetcooldown,scores={VG_selectedgun=0}] at @s if score @s VG_elytradelay >= VG_defines VG_def_flydelay unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Strategic Bomber Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_stratammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_stratammo"},"color":"green"}]
execute if score VG_defines VG_def_stratammo matches 1.. as @a[gamemode=creative,tag=VG_hasstratelytra,scores={VG_selectedgun=0}] at @s if score @s VG_elytradelay >= VG_defines VG_def_flydelay unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar [{"text":"Strategic Bomber: ","color":"green"},{"text":"Creative mode unlimited firing","color":"yellow"},{"text":" | Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_stratammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_stratammo"},"color":"green"}]
execute unless score VG_defines VG_def_stratammo matches 1.. as @a[tag=VG_hasstratelytra,scores={VG_selectedgun=0}] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar [{"text":"Strategic Bomber: ","color":"green"},{"text":"WEAPON DISABLED","color":"red"}]

execute if score VG_defines VG_def_pstlammo matches 1.. as @a[gamemode=!creative,scores={VG_selectedgun=1}] if score @s VG_pistolchange >= VG_defines VG_def_pstlchng at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Pistol Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_pistolammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_pstlammo"},"color":"green"}]
execute if score VG_defines VG_def_smgammo matches 1.. as @a[gamemode=!creative,scores={VG_selectedgun=2}] if score @s VG_smgchange >= VG_defines VG_def_smgchng at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"SMG Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_smgammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_smgammo"},"color":"green"}]
execute if score VG_defines VG_def_shtgnammo matches 1.. as @a[gamemode=!creative,scores={VG_selectedgun=3}] if score @s VG_shotgunchange >= VG_defines VG_def_shtgnchng at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Shotgun Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_shotgunammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_shtgnammo"},"color":"green"}]
execute if score VG_defines VG_def_rifleammo matches 1.. as @a[gamemode=!creative,scores={VG_selectedgun=4}] if score @s VG_riflechange >= VG_defines VG_def_riflechng at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Rifle Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_rifleammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_rifleammo"},"color":"green"}]
execute if score VG_defines VG_def_rgunammo matches 1.. as @a[gamemode=!creative,scores={VG_selectedgun=5}] if score @s VG_rgunchange >= VG_defines VG_def_rgunchng at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Rockets: ","color":"green"},{"score":{"name":"@s ","objective":"VG_rgunammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_rgunammo"},"color":"green"}]
execute as @a[gamemode=!creative,scores={VG_selectedgun=7},tag=!VG_nowcharging,tag=!VG_bayonetcooldown] if score @s VG_bayonetchange >= VG_defines VG_def_bnetchng at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Bayonet charge ready","color":"green"}]


execute if score VG_defines VG_def_pstlammo matches 1.. as @a[gamemode=creative,scores={VG_selectedgun=1}] if score @s VG_pistolchange >= VG_defines VG_def_pstlchng at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Pistol: ","color":"green"},{"text":"Creative mode unlimited firing","color":"yellow"},{"text":" | Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_pistolammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_pstlammo"},"color":"green"}]
execute if score VG_defines VG_def_smgammo matches 1.. as @a[gamemode=creative,scores={VG_selectedgun=2}] if score @s VG_smgchange >= VG_defines VG_def_smgchng at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"SMG: ","color":"green"},{"text":"Creative mode unlimited firing","color":"yellow"},{"text":" | Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_smgammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_smgammo"},"color":"green"}]
execute if score VG_defines VG_def_shtgnammo matches 1.. as @a[gamemode=creative,scores={VG_selectedgun=3}] if score @s VG_shotgunchange >= VG_defines VG_def_shtgnchng at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Shotgun: ","color":"green"},{"text":"Creative mode unlimited firing","color":"yellow"},{"text":" | Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_shotgunammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_shtgnammo"},"color":"green"}]
execute if score VG_defines VG_def_rifleammo matches 1.. as @a[gamemode=creative,scores={VG_selectedgun=4}] if score @s VG_riflechange >= VG_defines VG_def_riflechng at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Rifle: ","color":"green"},{"text":"Creative mode unlimited firing","color":"yellow"},{"text":" | Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_rifleammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_rifleammo"},"color":"green"}]
execute if score VG_defines VG_def_rgunammo matches 1.. as @a[gamemode=creative,scores={VG_selectedgun=5}] if score @s VG_rgunchange >= VG_defines VG_def_rgunchng at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Rockets: ","color":"green"},{"text":"Creative mode unlimited firing","color":"yellow"},{"text":" | Ammo: ","color":"green"},{"score":{"name":"@s ","objective":"VG_rgunammo"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_rgunammo"},"color":"green"}]
execute as @a[gamemode=creative,scores={VG_selectedgun=7},tag=!VG_nowcharging,tag=!VG_bayonetcooldown] if score @s VG_bayonetchange >= VG_defines VG_def_bnetchng at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Bayonet charge ready - ","color":"green"},{"text":"Creative mode no cooldown","color":"yellow"}]

execute unless score VG_defines VG_def_pstlammo matches 1.. as @a[scores={VG_selectedgun=1}] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Pistol: ","color":"green"},{"text":"WEAPON DISABLED","color":"red"}]
execute unless score VG_defines VG_def_smgammo matches 1.. as @a[scores={VG_selectedgun=2}] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"SMG: ","color":"green"},{"text":"WEAPON DISABLED","color":"red"}]
execute unless score VG_defines VG_def_shtgnammo matches 1.. as @a[scores={VG_selectedgun=3}] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Shotgun: ","color":"green"},{"text":"WEAPON DISABLED","color":"red"}]
execute unless score VG_defines VG_def_rifleammo matches 1.. as @a[scores={VG_selectedgun=4}] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Rifle: ","color":"green"},{"text":"WEAPON DISABLED","color":"red"}]
execute unless score VG_defines VG_def_rgunammo matches 1.. as @a[scores={VG_selectedgun=5}] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Rockets: ","color":"green"},{"text":"WEAPON DISABLED","color":"red"}]

#No shoot while reloading
scoreboard players set @a[tag=VG_reloadingpistol] VG_fpistol 0
scoreboard players set @a[tag=VG_reloadingsmg] VG_fsmg 0
scoreboard players set @a[tag=VG_reloadingshotgun] VG_fshotgun 0
scoreboard players set @a[tag=VG_reloadingrifle] VG_frifle 0
scoreboard players set @a[tag=VG_reloadingrgun] VG_frgun 0

#No switching away from bayonet
execute as @a[scores={VG_bayonetenergy=1..}] unless score @s VG_selectedgun matches 7 run scoreboard players set @s VG_bayonetenergy 1

#Special SMG handling for cooldown
execute as @a[scores={VG_smgammo=1..,VG_fsmg=1..,VG_sneak=0}] run scoreboard players set @s VG_smgcooldwn -3
#execute as @a[scores={VG_smgammo=1..,VG_fsmg=1..,VG_sneak=0}] run scoreboard players set @s VG_smgstate 1
#execute as @a[scores={VG_smgcooldwn=..-1}] run scoreboard players add @s VG_smgstate 1
execute as @a[scores={VG_smgammo=1..,VG_smgcooldwn=..-1}] run scoreboard players set @s VG_fsmg 1
execute as @a[scores={VG_smgcooldwn=..-1}] run scoreboard players add @s VG_smgcooldwn 1
#execute as @a[scores={VG_smgstate=2..}] run scoreboard players set @s VG_smgstate 0
execute as @a[scores={VG_smgammo=0}] run scoreboard players set @s VG_smgcooldwn 0
execute as @a[tag=VG_reloadingsmg] run scoreboard players set @s VG_smgcooldwn 0

#Other cooldowns
scoreboard players remove @a[scores={VG_pistolcooldwn=1..}] VG_pistolcooldwn 1
execute as @a[scores={VG_shtguncooldwn=1..,VG_selectedgun=3}] if score @s VG_shotgunchange = VG_defines VG_def_shtgnchng run scoreboard players remove @s VG_shtguncooldwn 1
execute as @a[scores={VG_shtguncooldwn=1..}] unless score @s VG_selectedgun matches 3 run scoreboard players operation @s VG_shtguncooldwn = VG_defines VG_def_stgncldwn
execute at @a[scores={VG_shtguncooldwn=6}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1.6
execute at @a[scores={VG_shtguncooldwn=2}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1.6

#Guns
execute as @a[scores={VG_pistolammo=1..,VG_fpistol=1..,VG_sneak=0},limit=1] unless score @s VG_pistolcooldwn matches 1.. run function vanillaguns2:guns/firepistol
execute as @a[scores={VG_smgammo=1..,VG_fsmg=1..,VG_sneak=0},limit=1] run function vanillaguns2:guns/firesmg
execute as @a[scores={VG_shotgunammo=1..,VG_fshotgun=1..,VG_sneak=0},limit=1] unless score @s VG_shtguncooldwn matches 1.. run function vanillaguns2:guns/fireshotgun
execute as @a[scores={VG_rifleammo=1..,VG_frifle=1..,VG_sneak=0},limit=1] run function vanillaguns2:guns/firerifle
execute as @a[scores={VG_fegun=1..},limit=1] if score @s VG_elytradelay >= VG_defines VG_def_flydelay run function vanillaguns2:guns/fireegun
execute as @a[scores={VG_fcasbomb=1..}] if score @s VG_elytradelay >= VG_defines VG_def_flydelay run function vanillaguns2:guns/firecasbomb
execute as @a[scores={VG_fstratbomb=1..}] if score @s VG_elytradelay >= VG_defines VG_def_flydelay run function vanillaguns2:guns/firestratbomb
execute as @a[scores={VG_rgunammo=1..,VG_frgun=1..,VG_sneak=0}] run function vanillaguns2:special/rgunchecks
execute as @a[scores={VG_firebayonet=1..}] run function vanillaguns2:guns/firebayonet
execute as @a[tag=VG_nowcharging] run function vanillaguns2:guns/nowchargingbayonet
execute as @a[tag=VG_endbayonet] run function vanillaguns2:guns/endbayonetcharge
execute as @a[scores={VG_lightBomb=1..}] run function vanillaguns2:turrets/lightbomb
execute as @a[scores={VG_heavyBomb=1..}] run function vanillaguns2:turrets/heavybomb

#Turrets 
function vanillaguns2:turrets/machinegun
function vanillaguns2:turrets/rocketturret
function vanillaguns2:turrets/flakgun
function vanillaguns2:turrets/laserturret
function vanillaguns2:turrets/autoturret
function vanillaguns2:turrets/heavymachinegun

#Elytra gun temp
function vanillaguns2:guns/eguntemp

#Special
function vanillaguns2:special/turretdestroyer
function vanillaguns2:special/lightbombtimer
function vanillaguns2:special/heavybombtimer
function vanillaguns2:special/bayonetcooldown

#Rocket direction fix
execute as @e[type=fireball,tag=!VG_init,tag=VG_bullet] store result score @s VG_tempY run data get entity @s direction[1] 5000
execute as @a at @s anchored eyes run tp @e[type=fireball,tag=!VG_init,tag=VG_bullet,distance=..1] ^ ^ ^.1
execute as @e[type=fireball,tag=!VG_init,tag=VG_bullet] store result entity @s direction[1] double 0.0002 run scoreboard players get @s VG_tempY
execute as @e[type=fireball,tag=!VG_init,tag=VG_bullet] run tag @s add VG_init

#Reloading
function vanillaguns2:reload/reloadpistol
function vanillaguns2:reload/reloadsmg
function vanillaguns2:reload/reloadshotgun
function vanillaguns2:reload/reloadrifle
function vanillaguns2:reload/reloadegun
function vanillaguns2:reload/reloadcas
function vanillaguns2:reload/reloadstrat
function vanillaguns2:reload/reloadrgun

#Cancel firing
scoreboard players set @a[tag=VG_reloadingpistol] VG_fpistol 0
scoreboard players set @a[tag=VG_reloadingsmg] VG_fsmg 0
scoreboard players set @a[tag=VG_reloadingshotgun] VG_fshotgun 0
scoreboard players set @a[tag=VG_reloadingrifle] VG_frifle 0
scoreboard players set @a[tag=VG_reloadingrgun] VG_frgun 0

#Cancel reloading
tag @a[tag=!VG_canreloadpistol] remove VG_reloadingpistol
tag @a[tag=!VG_canreloadsmg] remove VG_reloadingsmg
tag @a[tag=!VG_canreloadshotgun] remove VG_reloadingshotgun
tag @a[tag=!VG_canreloadrifle] remove VG_reloadingrifle
tag @a[tag=!VG_canreloadrgun] remove VG_reloadingrgun

#RESETS
#Add 0 ammo
scoreboard players add @a VG_pistolammo 0
scoreboard players add @a VG_smgammo 0
scoreboard players add @a VG_shotgunammo 0
scoreboard players add @a VG_rifleammo 0
scoreboard players add @a VG_egunammo 0
scoreboard players add @a VG_casammo 0
scoreboard players add @a VG_stratammo 0
scoreboard players add @a VG_rgunammo 0

#Reset pistol
execute as @a if score @s VG_pistolammo >= VG_defines VG_def_pstlammo run tag @s remove VG_reloadingpistol
execute as @a if score @s VG_pistolammo >= VG_defines VG_def_pstlammo run scoreboard players set @s VG_pistoltimer 0
execute as @a[scores={VG_fpistol=..-1},tag=!VG_reloadingpistol] if score @s VG_pistolammo matches 1.. unless score VG_defines VG_def_pstlammo matches 1.. run scoreboard players set @s VG_fpistol 0
tag @a remove VG_canreloadpistol
tag @a remove VG_firingpistol
scoreboard players add @a[scores={VG_fpistol=..-2}] VG_fpistol 1

#Reset smg
execute as @a if score @s VG_smgammo >= VG_defines VG_def_smgammo run tag @s remove VG_reloadingsmg
execute as @a if score @s VG_smgammo >= VG_defines VG_def_smgammo run scoreboard players set @s VG_smgtimer 0
execute as @a[scores={VG_fsmg=..-1},tag=!VG_reloadingsmg] if score @s VG_smgammo matches 1.. unless score VG_defines VG_def_smgammo matches 1.. run scoreboard players set @s VG_fsmg 0
tag @a remove VG_canreloadsmg
tag @a remove VG_firingsmg
scoreboard players add @a[scores={VG_fsmg=..-2}] VG_fsmg 1

#Reset shotgun
execute as @a if score @s VG_shotgunammo >= VG_defines VG_def_shtgnammo run tag @s remove VG_reloadingshotgun
execute as @a if score @s VG_shotgunammo >= VG_defines VG_def_shtgnammo run scoreboard players set @s VG_shotguntimer 0
execute as @a[scores={VG_fshotgun=..-1},tag=!VG_reloadingshotgun] if score @s VG_shotgunammo matches 1.. unless score VG_defines VG_def_shtgnammo matches 1.. run scoreboard players set @s VG_fshotgun 0
tag @a remove VG_canreloadshotgun
tag @a remove VG_firingshotgun
scoreboard players add @a[scores={VG_fshotgun=..-2}] VG_fshotgun 1

#Reset rifle
execute as @a if score @s VG_rifleammo >= VG_defines VG_def_rifleammo run tag @s remove VG_reloadingrifle
execute as @a if score @s VG_rifleammo >= VG_defines VG_def_rifleammo run scoreboard players set @s VG_rifletimer 0
execute as @a[scores={VG_frifle=..-1},tag=!VG_reloadingrifle] if score @s VG_rifleammo matches 1.. unless score VG_defines VG_def_rifleammo matches 1.. run scoreboard players set @s VG_frifle 0
tag @a remove VG_canreloadrifle
tag @a remove VG_firingrifle
scoreboard players add @a[scores={VG_frifle=..-2}] VG_frifle 1

#Reset rocket gun
execute as @a if score @s VG_rgunammo >= VG_defines VG_def_rgunammo run tag @s remove VG_reloadingrgun
execute as @a if score @s VG_rgunammo >= VG_defines VG_def_rgunammo run scoreboard players set @s VG_rguntimer 0
execute as @a[scores={VG_frgun=..-1},tag=!VG_reloadingrgun] if score @s VG_rgunammo matches 1.. unless score VG_defines VG_def_rgunammo matches 1.. run scoreboard players set @s VG_frgun 0
tag @a remove VG_canreloadrgun
tag @a remove VG_firingrgun
scoreboard players add @a[scores={VG_frgun=..-2}] VG_frgun 1

#Reset elytra gun
scoreboard players add @a[scores={VG_fegun=..-2}] VG_fegun 1

#Reset fire status
scoreboard players set @a[scores={VG_fpistol=1..}] VG_fpistol 0
scoreboard players set @a[scores={VG_fsmg=1..}] VG_fsmg 0
scoreboard players set @a[scores={VG_fshotgun=1..}] VG_fshotgun 0
scoreboard players set @a[scores={VG_frifle=1..}] VG_frifle 0
scoreboard players set @a[scores={VG_frgun=1..}] VG_frgun 0

#Bombs cooldown
scoreboard players add @a[tag=VG_LBcooldown] VG_lbtimer 1
scoreboard players add @a[tag=VG_HBcooldown] VG_hbtimer 1

execute as @a if score @s VG_lbtimer >= VG_defines VG_def_lbombcool run tag @s remove VG_LBcooldown
execute as @a if score @s VG_lbtimer >= VG_defines VG_def_lbombcool run scoreboard players set @s VG_lbtimer 0

execute as @a if score @s VG_hbtimer >= VG_defines VG_def_hbombcool run tag @s remove VG_HBcooldown
execute as @a if score @s VG_hbtimer >= VG_defines VG_def_hbombcool run scoreboard players set @s VG_hbtimer 0

#Stuck rocket remover
scoreboard players add @e[type=fireball,tag=VG_rocket] VG_rockettime 1
kill @e[type=fireball,tag=VG_rocket,scores={VG_rockettime=150..}]

#Stuck bullet remover
scoreboard players add @e[type=arrow,tag=VG_bullet] VG_bullettime 1
#kill @e[type=arrow,tag=VG_bullet,scores={VG_fall_calc=..0}]
#kill @e[type=arrow,tag=VG_autoturbullet,scores={VG_bullettime=300..}]
kill @e[type=arrow,tag=VG_bullet,scores={VG_bullettime=161..}]

#Elytra gun temp
scoreboard players add @a VG_eguntemp 0
scoreboard players set @a[scores={VG_eguntemp=..29}] VG_eguntemp 30

#Fixed turrets can't be moved
execute as @e[type=armor_stand,tag=VG_turret] run function vanillaguns2:turrets/fixturretlocation

#Recoil
execute as @a[scores={VG_recoilpistol=1..}] at @s run function vanillaguns2:recoil/pistolrecoil
execute as @a[scores={VG_recoilshotgun=1..}] at @s run function vanillaguns2:recoil/shotgunrecoil
execute as @a[scores={VG_recoilsmg=1..}] at @s run function vanillaguns2:recoil/smgrecoil
execute as @a[scores={VG_recoilrifle=1..}] at @s run function vanillaguns2:recoil/riflerecoil

#Invisible turrets
execute as @e[type=armor_stand,tag=VG_turret,scores={VG_turretinvis=1..}] run function vanillaguns2:turrets/makevisible

#Destroyed turret
execute as @e[type=armor_stand,tag=VG_turret] at @s if block ~ ~-.5 ~ #vanillaguns2:air run kill @s

#Reset swimming
scoreboard players set @a VG_swimming 0

#Linear damage falloff
execute as @e[type=arrow,tag=VG_bullet] run function vanillaguns2:special/calculatedecay

#Auto turret tagging
scoreboard players add @e[type=#vanillaguns2:hostileenhanced,tag=VG_autoturhit] VG_autoturdelay 1 
execute as @e[type=#vanillaguns2:hostileenhanced,tag=VG_autoturhit,scores={VG_autoturdelay=10..}] run function vanillaguns2:turrets/autoturret/removetags

#Rocket gun checks
scoreboard players set @a VG_rgunchecks 0

#Player ID
execute as @a[tag=!VG_givenplayerid,limit=1] run function vanillaguns2:special/giveplayerid

#Dead turrets
execute as @e[type=armor_stand,tag=VG_turret] at @s unless entity @e[type=villager,tag=VG_hpvillager,limit=1,sort=nearest,distance=..0.5] run function vanillaguns2:special/brokenturret
execute as @e[type=villager,tag=VG_hpvillager] at @s unless entity @e[type=armor_stand,tag=VG_turret,limit=1,sort=nearest,distance=..0.5] run kill @s

#Turret HP
execute as @e[type=villager,tag=VG_hpvillager] store result score @s VG_turrethp run data get entity @s Health 5

#Turret effects
execute at @e[type=villager,tag=VG_hpvillager,scores={VG_turrethp=81..99}] run particle minecraft:dust 0.75 0.75 0.75 1 ~ ~ ~ 0.33 0.75 0.33 1 5 normal @a[distance=0.01..]
execute at @e[type=villager,tag=VG_hpvillager,scores={VG_turrethp=..80}] run particle minecraft:dust 0.25 0.25 0.25 1 ~ ~ ~ 0.33 0.75 0.33 1 5 normal @a[distance=0.01..]
execute at @e[type=villager,tag=VG_hpvillager,scores={VG_turrethp=..60}] run particle minecraft:crit ~ ~ ~ 0.33 0.75 0.33 0.5 5 normal @a[distance=0.01..]
execute at @e[type=villager,tag=VG_hpvillager,scores={VG_turrethp=..40}] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.33 0.75 0.33 0.1 1 normal @a[distance=0.01..]
execute at @e[type=villager,tag=VG_hpvillager,scores={VG_turrethp=..20}] run particle minecraft:lava ~ ~ ~ 0.33 0.75 0.33 0.5 1 normal @a[distance=0.01..]

#Turret repair
execute as @e[type=villager,tag=VG_hpvillager,scores={VG_turrethp=..199}] at @s if entity @e[type=item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:flint"}}] run function vanillaguns2:turrets/repairturret

#Mobs using guns
#execute as @e[type=#vanillaguns2:hostileguns,tag=!VG_hasmobgun] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run function vanillaguns2:mobguns/pickupgun

#War machines
execute as @e[type=armor_stand] at @s if entity @e[type=item,distance=..1,sort=nearest,limit=1,nbt={Item:{id:"minecraft:obsidian"}}] if block ~ ~-1 ~ redstone_block run tag @s add VG_machineinitqueue
#effect give @e[type=#vanillaguns2:warmachineentities,tag=VG_vehiclebody] invisibility 2 0 true
effect give @e[type=villager,tag=VG_vehiclebody] invisibility 2 0 true
#execute as @e[type=shulker,tag=VG_vehiclebody] at @s run function vanillaguns2:warmachines/blocks
#execute as @e[type=armor_stand,tag=VG_vehiclebody] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:glass"},Time:0,DropItem:0,HurtEntities:0}
#execute as @e[type=armor_stand,tag=VG_vehiclebody] at @s run summon minecraft:falling_block ~ ~1 ~ {BlockState:{Name:"minecraft:glass"},Time:0,DropItem:0,HurtEntities:0}

execute as @e[type=armor_stand,limit=1,tag=VG_machineinitqueue] at @s run function vanillaguns2:warmachines/initialize
execute as @e[type=minecraft:shulker,scores={VG_vehiclepkqueu=1..}] run function vanillaguns2:warmachines/drainqueue

execute as @e[type=shulker,tag=VG_vehiclebody] store result score @s VG_vehiclehurt run data get entity @s HurtTime

function vanillaguns2:warmachines/hpcalc
tag @e[type=armor_stand,tag=VG_vehiclebody,scores={VG_vehicleid=1..},tag=VG_skiphealth] remove VG_skiphealth

effect give @e[type=shulker,tag=VG_block_obsidian,tag=!VG_tracks] resistance 2 3 true
effect give @e[type=shulker,tag=VG_block_stonebrick] resistance 2 1 true
effect give @e[type=shulker,tag=VG_block_bedrock] resistance 2 9 true
effect give @e[type=shulker,tag=VG_block_obsidian,tag=VG_tracks] resistance 2 9 true

#Entering vehicle
execute as @e[type=armor_stand,tag=VG_vehiclemarker,tag=!VG_vehicleoccupied] at @s positioned ~ ~3 ~ run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=VG_vehiclemarker,tag=!VG_vehicleoccupied] at @s positioned ~ ~3 ~ as @a[gamemode=!spectator,sort=nearest,limit=1,distance=..1] at @s positioned ~ ~-3 ~ run title @s actionbar ["",{"text":"Entering ","color":"green"},{"selector":"@e[type=armor_stand,tag=VG_vehiclemarker,sort=nearest,limit=1,distance=..1]","color":"aqua"},{"text":" . Progress: ","color":"green"},{"score":{"name":"@s","objective":"VG_entering"},"color":"green"},{"text":"/","color":"white"},{"score":{"name":"VG_defines","objective":"VG_def_entertime"},"color":"yellow"}]
execute as @e[type=armor_stand,tag=VG_vehiclemarker,tag=!VG_vehicleoccupied] at @s positioned ~ ~3 ~ as @a[gamemode=!spectator,sort=nearest,limit=1,scores={VG_sneak=1..},distance=..1] run scoreboard players add @s VG_entering 2
execute as @e[type=armor_stand,tag=VG_vehiclemarker,tag=!VG_vehicleoccupied] at @s positioned ~ ~3 ~ as @a[gamemode=!spectator,sort=nearest,limit=1,scores={VG_sneak=1..},distance=..1] positioned ~ ~-3 ~ if score @s VG_entering >= VG_defines VG_def_entertime run function vanillaguns2:warmachines/entervehicle
scoreboard players remove @a[scores={VG_entering=1..}] VG_entering 1
effect give @a[scores={VG_vehicleid=1..}] slowness 2 127 true
effect give @a[scores={VG_vehicleid=1..}] resistance 2 127 true
effect give @a[scores={VG_vehicleid=1..}] weakness 2 127 true

#Drawing aggro
execute as @e[type=armor_stand,tag=VG_vehicleoccupied] run scoreboard players add @s VG_vehicleaggro 1
execute as @e[type=armor_stand,tag=VG_vehicleoccupied,limit=1,scores={VG_vehicleaggro=200..}] at @s as @e[type=shulker,tag=VG_targetaggro] if score @s VG_vehicleid = @e[type=armor_stand,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..0.1] VG_vehicleid run function vanillaguns2:warmachines/aggro/makeaggro

#Giving items
execute as @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,tag=VG_armoredcarbody] at @s as @a[sort=nearest,limit=1,distance=..1,scores={VG_vehicleid=1..}] run function vanillaguns2:warmachines/hotbar/armoredcar
execute as @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,tag=VG_lighttankbody] at @s as @a[sort=nearest,limit=1,distance=..1,scores={VG_vehicleid=1..}] run function vanillaguns2:warmachines/hotbar/lighttank
execute as @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,tag=VG_heavytankbody] at @s as @a[sort=nearest,limit=1,distance=..1,scores={VG_vehicleid=1..}] run function vanillaguns2:warmachines/hotbar/heavytank

#Aim limiter
scoreboard players set @a VG_limitrange 0
execute as @a[scores={VG_vehicleid=1..}] store result score @s VG_limitrange run data get entity @s SelectedItem.tag.LimitRange
execute as @a[scores={VG_limitrange=1},x_rotation=-90..-10] at @s run tp @s ~ ~ ~ ~ -9.9
execute as @a[scores={VG_limitrange=1},x_rotation=5..90] at @s run tp @s ~ ~ ~ ~ 4.9
execute as @a[scores={VG_limitrange=2},x_rotation=-90..-15] at @s run tp @s ~ ~ ~ ~ -14.9
execute as @a[scores={VG_limitrange=2},x_rotation=5..90] at @s run tp @s ~ ~ ~ ~ 4.9
execute as @a[scores={VG_limitrange=3},x_rotation=-90..-20] at @s run tp @s ~ ~ ~ ~ -19.9
execute as @a[scores={VG_limitrange=3},x_rotation=10..90] at @s run tp @s ~ ~ ~ ~ 9.9

#Machines ambient sound
execute at @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied] run playsound minecraft:block.blastfurnace.fire_crackle player @a ~ ~ ~ 1 2 0

#Vehicle HUD
execute as @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,scores={VG_vehiclemovmod=0}] if score @s VG_vehiclehpperm matches 10.. at @s run title @a[sort=nearest,limit=1,distance=..1] actionbar ["",{"text":"Driving stopped: ","color":"yellow"},{"text":"PREPARING TO FIRE ","color":"red"},{"text":"| ","color":"white"},{"text":"Health: ","color":"green"},{"score":{"name":"@s","objective":"VG_vehiclehpperc"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"VG_vehiclehpperm"},"color":"yellow"},{"text":"%","color":"green"}]
execute as @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,scores={VG_vehiclemovmod=1}] if score @s VG_vehiclehpperm matches 10.. at @s run title @a[sort=nearest,limit=1,distance=..1] actionbar ["",{"text":"Currently driving ","color":"green"},{"text":"FORWARDS ","color":"aqua"},{"text":"| ","color":"white"},{"text":"Health: ","color":"green"},{"score":{"name":"@s","objective":"VG_vehiclehpperc"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"VG_vehiclehpperm"},"color":"yellow"},{"text":"%","color":"green"}]
execute as @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,scores={VG_vehiclemovmod=2}] if score @s VG_vehiclehpperm matches 10.. at @s run title @a[sort=nearest,limit=1,distance=..1] actionbar ["",{"text":"Currently driving ","color":"green"},{"text":"BACKWARDS ","color":"yellow"},{"text":"| ","color":"white"},{"text":"Health: ","color":"green"},{"score":{"name":"@s","objective":"VG_vehiclehpperc"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"VG_vehiclehpperm"},"color":"yellow"},{"text":"%","color":"green"}]
execute as @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,scores={VG_vehiclemovmod=0}] unless score @s VG_vehiclehpperm matches 10.. at @s run title @a[sort=nearest,limit=1,distance=..1] actionbar ["",{"text":"Driving stopped: ","color":"yellow"},{"text":"PREPARING TO FIRE ","color":"red"},{"text":"| ","color":"white"},{"text":"Health: ","color":"green"},{"score":{"name":"@s","objective":"VG_vehiclehpperc"},"color":"yellow"},{"text":".0","color":"yellow"},{"score":{"name":"@s","objective":"VG_vehiclehpperm"},"color":"yellow"},{"text":"%","color":"green"}]
execute as @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,scores={VG_vehiclemovmod=1}] unless score @s VG_vehiclehpperm matches 10.. at @s run title @a[sort=nearest,limit=1,distance=..1] actionbar ["",{"text":"Currently driving ","color":"green"},{"text":"FORWARDS ","color":"aqua"},{"text":"| ","color":"white"},{"text":"Health: ","color":"green"},{"score":{"name":"@s","objective":"VG_vehiclehpperc"},"color":"yellow"},{"text":".0","color":"yellow"},{"score":{"name":"@s","objective":"VG_vehiclehpperm"},"color":"yellow"},{"text":"%","color":"green"}]
execute as @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,scores={VG_vehiclemovmod=2}] unless score @s VG_vehiclehpperm matches 10.. at @s run title @a[sort=nearest,limit=1,distance=..1] actionbar ["",{"text":"Currently driving ","color":"green"},{"text":"BACKWARDS ","color":"yellow"},{"text":"| ","color":"white"},{"text":"Health: ","color":"green"},{"score":{"name":"@s","objective":"VG_vehiclehpperc"},"color":"yellow"},{"text":".0","color":"yellow"},{"score":{"name":"@s","objective":"VG_vehiclehpperm"},"color":"yellow"},{"text":"%","color":"green"}]

#Vehicle movement
execute as @a[scores={VG_vehicleid=1..,VG_sneak=1..},gamemode=!spectator,tag=!VG_ignoresneak] at @s run scoreboard players add @e[type=armor_stand,sort=nearest,limit=1,tag=VG_vehiclemarker] VG_vehiclemovtme 1
execute as @e[type=armor_stand,tag=VG_vehiclemarker,scores={VG_vehiclemovtme=1..}] run tag @s add VG_vehiclemovequeue 
execute as @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehiclemovequeue,limit=1] at @s run function vanillaguns2:warmachines/movement

#Vehicle Operations
execute as @a[scores={VG_vehicleid=1..,VG_fireCoaS=1..}] store result score @s VG_vehicleaction run data get entity @s SelectedItem.tag.ActionOperator
execute as @a[scores={VG_vehicleaction=1..}] run tag @s add VG_actionqueue
execute as @a[tag=VG_actionqueue,limit=1] at @s run function vanillaguns2:warmachines/hotbar/actionhandler

#Reset sneak
tag @a[scores={VG_sneak=0}] remove VG_ignoresneak
scoreboard players set @a[scores={VG_sneak=1..}] VG_sneak 0
scoreboard players set @a[scores={VG_fireCoaS=1..}] VG_fireCoaS 0 
scoreboard players set @e[type=#vanillaguns2:warmachineentities,scores={VG_vehicleaction=1..}] VG_vehicleaction 0 

#Position fix
#execute as @e[type=armor_stand,tag=VG_vehiclebody] at @s as @a[scores={VG_vehicleid=1..},sort=nearest,limit=1] if score @s VG_vehicleid = @e[type=armor_stand,tag=VG_vehiclebody,distance=..0.1,sort=nearest,limit=1] VG_vehicleid run effect give @s minecraft:levitation 2 255 true
team join VG_nocoll @a[team=!VG_nocoll,scores={VG_vehicleid=1..}] 
team leave @a[team=VG_nocoll,scores={VG_vehicleid=0}]

kill @e[type=item,nbt={Item:{tag:{DeleteOnDrop:1}}}]

#Flak gun
execute as @e[type=armor_stand,tag=VG_lighttankbody,tag=VG_vehicleoccupied] if score @s VG_vehicleflak < VG_defines VG_def_ltankflak run scoreboard players add @s VG_vehicleflak 1
execute as @e[type=armor_stand,tag=VG_heavytankbody,tag=VG_vehicleoccupied] if score @s VG_vehicleflak < VG_defines VG_def_ltankflak run scoreboard players add @s VG_vehicleflak 1
execute as @e[type=armor_stand,tag=VG_heavytankbody,tag=VG_vehicleoccupied] if score @s VG_vehiclefrag < VG_defines VG_def_htankfrag run scoreboard players add @s VG_vehiclefrag 1

#Cooldown remove
scoreboard players add @a VG_usecooldown 0
scoreboard players remove @a[scores={VG_usecooldown=1..}] VG_usecooldown 1

tag @e[type=armor_stand,tag=VG_autoturret,tag=VG_autoturprocessed] remove VG_autoturprocessed

#Bullets that hit the ground are no longer bullets
#execute as @e[type=arrow,tag=VG_bullet,nbt={inGround:1b}] run tag @s remove VG_bullet

#Watchdog
scoreboard players add VG_watchdog VG_watchdogstate 1
execute if score VG_watchdog VG_watchdogstate matches 1 run function vanillaguns2:special/overseer
execute if score VG_watchdog VG_watchdogstate matches 2.. run function vanillaguns2:special/watchdog