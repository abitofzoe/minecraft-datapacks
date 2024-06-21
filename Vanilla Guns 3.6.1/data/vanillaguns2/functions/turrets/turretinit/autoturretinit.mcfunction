execute at @s as @e[type=item,nbt={Item:{id:"minecraft:coal_block"}},distance=..1,sort=nearest,limit=1] run function vanillaguns2:special/decrementitem

scoreboard players operation @s VG_autoturammo = VG_defines VG_def_aturrammo
scoreboard players operation @s VG_autoturammo /= VG_defines VG_def_newturdiv
execute at @s run function vanillaguns2:turrets/newturreteffects
execute at @s run function vanillaguns2:turrets/turretinit/hpvillager
function vanillaguns2:turrets/getturretpos
tag @s remove VG_autoturretinit

data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:coal",Count:1,tag:{Owner:[]}}],CustomName:"{\"text\":\"Auto Turret\",\"color\":\"green\"}",CustomNameVisible:1}

execute at @s run data modify entity @s ArmorItems[3].tag.Owner set from entity @p UUID

execute at @s run scoreboard players operation @s VG_autoturplyrid = @p VG_plyrid

scoreboard players set @s VG_turretentimer 0
scoreboard players set @s VG_turretdstimer 0

scoreboard players add VG_guns VG_autoturid 1
scoreboard players operation @s VG_autoturid = VG_guns VG_autoturid