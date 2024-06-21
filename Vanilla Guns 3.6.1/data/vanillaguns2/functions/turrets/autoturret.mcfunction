#Initiation
execute at @e[type=item,nbt={Item:{id:"minecraft:coal_block"}}] unless entity @e[type=armor_stand,tag=VG_turret,distance=..2] run function vanillaguns2:turrets/turretinit/autoturretiteminit

execute as @e[type=armor_stand,tag=VG_autoturretinit] run function vanillaguns2:turrets/turretinit/autoturretinit

#Enhancing
execute as @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] at @s if entity @e[type=armor_stand,tag=VG_turret,distance=..1,sort=nearest,limit=1,tag=!VG_autoturretenhanced] run function vanillaguns2:turrets/turretinit/enhanceautoturret

#Add ammo
execute as @e[type=armor_stand,tag=VG_autoturret] if score @s VG_autoturammo < VG_defines VG_def_aturrammo at @s if entity @e[type=item,nbt={Item:{id:"minecraft:coal"}},distance=..1] run function vanillaguns2:turrets/addammo/autoturret 

#Ammo limit
execute as @e[type=armor_stand,tag=VG_autoturret] if score @s VG_autoturammo > VG_defines VG_def_aturrammo run scoreboard players operation @s VG_autoturammo = VG_defines VG_def_aturrammo

#Info
execute if score VG_defines VG_def_aturrammo matches 1.. as @e[type=armor_stand,tag=VG_autoturret,tag=!VG_autoturretenhanced] run function vanillaguns2:turrets/autoturretinfo
execute if score VG_defines VG_def_aturrammo matches 1.. as @e[type=armor_stand,tag=VG_autoturret,tag=VG_autoturretenhanced] run function vanillaguns2:turrets/autoturretinfoenhanced

execute unless score VG_defines VG_def_aturrammo matches 1.. as @e[type=armor_stand,tag=VG_autoturret] at @s run title @a[gamemode=!spectator,distance=..1] actionbar ["",{"text":"Auto Turret: ","color":"green"},{"text":"WEAPON DISABLED","color":"red"}]

#Creative and spectator players
tag @a remove VG_autoturretskip
tag @a[gamemode=creative] add VG_autoturretskip
tag @a[gamemode=spectator] add VG_autoturretskip

#Firing
execute if score VG_defines VG_def_aturrammo matches 1.. as @e[type=armor_stand,tag=VG_autoturret,tag=!VG_turretdisabled] run scoreboard players add @s VG_autoturtime 1
execute as @e[type=armor_stand,tag=VG_autoturret,sort=random,tag=!VG_autoturretenhanced,tag=!VG_autoturprocessed,limit=1] at @s if score @s VG_autoturtime >= VG_defines VG_def_aturrtime run function vanillaguns2:turrets/autoturret/fire
execute as @e[type=armor_stand,tag=VG_autoturret,sort=random,tag=VG_autoturretenhanced,tag=!VG_autoturprocessed,limit=1] at @s if score @s VG_autoturtime >= VG_defines VG_def_aturrtime run function vanillaguns2:turrets/autoturretenhanced/fire

execute as @e[type=armor_stand,tag=VG_autoturret] at @s if score @s VG_autoturtime >= VG_defines VG_def_aturrtime run scoreboard players set @s VG_autoturtime 0

#Disabling
execute as @e[type=armor_stand,tag=VG_autoturret,tag=!VG_turretdisabled] at @s as @a[distance=..1,sort=nearest,limit=1,scores={VG_sneak=1}] if score @s VG_plyrid = @e[type=armor_stand,tag=VG_autoturret,distance=..0.1,limit=1] VG_autoturplyrid as @e[type=armor_stand,tag=VG_autoturret,distance=..0.1,limit=1] run scoreboard players add @s VG_turretdstimer 2

#Enabling
execute as @e[type=armor_stand,tag=VG_autoturret,tag=VG_turretdisabled] at @s as @a[distance=..1,sort=nearest,limit=1,scores={VG_sneak=1}] if score @s VG_plyrid = @e[type=armor_stand,tag=VG_autoturret,distance=..0.1,limit=1] VG_autoturplyrid as @e[type=armor_stand,tag=VG_autoturret,distance=..0.1,limit=1] run scoreboard players add @s VG_turretentimer 2

#Timer reduction
scoreboard players remove @e[type=armor_stand,tag=VG_autoturret,scores={VG_turretentimer=1..}] VG_turretentimer 1
scoreboard players remove @e[type=armor_stand,tag=VG_autoturret,scores={VG_turretdstimer=1..}] VG_turretdstimer 1

#Enable/disable
execute as @e[type=armor_stand,tag=VG_autoturret,scores={VG_turretdstimer=10..}] at @s run function vanillaguns2:turrets/ownerdisableturret
execute as @e[type=armor_stand,tag=VG_autoturret,scores={VG_turretentimer=40..}] at @s run function vanillaguns2:turrets/ownerenableturret
