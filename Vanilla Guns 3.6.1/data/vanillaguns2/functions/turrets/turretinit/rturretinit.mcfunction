execute at @s as @e[type=item,nbt={Item:{id:"minecraft:gold_block"}},distance=..1,sort=nearest,limit=1] run function vanillaguns2:special/decrementitem

scoreboard players operation @s VG_rturretammo = VG_defines VG_def_rturammo
scoreboard players operation @s VG_rturretammo /= VG_defines VG_def_newturdiv
scoreboard players set @s VG_rturretcharge 0
execute at @s run function vanillaguns2:turrets/newturreteffects
execute at @s run function vanillaguns2:turrets/turretinit/hpvillager
function vanillaguns2:turrets/getturretpos
tag @s remove VG_rturretinit

data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:gold_ingot",Count:1,tag:{OwnerUUIDLeast:-1L,OwnerUUIDMost:1L}}],CustomName:"{\"text\":\"Rocket Turret\",\"color\":\"green\"}",CustomNameVisible:1}