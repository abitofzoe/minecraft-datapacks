gamemode adventure @a[tag=HS_inminigame,gamemode=!spectator]

execute in minecraft:hideandseekown run gamerule naturalRegeneration false

execute positioned -336 5 -535 as @a[tag=HS_inminigame,tag=HS_finalhider,distance=8..,gamemode=!spectator] run tp @s -336 4 -535 0 0
execute positioned -336 5 -533 as @a[tag=HS_inminigame,tag=HS_finalseeker,distance=3..,gamemode=!spectator] run tp @s ~ 4 ~ 
tp @a[tag=HS_inminigame,gamemode=spectator] -337.5 6 -536.5 -45 45

execute as @a[tag=HS_inminigame,tag=HS_finalseeker,scores={HS_hasDied=1..}] run gamemode spectator @s
#execute as @a[tag=HS_inminigame,tag=HS_finalseeker,scores={HS_hasDied=1..}] run tag @s remove HS_finalseeker

scoreboard players add HS_system HS_cutscenetimer 1
scoreboard players add HS_system HS_colortimer 1
scoreboard players add HS_system HS_badtimer 1

team leave @a[tag=HS_inminigame]

clear @a[tag=HS_inminigame,tag=!HS_finalhider]
effect give @a[tag=HS_finalseeker] weakness 1 127 true
execute if score HS_system HS_cutscenetimer matches ..300 run effect give @a[tag=HS_finalhider] weakness 1 127 true
execute if score HS_system HS_cutscenetimer matches 301.. run effect clear @a[tag=HS_finalhider] weakness

kill @e[type=item,x=0]
execute if score HS_system HS_cutscenetimer matches 300.. as @a[tag=HS_finalhider] run item replace entity @s hotbar.0 with diamond_sword

execute if score HS_system HS_cutscenetimer matches ..299 run effect give @a[tag=HS_finalseeker] instant_health 1 0 true
execute if score HS_system HS_cutscenetimer matches ..299 run bossbar set minecraft:hs_hidestatus visible false
execute if score HS_system HS_cutscenetimer matches ..299 run bossbar set minecraft:hs_seekstatus visible false

execute if score HS_system HS_colortimer matches 1 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#FF0000"}
execute if score HS_system HS_colortimer matches 2 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#FF2600"}
execute if score HS_system HS_colortimer matches 3 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#FD4C16"}
execute if score HS_system HS_colortimer matches 4 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#FC640D"}
execute if score HS_system HS_colortimer matches 5 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#F98700"}
execute if score HS_system HS_colortimer matches 6 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#F5AD00"}
execute if score HS_system HS_colortimer matches 7 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#F2BC00"}
execute if score HS_system HS_colortimer matches 8 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#EFD000"}
execute if score HS_system HS_colortimer matches 9 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#EAE900"}
execute if score HS_system HS_colortimer matches 10 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#CAEC00"}
execute if score HS_system HS_colortimer matches 11 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#A0EC00"}
execute if score HS_system HS_colortimer matches 12 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#6EED00"}
execute if score HS_system HS_colortimer matches 13 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#10ED00"}
execute if score HS_system HS_colortimer matches 14 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#00EE00"}
execute if score HS_system HS_colortimer matches 15 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#00EE00"}
execute if score HS_system HS_colortimer matches 16 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#00EE00"}
execute if score HS_system HS_colortimer matches 17 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#00EE22"}
execute if score HS_system HS_colortimer matches 18 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#00EE79"}
execute if score HS_system HS_colortimer matches 19 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#00EE95"}
execute if score HS_system HS_colortimer matches 20 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#00EECA"}
execute if score HS_system HS_colortimer matches 21 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#00E2ED"}
execute if score HS_system HS_colortimer matches 22 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#00D0EE"}
execute if score HS_system HS_colortimer matches 23 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#00ADF1"}
execute if score HS_system HS_colortimer matches 24 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#0087F2"}
execute if score HS_system HS_colortimer matches 25 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#2572F2"}
execute if score HS_system HS_colortimer matches 26 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#2152F3"}
execute if score HS_system HS_colortimer matches 27 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#2929F4"}
execute if score HS_system HS_colortimer matches 28 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#390DF3"}
execute if score HS_system HS_colortimer matches 29 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#630BF4"}
execute if score HS_system HS_colortimer matches 30 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#7100F3"}
execute if score HS_system HS_colortimer matches 31 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#9B00F3"}
execute if score HS_system HS_colortimer matches 32 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#AB00F3"}
execute if score HS_system HS_colortimer matches 33 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#CA00F3"}
execute if score HS_system HS_colortimer matches 34 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#F300F2"}
execute if score HS_system HS_colortimer matches 35 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#F700F2"}
execute if score HS_system HS_colortimer matches 36 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#FF00E2"}
execute if score HS_system HS_colortimer matches 37 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#FF00E5"}
execute if score HS_system HS_colortimer matches 38 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#FF00AF"}
execute if score HS_system HS_colortimer matches 39 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#FF007A"}
execute if score HS_system HS_colortimer matches 40 run title @a[tag=HS_inminigame,tag=HS_finalhider] actionbar {"text":"Welcome to the Torture Box!","color":"#FF004B"}

execute if score HS_system HS_colortimer matches 40.. run scoreboard players set HS_system HS_colortimer 0

execute if score HS_system HS_badtimer matches 4 run title @a[tag=HS_inminigame,tag=HS_finalseeker] actionbar {"text":"Welcome to the Torture Box...","color":"red"}
execute if score HS_system HS_badtimer matches 8 run title @a[tag=HS_inminigame,tag=HS_finalseeker] actionbar {"text":"Welcome to the Torture Box...","color":"white"}

execute if score HS_system HS_badtimer matches 8.. run scoreboard players set HS_system HS_badtimer 0

execute if score HS_system HS_cutscenetimer matches 60 run tellraw @a[tag=HS_inminigame,tag=HS_finalseeker] {"text":"This job does not tolerate incompetence.","color":"red"}
execute if score HS_system HS_cutscenetimer matches 60 run tellraw @a[tag=HS_inminigame,tag=HS_finalhider] {"text":"You outlasted them all."}
execute if score HS_system HS_cutscenetimer matches 60 run playsound minecraft:item.book.page_turn master @a[tag=HS_inminigame] -336 5 -533 100000 1 1

execute if score HS_system HS_cutscenetimer matches 120 run tellraw @a[tag=HS_inminigame,tag=HS_finalseeker] {"text":"Today, you have proved that you are incapable.","color":"white"}
execute if score HS_system HS_cutscenetimer matches 120 run tellraw @a[tag=HS_inminigame,tag=HS_finalhider] {"text":"Today, you have proved your capabilities!","color":"white"}
execute if score HS_system HS_cutscenetimer matches 120 run playsound minecraft:item.book.page_turn master @a[tag=HS_inminigame] -336 5 -533 100000 1 1

execute if score HS_system HS_cutscenetimer matches 180 run tellraw @a[tag=HS_inminigame,tag=HS_finalseeker] {"text":"You shall now get what you deserve.","color":"white"}
execute if score HS_system HS_cutscenetimer matches 180 run tellraw @a[tag=HS_inminigame,tag=HS_finalhider] {"text":"You shall now get what you most desire.","color":"white"}
execute if score HS_system HS_cutscenetimer matches 180 run playsound minecraft:item.book.page_turn master @a[tag=HS_inminigame] -336 5 -533 100000 1 1

execute if score HS_system HS_cutscenetimer matches 240 run tellraw @a[tag=HS_inminigame,tag=HS_finalseeker] {"text":"The worst possible punishment.","color":"white"}
execute if score HS_system HS_cutscenetimer matches 240 run tellraw @a[tag=HS_inminigame,tag=HS_finalhider] {"text":"And its sweetest nectar.","color":"white"}
execute if score HS_system HS_cutscenetimer matches 240 run playsound minecraft:item.book.page_turn master @a[tag=HS_inminigame] -336 5 -533 100000 1 1

execute if score HS_system HS_cutscenetimer matches 300 run tellraw @a[tag=HS_inminigame,tag=HS_finalseeker] {"text":"Street justice.","color":"red"}
execute if score HS_system HS_cutscenetimer matches 300 run tellraw @a[tag=HS_inminigame,tag=HS_finalhider] {"text":"The Flower of Revenge.","color":"green"}
execute if score HS_system HS_cutscenetimer matches 300 run playsound minecraft:entity.ender_dragon.growl master @a[tag=HS_inminigame] -336 5 -533 0.40 2 0.40
execute if score HS_system HS_cutscenetimer matches 300 run playsound minecraft:entity.ender_dragon.growl master @a[tag=HS_inminigame] -336 5 -533 0.40 2 0.40

execute if score HS_system HS_cutscenetimer matches 300..1200 run bossbar set minecraft:hs_hidestatus color green  
execute if score HS_system HS_cutscenetimer matches 300..1200 run bossbar set minecraft:hs_seekstatus color red
execute if score HS_system HS_cutscenetimer matches 300..1200 run bossbar set minecraft:hs_hidestatus visible true 
execute if score HS_system HS_cutscenetimer matches 300..1200 run bossbar set minecraft:hs_seekstatus visible true
execute if score HS_system HS_cutscenetimer matches 300..1200 run bossbar set minecraft:hs_hidestatus name {"text":"FINISH THEM!!","color":"green"}
execute if score HS_system HS_cutscenetimer matches 300..1200 run bossbar set minecraft:hs_seekstatus name {"text":"YOU FAILED","color":"red"}
execute if score HS_system HS_cutscenetimer matches 300..1200 run bossbar set minecraft:hs_hidestatus players @a[tag=HS_finalhider]
execute if score HS_system HS_cutscenetimer matches 300..1200 run bossbar set minecraft:hs_seekstatus players @a[tag=HS_finalseeker]

execute if score HS_system HS_cutscenetimer matches 300..1200 run scoreboard players set HS_system HS_currshealth 0
execute if score HS_system HS_cutscenetimer matches 300..1200 as @a[tag=HS_finalseeker,gamemode=!spectator] store result score @s HS_currshealth run data get entity @s Health
execute if score HS_system HS_cutscenetimer matches 300..1200 as @a[tag=HS_finalseeker,gamemode=!spectator] run scoreboard players operation HS_system HS_currshealth += @s HS_currshealth
execute if score HS_system HS_cutscenetimer matches 300..1200 run scoreboard players operation HS_system HS_currshealth *= HS_system HS_100mult
execute if score HS_system HS_cutscenetimer matches 300..1200 run scoreboard players operation HS_system HS_currshealth /= HS_system HS_totalshealth

execute if score HS_system HS_cutscenetimer matches 300..1200 run execute store result bossbar minecraft:hs_seekstatus value run scoreboard players get HS_system HS_currshealth
execute if score HS_system HS_cutscenetimer matches 300..1200 run scoreboard players remove HS_system HS_currshealth 100
execute if score HS_system HS_cutscenetimer matches 300..1200 run scoreboard players operation HS_system HS_currshealth *= HS_system HS_negmult
execute if score HS_system HS_cutscenetimer matches 300..1200 run execute store result bossbar minecraft:hs_hidestatus value run scoreboard players get HS_system HS_currshealth

execute if score HS_system HS_debug matches 1 run tellraw @a[tag=HS_inminigame] {"score":{"name":"HS_system","objective":"HS_currshealth"},"color":"yellow"}

execute unless score HS_system HS_cutscenetimer matches 1201.. unless entity @a[tag=HS_finalseeker,gamemode=!spectator] run scoreboard players set HS_system HS_cutscenetimer 1201

execute if score HS_system HS_cutscenetimer matches 1201.. run bossbar set minecraft:hs_seekstatus visible false
execute if score HS_system HS_cutscenetimer matches 1201.. run bossbar set minecraft:hs_hidestatus visible false
execute if score HS_system HS_cutscenetimer matches 1201.. run gamemode spectator @a[tag=HS_inminigame,gamemode=!spectator]

execute if score HS_system HS_cutscenetimer matches 1240.. run setblock -338 4 -537 air
execute if score HS_system HS_cutscenetimer matches 1250.. run setblock -334 4 -537 air
execute if score HS_system HS_cutscenetimer matches 1260.. run setblock -334 4 -533 air
execute if score HS_system HS_cutscenetimer matches 1280.. run setblock -338 4 -533 air
execute if score HS_system HS_cutscenetimer matches 1240 run playsound minecraft:block.fire.extinguish master @a[tag=HS_inminigame] -336 5 -533 100000 2 1
execute if score HS_system HS_cutscenetimer matches 1250 run playsound minecraft:block.fire.extinguish master @a[tag=HS_inminigame] -336 5 -533 100000 2 1
execute if score HS_system HS_cutscenetimer matches 1260 run playsound minecraft:block.fire.extinguish master @a[tag=HS_inminigame] -336 5 -533 100000 2 1
execute if score HS_system HS_cutscenetimer matches 1280 run playsound minecraft:block.fire.extinguish master @a[tag=HS_inminigame] -336 5 -533 100000 2 1

execute if score HS_system HS_cutscenetimer matches 1320 if score HS_system HS_currshealth matches 0 run tellraw @a[tag=HS_inminigame,tag=HS_finalseeker] {"text":"You were spared."}
execute if score HS_system HS_cutscenetimer matches 1320 if score HS_system HS_currshealth matches 0 run tellraw @a[tag=HS_inminigame,tag=HS_finalhider] {"text":"A peaceful ending."}

execute if score HS_system HS_cutscenetimer matches 1350.. run tag @a[tag=HS_inminigame] remove HS_finalseeker
execute if score HS_system HS_cutscenetimer matches 1350.. run tag @a[tag=HS_inminigame] remove HS_finalhider

execute if score HS_system HS_cutscenetimer matches 1350 run scoreboard players set HS_system HS_opmode 1