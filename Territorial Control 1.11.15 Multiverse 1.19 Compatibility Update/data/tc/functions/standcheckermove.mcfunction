tp @s[tag=TC_inminigame] ^ ^ ^.1

execute at @s[tag=TC_inminigame,tag=TC_checkerr,tag=!TC_blocked] run particle dust 0 1 0 1 ~ ~1.62 ~ 0 0 0 0 0 force
execute at @s[tag=TC_inminigame,tag=TC_checkerb,tag=!TC_blocked] run particle dust 0 1 0 1 ~ ~1.62 ~ 0 0 0 0 0 force
execute at @s[tag=TC_inminigame,tag=TC_checker,tag=TC_blocked] run particle dust 1 0 0 1 ~ ~1.62 ~ 0 0 0 0 0 force

execute as @s[tag=TC_inminigame,tag=TC_checkerb] at @s[tag=TC_inminigame] if block ~ 2 ~ red_concrete run tag @s[tag=TC_inminigame] add TC_blocked
execute as @s[tag=TC_inminigame,tag=TC_checkerb,tag=!TC_blocked] at @s[tag=TC_inminigame] run tag @e[tag=TC_inminigame,type=villager,distance=..2,tag=TC_blueguard] remove TC_encircled
execute as @s[tag=TC_inminigame,tag=TC_checkerb] at @s[tag=TC_inminigame] run tag @e[tag=TC_inminigame,type=villager,distance=..2,tag=TC_blueguard] add TC_propagate

execute as @s[tag=TC_inminigame,tag=TC_checkerr] at @s[tag=TC_inminigame] if block ~ 2 ~ blue_concrete run tag @s[tag=TC_inminigame] add TC_blocked
execute as @s[tag=TC_inminigame,tag=TC_checkerr,tag=!TC_blocked] at @s[tag=TC_inminigame] run tag @e[tag=TC_inminigame,type=villager,distance=..2,tag=TC_redguard] remove TC_encircled
execute as @s[tag=TC_inminigame,tag=TC_checkerr] at @s[tag=TC_inminigame] run tag @e[tag=TC_inminigame,type=villager,distance=..2,tag=TC_redguard] add TC_propagate

execute at @s[tag=TC_inminigame] unless block ~ 1 ~ bedrock run tag @s[tag=TC_inminigame] add TC_blocked
execute as @s[tag=TC_inminigame,tag=TC_blocked] run kill @s[tag=TC_inminigame]
#execute as @s[tag=TC_inminigame,tag=!TC_blocked] at @s[tag=TC_inminigame] run function tc:standcheckermove

execute as @e[tag=TC_inminigame,tag=TC_propagate] run say test