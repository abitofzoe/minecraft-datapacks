function vanillaguns2:special/callrng
execute at @s run summon arrow ^ ^ ^2 {NoGravity:1,Tags:["VG_bullet","VG_vehicle_hmgbullet"],Color:-1,CustomName:"{\"text\":\"Unknown Player using Heavy Machine Gun\"}",damage:2,life:1100,OwnerUUIDLeast:-1L,OwnerUUIDMost:-1L}
execute at @s positioned 0 0 0 align xyz run summon arrow ^ ^ ^.1 {NoGravity:1,Tags:["VG_fakebullet"],life:0}

playsound minecraft:entity.generic.explode player @a ~ ~ ~ .1 .75
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ .1 0.75
#effect give @s glowing 1 0 true

tag @s add VG_temptarget
execute as @e[type=arrow,tag=VG_vehicle_hmgbullet,tag=!VG_init] run function vanillaguns2:warmachines/hotbar/actionhandler/heavytank/hmgbulletinit

tag @s remove VG_temptarget
scoreboard players set @s VG_usecooldown 4