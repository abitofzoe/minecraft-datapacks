execute at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_block"}},distance=..1,sort=nearest,limit=1] run function vanillaguns2:special/decrementitem

scoreboard players operation @s VG_mgunammo = VG_defines VG_def_mgunammo
scoreboard players operation @s VG_mgunammo /= VG_defines VG_def_newturdiv
scoreboard players set @s VG_mguntemp 30
execute at @s run function vanillaguns2:turrets/newturreteffects
execute at @s run function vanillaguns2:turrets/turretinit/hpvillager
function vanillaguns2:turrets/getturretpos
tag @s remove VG_mguninit

data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_ingot",Count:1,tag:{OwnerUUIDLeast:-1L,OwnerUUIDMost:1L}}],CustomName:"{\"text\":\"Machine Gun\",\"color\":\"green\"}",CustomNameVisible:1}