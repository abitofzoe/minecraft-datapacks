item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"EXIT\",\"color\":\"red\"}]"},Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1,HideFlags:39,ActionOperator:1,DeleteOnDrop:1}
item replace entity @s hotbar.1 with minecraft:barrier{DeleteOnDrop:1,ActionOperator:9}
item replace entity @s hotbar.2 with minecraft:barrier{DeleteOnDrop:1,ActionOperator:9}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclemovmod matches 1 run item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Turn Left\",\"color\":\"aqua\"}]"},Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1,HideFlags:39,ActionOperator:4,DeleteOnDrop:1}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclemovmod matches 2 run item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Turn Left\",\"color\":\"aqua\"}]"},Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1,HideFlags:39,ActionOperator:5,DeleteOnDrop:1}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclemovmod matches 1 run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"MODE: \",\"color\":\"green\"},{\"text\":\"FORWARD\",\"color\":\"aqua\"}]"},Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1,HideFlags:39,ActionOperator:2,DeleteOnDrop:1}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclemovmod matches 2 run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"MODE: \",\"color\":\"green\"},{\"text\":\"BACKWARDS\",\"color\":\"yellow\"}]"},Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1,HideFlags:39,ActionOperator:3,DeleteOnDrop:1}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclemovmod matches 1 run item replace entity @s hotbar.5 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Turn Right\",\"color\":\"aqua\"}]"},Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1,HideFlags:39,ActionOperator:5,DeleteOnDrop:1}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclemovmod matches 2 run item replace entity @s hotbar.5 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Turn Right\",\"color\":\"aqua\"}]"},Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1,HideFlags:39,ActionOperator:4,DeleteOnDrop:1}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag1 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:25}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag1 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag2 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:24}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag2 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag3 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:23}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag3 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag4 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:22}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag4 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag5 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:21}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag5 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag6 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:20}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag6 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag7 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:19}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag7 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag8 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:18}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag8 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag9 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:17}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag9 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag10 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:16}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag10 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag11 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:15}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag11 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag12 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:14}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag12 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag13 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:13}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag13 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag14 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:12}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag14 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag15 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:11}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag15 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag16 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:10}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag16 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag17 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:9}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag17 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag18 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:8}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag18 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag19 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:7}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag19 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag20 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:6}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag20 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag21 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:5}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag21 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag22 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:4}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag22 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag23 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:3}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag23 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag24 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:2}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag24 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag25 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:3,Damage:1}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehiclefrag25 run item replace entity @s hotbar.6 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Fragmentation Rounds\",\"color\":\"light_purple\"}]"},Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1,HideFlags:39,ActionOperator:8,DeleteOnDrop:1,LimitRange:3}
item replace entity @s hotbar.7 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Heavy Machine Gun\",\"color\":\"light_purple\"}]"},Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1,HideFlags:39,ActionOperator:6,DeleteOnDrop:1,LimitRange:3}

execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak1 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:25}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak1 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak2 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:24}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak2 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak3 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:23}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak3 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak4 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:22}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak4 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak5 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:21}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak5 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak6 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:20}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak6 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak7 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:19}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak7 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak8 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:18}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak8 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak9 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:17}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak9 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak10 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:16}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak10 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak11 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:15}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak11 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak12 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:14}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak12 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak13 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:13}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak13 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak14 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:12}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak14 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak15 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:11}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak15 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak16 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:10}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak16 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak17 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:9}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak17 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak18 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:8}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak18 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak19 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:7}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak19 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak20 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:6}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak20 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak21 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:5}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak21 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak22 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:4}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak22 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak23 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:3}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak23 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak24 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:2}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak24 if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak < @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak25 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Unbreakable:0,HideFlags:39,ActionOperator:0,DeleteOnDrop:1,LimitRange:2,Damage:1}
execute if score @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak >= @e[type=armor_stand,tag=VG_vehiclemarker,tag=VG_vehicleoccupied,sort=nearest,limit=1,distance=..1] VG_vehicleflak25 run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick{display:{Name:"[{\"text\":\"Flak\",\"color\":\"light_purple\"}]"},Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1,HideFlags:39,ActionOperator:7,DeleteOnDrop:1,LimitRange:2}