execute at @s as @e[type=item,nbt={Item:{id:"minecraft:redstone_block"}},distance=..1,sort=nearest,limit=1] run function vanillaguns2:special/decrementitem

scoreboard players operation @s VG_laserammo = VG_defines VG_def_laserammo
scoreboard players operation @s VG_laserammo /= VG_defines VG_def_newturdiv
scoreboard players set @s VG_lasertemp 30
execute at @s run function vanillaguns2:turrets/newturreteffects
execute at @s run function vanillaguns2:turrets/turretinit/hpvillager
function vanillaguns2:turrets/getturretpos
tag @s remove VG_laserinit

data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:redstone",Count:1,tag:{Owner:[]}}],CustomName:"{\"text\":\"Laser Turret\",\"color\":\"green\"}",CustomNameVisible:1}

#execute at @s run summon item ~ ~1.8 ~ {Invulnerable:1,Item:{id:"minecraft:redstone",Count:1b},Age:-32768s,PickupDelay:32767s,Tags:["VG_turretitem"],NoGravity:1,Health:32767s}