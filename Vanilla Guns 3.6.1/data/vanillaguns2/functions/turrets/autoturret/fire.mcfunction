execute as @e[type=slime,distance=1..32,tag=!VG_autoslimesizeget] store result score @s VG_autoslimesize run data get entity @s Size
execute as @e[type=slime,distance=1..32,tag=!VG_autoslimesizeget,scores={VG_autoslimesize=0}] run tag @s add VG_autoturretskip
execute as @e[type=slime,distance=1..32,tag=!VG_autoslimesizeget] run tag @s add VG_autoslimesizeget

function vanillaguns2:turrets/autoturret/getcastamount
execute at @s[scores={VG_autoturammo=0,VG_autoturcast=1..}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 0.5 2

execute if score @s[scores={VG_autoturammo=1..}] VG_autoturcast matches 1.. run function vanillaguns2:turrets/autoturret/castloop

execute as @s[scores={VG_autoturammo=1..}] at @s as @e[type=#vanillaguns2:hostile,distance=1..32,tag=VG_autoturtarget,limit=1,sort=nearest,tag=VG_autoturhit] if score @s VG_autoturid = @e[type=armor_stand,tag=VG_autoturret,distance=..0.1,limit=1] VG_autoturid as @e[type=armor_stand,tag=VG_autoturret,distance=..0.1,limit=1] run function vanillaguns2:turrets/autoturret/fireatwill

function vanillaguns2:turrets/autoturret/cleanup
tag @s add VG_autoturprocessed
execute as @e[type=armor_stand,tag=VG_autoturret,sort=random,tag=!VG_autoturretenhanced,tag=!VG_autoturprocessed,limit=1] at @s if score @s VG_autoturtime >= VG_defines VG_def_aturrtime run function vanillaguns2:turrets/autoturret/fire
