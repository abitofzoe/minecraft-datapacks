function vanillaguns2:special/callrng
execute at @s anchored eyes run summon arrow ^ ^ ^-.1 {NoGravity:1,Tags:["VG_shotgunbullet","VG_bullet","VG_shotgunbullet"],Color:-1,CustomName:"{\"text\":\"Unknown Player using Shotgun\"}",damage:0.54,life:1100,PierceLevel:4,Owner:[]}
execute at @s positioned 0 0 0 align xyz run summon arrow ^ ^ ^.05 {NoGravity:1,Tags:["VG_fakebullet","VG_fakebulletstraight"],life:0}
#0.0015

#Straight on
execute if score VG_system VG_rng matches 1..3 at @s positioned 0 0 0 align xyz run summon arrow ^ ^ ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 95..100 at @s positioned 0 0 0 align xyz run summon arrow ^ ^ ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 4..7 at @s positioned 0 0 0 align xyz run summon arrow ^ ^0.0015 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 8..10 at @s positioned 0 0 0 align xyz run summon arrow ^ ^-0.0015 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}

#Amplitude 1
execute if score VG_system VG_rng matches 11..14 at @s positioned 0 0 0 align xyz run summon arrow ^0.0015 ^ ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 15..17 at @s positioned 0 0 0 align xyz run summon arrow ^-0.0015 ^ ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 18..21 at @s positioned 0 0 0 align xyz run summon arrow ^-0.0015 ^0.0015 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 22..24 at @s positioned 0 0 0 align xyz run summon arrow ^0.0015 ^-0.0015 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 25..28 at @s positioned 0 0 0 align xyz run summon arrow ^0.0015 ^0.0015 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 29..31 at @s positioned 0 0 0 align xyz run summon arrow ^-0.0015 ^-0.0015 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}

#Amplitude 2, left
execute if score VG_system VG_rng matches 32..35 at @s positioned 0 0 0 align xyz run summon arrow ^0.003 ^0.0015 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 36..38 at @s positioned 0 0 0 align xyz run summon arrow ^0.003 ^ ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 39..42 at @s positioned 0 0 0 align xyz run summon arrow ^0.003 ^-0.0015 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}

#Amplitude 2, right
execute if score VG_system VG_rng matches 43..45 at @s positioned 0 0 0 align xyz run summon arrow ^-0.003 ^0.0015 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 46..49 at @s positioned 0 0 0 align xyz run summon arrow ^-0.003 ^0.0030 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 50..52 at @s positioned 0 0 0 align xyz run summon arrow ^-0.003 ^ ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 53..56 at @s positioned 0 0 0 align xyz run summon arrow ^-0.003 ^-0.0015 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 57..59 at @s positioned 0 0 0 align xyz run summon arrow ^-0.003 ^-0.0030 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}

#Amplitude 3, left
execute if score VG_system VG_rng matches 60..63 at @s positioned 0 0 0 align xyz run summon arrow ^0.0045 ^ ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 64..66 at @s positioned 0 0 0 align xyz run summon arrow ^0.0045 ^0.0015 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 67..70 at @s positioned 0 0 0 align xyz run summon arrow ^0.0045 ^0.0030 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 71..73 at @s positioned 0 0 0 align xyz run summon arrow ^0.0045 ^-0.0015 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 74..77 at @s positioned 0 0 0 align xyz run summon arrow ^0.0045 ^-0.0030 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}

#Amplitude 3, right
execute if score VG_system VG_rng matches 78..80 at @s positioned 0 0 0 align xyz run summon arrow ^-0.0045 ^ ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 81..83 at @s positioned 0 0 0 align xyz run summon arrow ^-0.0045 ^0.0015 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 84..87 at @s positioned 0 0 0 align xyz run summon arrow ^-0.0045 ^0.0030 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 88..90 at @s positioned 0 0 0 align xyz run summon arrow ^-0.0045 ^-0.0015 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute if score VG_system VG_rng matches 91..94 at @s positioned 0 0 0 align xyz run summon arrow ^-0.0045 ^-0.0030 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}



#execute if score VG_system VG_rng matches 1..4 at @s positioned 0 0 0 align xyz run summon arrow ^ ^ ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 5..8 at @s positioned 0 0 0 align xyz run summon arrow ^0.000625 ^ ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 9..12 at @s positioned 0 0 0 align xyz run summon arrow ^-0.000625 ^ ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 13..16 at @s positioned 0 0 0 align xyz run summon arrow ^ ^0.000625 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 17..20 at @s positioned 0 0 0 align xyz run summon arrow ^ ^-0.000625 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 21..24 at @s positioned 0 0 0 align xyz run summon arrow ^0.000625 ^0.000625 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 25..28 at @s positioned 0 0 0 align xyz run summon arrow ^0.000625 ^-0.000625 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 29..32 at @s positioned 0 0 0 align xyz run summon arrow ^-0.000625 ^0.000625 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 33..36 at @s positioned 0 0 0 align xyz run summon arrow ^-0.000625 ^-0.000625 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 37..40 at @s positioned 0 0 0 align xyz run summon arrow ^0.00125 ^ ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 41..44 at @s positioned 0 0 0 align xyz run summon arrow ^-0.00125 ^ ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 45..48 at @s positioned 0 0 0 align xyz run summon arrow ^ ^0.00125 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 49..52 at @s positioned 0 0 0 align xyz run summon arrow ^ ^-0.00125 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 53..56 at @s positioned 0 0 0 align xyz run summon arrow ^0.00125 ^0.00125 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 57..60 at @s positioned 0 0 0 align xyz run summon arrow ^0.00125 ^-0.00125 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 61..64 at @s positioned 0 0 0 align xyz run summon arrow ^-0.00125 ^0.00125 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 65..68 at @s positioned 0 0 0 align xyz run summon arrow ^-0.00125 ^-0.00125 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 69..72 at @s positioned 0 0 0 align xyz run summon arrow ^0.00125 ^0.000625 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 73..76 at @s positioned 0 0 0 align xyz run summon arrow ^-0.00125 ^0.000625 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 77..80 at @s positioned 0 0 0 align xyz run summon arrow ^0.00125 ^-0.000625 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 81..84 at @s positioned 0 0 0 align xyz run summon arrow ^-0.00125 ^-0.000625 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 85..88 at @s positioned 0 0 0 align xyz run summon arrow ^0.000625 ^0.00125 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 89..92 at @s positioned 0 0 0 align xyz run summon arrow ^-0.000625 ^0.00125 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 93..96 at @s positioned 0 0 0 align xyz run summon arrow ^0.000625 ^-0.00125 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
#execute if score VG_system VG_rng matches 97..100 at @s positioned 0 0 0 align xyz run summon arrow ^-0.000625 ^-0.00125 ^.05 {NoGravity:1,Tags:["VG_fakebullet"],life:0}
execute as @e[type=arrow,tag=VG_shotgunbullet,tag=!VG_init] run function vanillaguns2:bulletinit/shotgunbullet