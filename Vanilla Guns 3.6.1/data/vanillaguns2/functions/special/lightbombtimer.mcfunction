execute as @e[type=armor_stand,tag=VG_lightBomb,nbt={OnGround:1b}] run scoreboard players add @s VG_bombTimer 1
execute at @e[type=armor_stand,tag=VG_lightBomb,nbt={OnGround:1b},scores={VG_bombTimer=1}] run summon creeper ~ ~ ~ {CustomName:"{\"text\":\"Close Air Support\",\"color\":\"red\"}",Fuse:0,ExplosionRadius:2}
execute at @e[type=armor_stand,tag=VG_lightBomb,nbt={OnGround:1b},scores={VG_bombTimer=2..}] run kill @e[type=item,distance=..5]
execute as @e[type=armor_stand,tag=VG_lightBomb,nbt={OnGround:1b},scores={VG_bombTimer=3..}] run kill @s