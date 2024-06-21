execute at @s as @e[type=item,nbt={Item:{id:"minecraft:diamond_block"}},distance=..1,sort=nearest,limit=1] run function vanillaguns2:special/decrementitem

scoreboard players operation @s VG_flakgunammo = VG_defines VG_def_flakammo
scoreboard players operation @s VG_flakgunammo /= VG_defines VG_def_newturdiv
scoreboard players set @s VG_flakguntemp 30
execute at @s run function vanillaguns2:turrets/newturreteffects
execute at @s run function vanillaguns2:turrets/turretinit/hpvillager
function vanillaguns2:turrets/getturretpos
tag @s remove VG_flakguninit

data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1,tag:{OwnerUUIDLeast:-1L,OwnerUUIDMost:1L}}],CustomName:"{\"text\":\"Flak Gun\",\"color\":\"green\"}",CustomNameVisible:1}