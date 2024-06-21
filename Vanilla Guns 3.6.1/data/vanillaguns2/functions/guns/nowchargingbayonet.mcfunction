scoreboard players set @s VG_firebayonet 0
execute at @s unless entity @e[type=armor_stand,tag=VG_turret,distance=..1] run title @s actionbar ["",{"text":"Charging - ","color":"green"},{"score":{"name":"@s ","objective":"VG_bayonetenergy"},"color":"yellow"},{"text":"/","color":"green"},{"score":{"name":"VG_defines","objective":"VG_def_bnetenrgy"},"color":"green"}]
execute as @s[scores={VG_bayonetenergy=1..}] run scoreboard players remove @s VG_bayonetenergy 1
execute as @s[scores={VG_bayonetenergy=1..}] run effect give @s speed 1 9 true
#execute as @s[scores={VG_bayonetenergy=1..}] run effect give @s dolphins_grace 1 9 true
execute as @s[scores={VG_bayonetenergy=1..}] run effect give @s strength 1 14 true
#execute as @s[scores={VG_bayonetenergy=1..}] run effect give @s glowing 1 0 true
execute as @s[scores={VG_bayonetenergy=1..}] run effect give @s haste 1 9 true
execute as @s[scores={VG_bayonetenergy=1..}] run effect give @s conduit_power 1 0 true
execute as @s[scores={VG_bayonetenergy=1..,VG_damagedealt=1..}] run scoreboard players set @s VG_bayonetenergy 0
execute as @s[scores={VG_bayonetenergy=0}] run tag @s add VG_endbayonet