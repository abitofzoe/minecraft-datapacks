fill -14 9 -15 -22 9 -7 red_concrete
fill -21 10 -14 -16 10 -9 red_concrete

#Floor base
fill -15 4 -14 -21 4 -10 red_concrete
setblock -18 4 -12 sea_lantern 
#fill -21 5 -11 -15 5 -13 barrier
#fill -16 5 -14 -20 5 -14 barrier
#fill -16 5 -10 -20 5 -10 barrier
fill -19 5 -8 -17 5 -8 red_concrete
fill -16 5 -9 -16 5 -10 red_concrete
fill -20 5 -9 -20 5 -10 red_concrete
fill -21 5 -11 -21 5 -13 red_concrete
fill -20 5 -14 -16 5 -14 red_concrete
fill -15 5 -13 -15 5 -11 red_concrete
setblock -17 5 -9 red_concrete
setblock -18 5 -9 barrier
setblock -19 5 -9 red_concrete
fill -16 5 -11 -20 5 -13 barrier
fill -19 5 -10 -17 5 -10 barrier

#Floor sides
fill -20 4 -9 -16 4 -9 red_concrete
fill -17 4 -8 -19 4 -8 red_concrete
#fill -16 4 -15 -20 4 -15 red_concrete
#fill -17 4 -16 -19 4 -16 red_concrete
#fill -20 5 -9 -16 5 -9 barrier
#fill -17 5 -8 -19 5 -8 barrier
#fill -16 5 -15 -20 5 -15 barrier
#fill -17 5 -16 -19 5 -16 barrier

#Walls
fill -21 9 -15 -16 4 -15 red_concrete
fill -22 9 -10 -22 4 -14 red_concrete
fill -14 9 -10 -14 4 -14 red_concrete
fill -21 5 -14 -21 9 -14 red_concrete
fill -21 5 -10 -21 9 -10 red_concrete
fill -15 5 -10 -15 9 -10 red_concrete
fill -15 5 -14 -15 9 -14 red_concrete
fill -21 4 -9 -21 9 -9 red_concrete
fill -15 4 -9 -15 9 -9 red_concrete
fill -16 4 -8 -16 9 -8 red_concrete
fill -20 4 -8 -20 9 -8 red_concrete
fill -19 4 -7 -17 9 -7 red_concrete

#Barrier interiors
fill -19 8 -8 -17 6 -8 barrier
fill -20 6 -9 -20 8 -10 barrier
fill -16 6 -9 -16 8 -10 barrier
fill -15 7 -13 -15 6 -11 barrier
fill -21 6 -11 -21 8 -13 barrier
fill -20 6 -14 -16 8 -14 barrier
fill -16 6 -11 -16 8 -11 barrier
fill -16 6 -13 -16 8 -13 barrier
fill -20 6 -13 -20 8 -13 barrier
fill -20 6 -11 -20 8 -11 barrier
fill -19 6 -9 -19 8 -9 barrier
fill -17 6 -9 -17 8 -9 barrier

#Walls roof
fill -19 8 -8 -17 8 -8 red_concrete
fill -16 8 -9 -16 8 -10 red_concrete
fill -20 8 -9 -20 8 -10 red_concrete
fill -21 8 -11 -21 8 -13 red_concrete
fill -20 8 -14 -16 8 -14 red_concrete
fill -15 8 -13 -15 8 -11 red_concrete
setblock -17 8 -9 red_concrete
setblock -18 8 -9 barrier
setblock -19 8 -9 red_concrete
fill -16 9 -11 -20 9 -13 barrier
fill -19 9 -10 -17 9 -10 barrier
setblock -16 8 -12 barrier
setblock -20 8 -12 barrier
setblock -19 8 -10 barrier
setblock -17 8 -10 barrier
fill -19 8 -13 -17 8 -13 barrier
setblock -18 10 -12 minecraft:sea_lantern

#Clearing
fill -18 6 -9 -18 7 -9 air
fill -20 6 -12 -20 7 -12 air
fill -16 6 -12 -16 7 -12 air
fill -17 6 -13 -19 7 -13 air
fill -19 8 -12 -17 8 -11 air
setblock -18 8 -10 air


team add IZr_waveinfo
team modify IZr_waveinfo color yellow 

scoreboard objectives add IZr_waveinfo dummy {"text":"Important Info","color":"dark_red"}
scoreboard objectives setdisplay sidebar.team.yellow IZr_waveinfo

scoreboard objectives add IZr_opmode dummy 
scoreboard objectives add IZr_opcall trigger

scoreboard objectives add IZr_lvlselected dummy
scoreboard objectives add IZr_clearblocks dummy
scoreboard objectives add IZr_diffselected dummy
scoreboard objectives add IZr_confirmsetup dummy
scoreboard objectives add IZr_gameid dummy
scoreboard objectives add IZr_rng dummy
scoreboard objectives add IZr_globaltimer dummy

scoreboard objectives add IZr_cspawnlimit dummy
scoreboard objectives add IZr_bzombies dummy
scoreboard objectives add IZr_czombies dummy
scoreboard objectives add IZr_rzombies dummy
scoreboard objectives add IZr_tzombies dummy

scoreboard objectives add IZr_currentwave dummy
scoreboard objectives add IZr_waveprog dummy
scoreboard objectives add IZr_wavemode dummy
scoreboard objectives add IZr_preptimer dummy
scoreboard objectives add IZr_intertimer dummy
scoreboard objectives add IZr_ongoing dummy
scoreboard objectives add IZr_deaths deathCount 

scoreboard objectives add IZr_150mult dummy
scoreboard objectives add IZr_100mult dummy
scoreboard objectives add IZr_105mult dummy
scoreboard objectives add IZr_110mult dummy
scoreboard objectives add IZr_120mult dummy
scoreboard objectives add IZr_125mult dummy
scoreboard objectives add IZr_150mult dummy
scoreboard objectives add IZr_175mult dummy
scoreboard objectives add IZr_200mult dummy
scoreboard objectives add IZr_250mult dummy
scoreboard objectives add IZr_negmult dummy
scoreboard objectives add IZr_5mod dummy

scoreboard objectives add IZr_inter1 dummy
scoreboard objectives add IZr_inter2 dummy
scoreboard objectives add IZr_inter3 dummy
scoreboard objectives add IZr_inter4 dummy

scoreboard objectives add IZr_flashtimer dummy
scoreboard objectives add IZr_flashcolor dummy

scoreboard objectives add IZr_sectionsopen dummy

scoreboard objectives add IZr_villagerhp dummy

scoreboard objectives add IZr_bosswave dummy
scoreboard objectives add IZr_bosswaverng dummy
scoreboard objectives add IZr_bosswaverng2 dummy
scoreboard objectives add IZr_queuedboss dummy
scoreboard objectives add IZr_activeboss dummy
scoreboard objectives add IZr_lastbosswave dummy
scoreboard objectives add IZr_bosstracked1 dummy
scoreboard objectives add IZr_bosstracked2 dummy
scoreboard objectives add IZr_bosstracked3 dummy
scoreboard objectives add IZr_bosstracked4 dummy
scoreboard objectives add IZr_shoottimer dummy
scoreboard objectives add IZr_bosshittimer dummy
scoreboard objectives add IZr_wavemultcalc dummy

scoreboard players set IZr_system IZr_250mult 250
scoreboard players set IZr_system IZr_200mult 200
scoreboard players set IZr_system IZr_175mult 175
scoreboard players set IZr_system IZr_150mult 150
scoreboard players set IZr_system IZr_125mult 125
scoreboard players set IZr_system IZr_120mult 120
scoreboard players set IZr_system IZr_110mult 110
scoreboard players set IZr_system IZr_105mult 105
scoreboard players set IZr_system IZr_100mult 100
scoreboard players set IZr_system IZr_negmult -1
scoreboard players set IZr_system IZr_5mod 5

scoreboard objectives add IZS_BusterTimer dummy

scoreboard objectives add IZr_ggtimer dummy

#scoreboard players set IZ_system IZ_pausegame 190

team add izr_creeper
team add izr_skeleton
team add izr_wallbreaker
team add izr_zombie
team modify izr_wallbreaker prefix {"text":"Wall ","color":"gold"}
team modify izr_zombie prefix {"text":"Next ","color":"white"}
team modify izr_wallbreaker suffix {"text":" Timer","color":"white"}
team modify izr_creeper suffix {"text":" Timer","color":"white"}
team modify izr_skeleton suffix {"text":" Timer","color":"white"}
team modify izr_zombie suffix {"text":" Spawns in...","color":"white"}

team modify izr_wallbreaker color gold
team modify izr_creeper color green
team modify izr_skeleton color gray
team modify izr_zombie color dark_green

team join izr_creeper Creeper
team join izr_skeleton Skeleton
team join izr_wallbreaker Buster
team join izr_zombie Zombie

team add izr_enemy
team modify izr_enemy friendlyFire false
team modify izr_enemy color red

forceload add -65 149 -290 -74 
