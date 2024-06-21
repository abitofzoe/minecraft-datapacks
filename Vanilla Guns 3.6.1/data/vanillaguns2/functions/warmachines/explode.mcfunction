execute at @e[type=armor_stand,tag=VG_vehiclebody,tag=VG_calculatinghp] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:7,CustomName:"{\"text\":\"Exploding Vehicle\",\"color\":\"red\"}"}
kill @e[type=#vanillaguns2:warmachineentities,tag=VG_vehiclebody,tag=VG_calculatinghp]
kill @e[type=item,nbt={Item:{id:"minecraft:shulker_shell"}},distance=..15]
execute as @a[distance=..1,scores={VG_vehicleid=1..},sort=nearest,limit=1] at @s run function vanillaguns2:warmachines/hotbar/actionhandler/armoredcar/exitvehicle
