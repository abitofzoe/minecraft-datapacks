#Cooldown
execute as @a[tag=VG_bayonetcooldown,scores={VG_selectedgun=0}] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar {"text":"Bayonet charge cooldown -- unable to attack or mine.","color":"red"}
execute as @a[tag=VG_bayonetcooldown,scores={VG_selectedgun=1..}] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar {"text":"Bayonet charge cooldown -- unable to use guns.","color":"red"}
execute as @a[tag=VG_bayonetcooldown,tag=VG_hasfighterelytra] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Elytra Gun: ","color":"green"},{"text":"Unable to be used while bayonet is cooling down!","color":"red"}]
execute as @a[tag=VG_bayonetcooldown,tag=VG_hascaselytra] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Close Air Support: ","color":"green"},{"text":"Unable to be used while bayonet is cooling down!","color":"red"}]
execute as @a[tag=VG_bayonetcooldown,tag=VG_hasstratelytra] at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Strategic Bomber: ","color":"green"},{"text":"Unable to be used while bayonet is cooling down!","color":"red"}]
execute as @a[tag=VG_bayonetcooldown] at @s if entity @e[type=armor_stand,tag=VG_turret,distance=..1,tag=!VG_autoturret] run title @s actionbar {"text":"Bayonet charge cooldown -- unable to use turrets","color":"red"}
execute as @a[tag=VG_bayonetcooldown] at @s run kill @e[type=firework_rocket,distance=..2]
execute as @a[tag=VG_bayonetcooldown] run scoreboard players remove @s VG_bayonetcool 1
execute as @a[tag=VG_bayonetcooldown] run effect give @s slowness 1 4 true
execute as @a[tag=VG_bayonetcooldown] run effect give @s weakness 1 9 true
#execute as @a[tag=VG_bayonetcooldown] run effect give @s glowing 1 0 true
execute as @a[tag=VG_bayonetcooldown] run effect give @s mining_fatigue 1 9 true
execute as @a[tag=VG_bayonetcooldown,scores={VG_bayonetcool=..0}] run tag @s remove VG_bayonetcooldown

#Dead
execute as @a[scores={VG_bayonetdeath=1..},tag=VG_nowcharging] run scoreboard players set @s VG_bayonetenergy 1
execute as @a[scores={VG_bayonetdeath=1..}] run scoreboard players set @s VG_bayonetdeath 0