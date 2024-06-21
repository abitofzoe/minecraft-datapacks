function vanillaguns2:special/callrng
execute at @s anchored eyes run summon arrow ^ ^ ^-.1 {NoGravity:1,Tags:["VG_smgbullet","VG_bullet"],Color:-1,CustomName:"{\"text\":\"Unknown Player using SMG\"}",damage:0.25,life:1100,Owner:[]}
execute if score VG_system VG_rng matches 1..4 at @s positioned 0 0 0 align xyz run summon arrow ^ ^ ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 5..8 at @s positioned 0 0 0 align xyz run summon arrow ^0.001 ^ ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 9..12 at @s positioned 0 0 0 align xyz run summon arrow ^-0.001 ^ ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 13..16 at @s positioned 0 0 0 align xyz run summon arrow ^ ^0.001 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 17..20 at @s positioned 0 0 0 align xyz run summon arrow ^ ^-0.001 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 21..24 at @s positioned 0 0 0 align xyz run summon arrow ^0.001 ^0.001 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 25..28 at @s positioned 0 0 0 align xyz run summon arrow ^0.001 ^-0.001 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 29..32 at @s positioned 0 0 0 align xyz run summon arrow ^-0.001 ^0.001 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 33..36 at @s positioned 0 0 0 align xyz run summon arrow ^-0.001 ^-0.001 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 37..40 at @s positioned 0 0 0 align xyz run summon arrow ^0.002 ^ ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 41..44 at @s positioned 0 0 0 align xyz run summon arrow ^-0.002 ^ ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 45..48 at @s positioned 0 0 0 align xyz run summon arrow ^ ^0.002 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 49..52 at @s positioned 0 0 0 align xyz run summon arrow ^ ^-0.002 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 53..56 at @s positioned 0 0 0 align xyz run summon arrow ^0.002 ^0.002 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 57..60 at @s positioned 0 0 0 align xyz run summon arrow ^0.002 ^-0.002 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 61..64 at @s positioned 0 0 0 align xyz run summon arrow ^-0.002 ^0.002 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 65..68 at @s positioned 0 0 0 align xyz run summon arrow ^-0.002 ^-0.002 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 69..72 at @s positioned 0 0 0 align xyz run summon arrow ^0.002 ^0.001 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 73..76 at @s positioned 0 0 0 align xyz run summon arrow ^-0.002 ^0.001 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 77..80 at @s positioned 0 0 0 align xyz run summon arrow ^0.002 ^-0.001 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 81..84 at @s positioned 0 0 0 align xyz run summon arrow ^-0.002 ^-0.001 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 85..88 at @s positioned 0 0 0 align xyz run summon arrow ^0.001 ^0.002 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 89..92 at @s positioned 0 0 0 align xyz run summon arrow ^-0.001 ^0.002 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 93..96 at @s positioned 0 0 0 align xyz run summon arrow ^0.001 ^-0.002 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 97..100 at @s positioned 0 0 0 align xyz run summon arrow ^-0.001 ^-0.002 ^.04 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute as @s[gamemode=!creative] run scoreboard players remove @s VG_smgammo 1
execute as @e[type=arrow,tag=VG_smgbullet,tag=!VG_init] run function vanillaguns2:bulletinit/smgbullet
scoreboard players remove @s VG_totalfsmg 1
execute if score @s VG_totalfsmg matches 1.. run function vanillaguns2:guns/firesmgspawn