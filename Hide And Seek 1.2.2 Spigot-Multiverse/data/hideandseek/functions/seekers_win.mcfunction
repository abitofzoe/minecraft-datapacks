gamemode adventure @a[tag=HS_inminigame,gamemode=!spectator]
execute positioned -336 5 -542 as @a[tag=HS_inminigame,tag=!HS_seektorture,distance=8..,gamemode=!spectator] run tp @s -337.5 6 -543.5 0 45
execute positioned -336 5 -542 as @a[tag=HS_inminigame,tag=HS_seektorture,distance=2..,gamemode=!spectator] run tp @s ~ ~ ~ 
tp @a[tag=HS_inminigame,gamemode=spectator] -337.5 6 -543.5 -45 45

execute as @a[tag=HS_inminigame,tag=HS_seektorture,scores={HS_hasDied=1..}] run gamemode spectator @s
execute as @a[tag=HS_inminigame,tag=HS_seektorture,scores={HS_hasDied=1..}] run tag @s remove HS_seektorture

scoreboard players add HS_system HS_cutscenetimer 1
scoreboard players add HS_system HS_colortimer 1
scoreboard players add HS_system HS_badtimer 1

bossbar set minecraft:hs_hidestatus visible false
bossbar set minecraft:hs_seekstatus visible false

effect give @a[tag=HS_inminigame] weakness 1 127 true

team leave @a[tag=HS_inminigame]

execute if score HS_system HS_colortimer matches 1 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#FF0000"}
execute if score HS_system HS_colortimer matches 2 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#FF2600"}
execute if score HS_system HS_colortimer matches 3 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#FD4C16"}
execute if score HS_system HS_colortimer matches 4 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#FC640D"}
execute if score HS_system HS_colortimer matches 5 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#F98700"}
execute if score HS_system HS_colortimer matches 6 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#F5AD00"}
execute if score HS_system HS_colortimer matches 7 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#F2BC00"}
execute if score HS_system HS_colortimer matches 8 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#EFD000"}
execute if score HS_system HS_colortimer matches 9 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#EAE900"}
execute if score HS_system HS_colortimer matches 10 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#CAEC00"}
execute if score HS_system HS_colortimer matches 11 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#A0EC00"}
execute if score HS_system HS_colortimer matches 12 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#6EED00"}
execute if score HS_system HS_colortimer matches 13 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#10ED00"}
execute if score HS_system HS_colortimer matches 14 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#00EE00"}
execute if score HS_system HS_colortimer matches 15 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#00EE00"}
execute if score HS_system HS_colortimer matches 16 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#00EE00"}
execute if score HS_system HS_colortimer matches 17 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#00EE22"}
execute if score HS_system HS_colortimer matches 18 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#00EE79"}
execute if score HS_system HS_colortimer matches 19 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#00EE95"}
execute if score HS_system HS_colortimer matches 20 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#00EECA"}
execute if score HS_system HS_colortimer matches 21 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#00E2ED"}
execute if score HS_system HS_colortimer matches 22 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#00D0EE"}
execute if score HS_system HS_colortimer matches 23 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#00ADF1"}
execute if score HS_system HS_colortimer matches 24 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#0087F2"}
execute if score HS_system HS_colortimer matches 25 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#2572F2"}
execute if score HS_system HS_colortimer matches 26 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#2152F3"}
execute if score HS_system HS_colortimer matches 27 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#2929F4"}
execute if score HS_system HS_colortimer matches 28 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#390DF3"}
execute if score HS_system HS_colortimer matches 29 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#630BF4"}
execute if score HS_system HS_colortimer matches 30 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#7100F3"}
execute if score HS_system HS_colortimer matches 31 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#9B00F3"}
execute if score HS_system HS_colortimer matches 32 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#AB00F3"}
execute if score HS_system HS_colortimer matches 33 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#CA00F3"}
execute if score HS_system HS_colortimer matches 34 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#F300F2"}
execute if score HS_system HS_colortimer matches 35 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#F700F2"}
execute if score HS_system HS_colortimer matches 36 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#FF00E2"}
execute if score HS_system HS_colortimer matches 37 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#FF00E5"}
execute if score HS_system HS_colortimer matches 38 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#FF00AF"}
execute if score HS_system HS_colortimer matches 39 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#FF007A"}
execute if score HS_system HS_colortimer matches 40 run title @a[tag=HS_inminigame,tag=!HS_seektorture] actionbar {"text":"Welcome to the Torture Box!","color":"#FF004B"}

execute if score HS_system HS_colortimer matches 40.. run scoreboard players set HS_system HS_colortimer 0

execute if score HS_system HS_badtimer matches 4 run title @a[tag=HS_inminigame,tag=HS_seektorture] actionbar {"text":"Welcome to the Torture Box...","color":"red"}
execute if score HS_system HS_badtimer matches 8 run title @a[tag=HS_inminigame,tag=HS_seektorture] actionbar {"text":"Welcome to the Torture Box...","color":"white"}

execute if score HS_system HS_badtimer matches 8.. run scoreboard players set HS_system HS_badtimer 0

execute if score HS_system HS_cutscenetimer matches 40 run playsound minecraft:item.book.page_turn master @a[tag=HS_inminigame] -336 5 -542 100000 1 1
execute if score HS_system HS_cutscenetimer matches 40 run tellraw @a[tag=HS_inminigame,tag=!HS_seektorture] {"text":"Inside this prison are criminals of the highest order.","color":"white"}
execute if score HS_system HS_cutscenetimer matches 40 run tellraw @a[tag=HS_inminigame,tag=HS_seektorture] {"text":"You are under arrest for the murder of innocents.","color":"white"}

execute if score HS_system HS_cutscenetimer matches 120 run playsound minecraft:item.book.page_turn master @a[tag=HS_inminigame,tag=!HS_seektorture] -336 5 -542 100000 1 1
execute if score HS_system HS_cutscenetimer matches 120 run playsound minecraft:entity.ender_dragon.growl master @a[tag=HS_inminigame,tag=HS_seektorture] -336 5 -542 1 2 1
execute if score HS_system HS_cutscenetimer matches 120 run tellraw @a[tag=HS_inminigame,tag=!HS_seektorture] {"text":"They have betrayed their team.","color":"white"}
execute if score HS_system HS_cutscenetimer matches 120 run tellraw @a[tag=HS_inminigame,tag=HS_seektorture] {"text":"The penalty is death.","color":"red"}

execute if score HS_system HS_cutscenetimer matches 180 run playsound minecraft:item.book.page_turn master @a[tag=HS_inminigame] -336 5 -542 100000 1 1
execute if score HS_system HS_cutscenetimer matches 180 run tellraw @a[tag=HS_inminigame,tag=!HS_seektorture] {"text":"They have joined the leagues of killers.","color":"white"}
execute if score HS_system HS_cutscenetimer matches 180 run tellraw @a[tag=HS_inminigame,tag=HS_seektorture] {"text":"The world shall go on without you.","color":"white"}

execute if score HS_system HS_cutscenetimer matches 240 run playsound minecraft:item.book.page_turn master @a[tag=HS_inminigame] -336 5 -542 100000 1 1
execute if score HS_system HS_cutscenetimer matches 240 run tellraw @a[tag=HS_inminigame,tag=!HS_seektorture] {"text":"Worst of all, they deceived the rest of the world.","color":"white"}
execute if score HS_system HS_cutscenetimer matches 240 run tellraw @a[tag=HS_inminigame,tag=HS_seektorture] {"text":"We have no need for your kind.","color":"white"}

execute if score HS_system HS_cutscenetimer matches 300 run playsound minecraft:item.book.page_turn master @a[tag=HS_inminigame,tag=HS_seektorture] -336 5 -542 100000 1 0.5
execute if score HS_system HS_cutscenetimer matches 300 run playsound minecraft:entity.ender_dragon.growl master @a[tag=HS_inminigame,tag=!HS_seektorture] -336 5 -542 0.5 2 0.5
execute if score HS_system HS_cutscenetimer matches 300 run tellraw @a[tag=HS_inminigame,tag=!HS_seektorture] {"text":"The penalty is death.","color":"gold"}
execute if score HS_system HS_cutscenetimer matches 300 as @a[tag=HS_inminigame,tag=HS_seektorture] run tellraw @s ["",{"text":"Goodbye ","color":"white"},{"selector":"@s","color":"gold"},{"text":".","color":"white"}]

execute if score HS_system HS_cutscenetimer matches 360 run setblock -336 7 -542 lava

execute if score HS_system HS_cutscenetimer matches 600.. run scoreboard players set HS_system HS_opmode 1
