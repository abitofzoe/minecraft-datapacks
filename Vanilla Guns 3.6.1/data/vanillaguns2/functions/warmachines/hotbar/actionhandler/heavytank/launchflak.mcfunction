function vanillaguns2:turrets/turretinit/flakgunready
scoreboard players set @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..2] VG_vehicleflak 0
scoreboard players set @e[type=armor_stand,distance=..2,limit=1,sort=nearest,tag=VG_flakgunbullet] VG_flakgunage -10