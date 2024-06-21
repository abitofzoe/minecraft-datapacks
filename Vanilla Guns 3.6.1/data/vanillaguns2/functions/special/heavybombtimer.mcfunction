execute as @e[type=armor_stand,tag=VG_heavyBomb,nbt={OnGround:1b}] run scoreboard players add @s VG_bombTimer 1
execute at @e[type=armor_stand,tag=VG_heavyBomb,nbt={OnGround:1b},scores={VG_bombTimer=1}] run summon creeper ~ ~ ~ {CustomName:"{\"text\":\"Strategic Bomber\",\"color\":\"red\"}",Fuse:0,ExplosionRadius:4}
execute at @e[type=armor_stand,tag=VG_heavyBomb,nbt={OnGround:1b},scores={VG_bombTimer=2..}] run kill @e[type=item,distance=..5]
execute as @e[type=armor_stand,tag=VG_heavyBomb,nbt={OnGround:1b},scores={VG_bombTimer=3..}] run kill @s