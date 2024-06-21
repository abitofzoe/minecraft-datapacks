summon villager ~ ~ ~ {Tags:["VG_hpvillager"],Team:VG_hpvillager,CustomNameVisible:1,Silent:1,NoAI:1,PersistenceRequired:1,Offers:{}}
execute as @s[tag=VG_mgun] run data merge entity @e[type=villager,distance=..0.5,limit=1,sort=nearest,tag=VG_hpvillager] {CustomName:"{\"text\":\"Machine Gun\",\"color\":\"green\"}"}
execute as @s[tag=VG_rturret] run data merge entity @e[type=villager,distance=..0.5,limit=1,sort=nearest,tag=VG_hpvillager] {CustomName:"{\"text\":\"Rocket Turret\",\"color\":\"green\"}"}
execute as @s[tag=VG_flakgun] run data merge entity @e[type=villager,distance=..0.5,limit=1,sort=nearest,tag=VG_hpvillager] {CustomName:"{\"text\":\"Flak Gun\",\"color\":\"green\"}"}
execute as @s[tag=VG_autoturret] run data merge entity @e[type=villager,distance=..0.5,limit=1,sort=nearest,tag=VG_hpvillager] {CustomName:"{\"text\":\"Auto Turret\",\"color\":\"green\"}"}
execute as @s[tag=VG_laserturret] run data merge entity @e[type=villager,distance=..0.5,limit=1,sort=nearest,tag=VG_hpvillager] {CustomName:"{\"text\":\"Laser Turret\",\"color\":\"green\"}"}
execute as @s[tag=VG_hmg] run data merge entity @e[type=villager,distance=..0.5,limit=1,sort=nearest,tag=VG_hpvillager] {CustomName:"{\"text\":\"Heavy Machine Gun\",\"color\":\"green\"}"}
effect give @e[type=villager,distance=..0.5,limit=1,sort=nearest,tag=VG_hpvillager] invisibility 1000000 0 true
effect give @e[type=villager,distance=..0.5,limit=1,sort=nearest,tag=VG_hpvillager] resistance 1000000 2 true
data merge entity @s {Invulnerable:1,Marker:1b}