execute as @a[tag=VG_turretdestroyer] at @s if entity @e[type=armor_stand,tag=VG_turret,distance=..0.75] run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 2
execute as @a[tag=VG_turretdestroyer] at @s if entity @e[type=armor_stand,tag=VG_turret,distance=..0.75] run kill @e[type=armor_stand,tag=VG_turret,distance=..0.75]
execute as @a[tag=VG_turretdestroyer] run tag @s remove VG_turretdestroyer