execute positioned ~ ~ ~15 as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,distance=..1,tag=!TC_checked,tag=TC_guard] run function tc:notencircled
execute positioned ~ ~ ~-15 as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,distance=..1,tag=!TC_checked,tag=TC_guard] run function tc:notencircled
execute positioned ~15 ~ ~ as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,distance=..1,tag=!TC_checked,tag=TC_guard] run function tc:notencircled
execute positioned ~-15 ~ ~ as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,distance=..1,tag=!TC_checked,tag=TC_guard] run function tc:notencircled
execute positioned ~15 ~ ~15 as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,distance=..1,tag=!TC_checked,tag=TC_guard] run function tc:notencircled
execute positioned ~-15 ~ ~-15 as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,distance=..1,tag=!TC_checked,tag=TC_guard] run function tc:notencircled
execute positioned ~15 ~ ~-15 as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,distance=..1,tag=!TC_checked,tag=TC_guard] run function tc:notencircled
execute positioned ~-15 ~ ~15 as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,distance=..1,tag=!TC_checked,tag=TC_guard] run function tc:notencircled

tag @s remove TC_propagate
tag @s add TC_checked

execute as @e[tag=TC_inminigame,tag=TC_redguard,tag=TC_propagate,type=villager,tag=!TC_checked] at @s run function tc:checkencirclementrepeatred