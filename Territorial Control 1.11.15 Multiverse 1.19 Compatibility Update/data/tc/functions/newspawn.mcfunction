#Original spawn
execute as @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_ogspawn_blue,tag=!TC_spawn] run function tc:ogspawnblue

execute as @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_ogspawn_red,tag=!TC_spawn] run function tc:ogspawnred

#New spawn
execute if score actioncontrol TC_actioncontrol matches 5 unless entity @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_spawn] run function tc:newspawnblue
execute if score actioncontrol TC_actioncontrol matches 5 unless entity @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_spawn] run function tc:newspawnred

#Rear, no front
execute unless entity @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_spawn] if entity @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,scores={front=0},tag=back] run tag @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,scores={front=0},limit=1,sort=random,tag=back] add TC_spawn
execute unless entity @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_spawn] if entity @e[tag=TC_inminigame,type=villager,tag=TC_redguard,scores={front=0},tag=back] run tag @e[tag=TC_inminigame,type=villager,tag=TC_redguard,scores={front=0},limit=1,sort=random,tag=back] add TC_spawn

#Any, no front
execute unless entity @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_spawn] unless entity @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,scores={front=0},tag=back] run tag @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,scores={front=0},limit=1,sort=random] add TC_spawn
execute unless entity @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_spawn] unless entity @e[tag=TC_inminigame,type=villager,tag=TC_redguard,scores={front=0},tag=back] run tag @e[tag=TC_inminigame,type=villager,tag=TC_redguard,scores={front=0},limit=1,sort=random] add TC_spawn

#Rear, front
execute unless entity @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_spawn] unless entity @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,scores={front=0},tag=back] if entity @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,scores={front=1},tag=back] run tag @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,scores={front=1},limit=1,sort=random,tag=back] add TC_spawn
execute unless entity @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_spawn] unless entity @e[tag=TC_inminigame,type=villager,tag=TC_redguard,scores={front=0},tag=back] if entity @e[tag=TC_inminigame,type=villager,tag=TC_redguard,scores={front=1},tag=back] run tag @e[tag=TC_inminigame,type=villager,tag=TC_redguard,scores={front=1},limit=1,sort=random,tag=back] add TC_spawn

#Any, front
execute unless entity @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,tag=TC_spawn] unless entity @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,scores={front=0},tag=back] unless entity @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,scores={front=1},tag=back] if entity @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,scores={front=1}] run tag @e[tag=TC_inminigame,type=villager,tag=TC_blueguard,scores={front=1},limit=1,sort=random] add TC_spawn
execute unless entity @e[tag=TC_inminigame,type=villager,tag=TC_redguard,tag=TC_spawn] unless entity @e[tag=TC_inminigame,type=villager,tag=TC_redguard,scores={front=0},tag=back] unless entity @e[tag=TC_inminigame,type=villager,tag=TC_redguard,scores={front=1},tag=back] if entity @e[tag=TC_inminigame,type=villager,tag=TC_redguard,scores={front=1}] run tag @e[tag=TC_inminigame,type=villager,tag=TC_redguard,scores={front=1},limit=1,sort=random] add TC_spawn

function tc:encirclements