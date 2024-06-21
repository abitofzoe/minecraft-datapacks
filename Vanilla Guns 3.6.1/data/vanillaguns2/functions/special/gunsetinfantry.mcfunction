#Clear
clear @s

#Effects
effect clear @s
effect give @s saturation 100 0 true
effect give @s instant_health 60 0 true

#Hotbar
give @s minecraft:carrot_on_a_stick{VG_guninitialized:1b,VG_gunammo:2147483647L,display:{Name:"{\"text\":\"Pistol\"}"},Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1,HideFlags:39}
give @s minecraft:carrot_on_a_stick{VG_guninitialized:1b,VG_gunammo:2147483647L,display:{Name:"{\"text\":\"Shotgun\"}"},Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1,HideFlags:39}
give @s minecraft:carrot_on_a_stick{VG_guninitialized:1b,VG_gunammo:2147483647L,display:{Name:"{\"text\":\"SMG\"}"},Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1,HideFlags:39}
give @s minecraft:carrot_on_a_stick{VG_guninitialized:1b,VG_gunammo:2147483647L,display:{Name:"{\"text\":\"Rifle\"}"},Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1,HideFlags:39}
give @s minecraft:carrot_on_a_stick{VG_guninitialized:1b,display:{Name:"{\"text\":\"Bayonet Charge\"}"},Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1,HideFlags:39}
give @s minecraft:armor_stand 16
give @s minecraft:iron_ingot 64
give @s minecraft:iron_block 64
give @s minecraft:golden_carrot 64

#Inventory

give @s minecraft:spectral_arrow 64
give @s minecraft:spectral_arrow 64
give @s minecraft:spectral_arrow 64
give @s minecraft:spectral_arrow 64
give @s minecraft:spectral_arrow 64
give @s minecraft:spectral_arrow 64
give @s minecraft:spectral_arrow 64
give @s minecraft:spectral_arrow 64
give @s minecraft:spectral_arrow 64

#give @s minecraft:iron_nugget 64
give @s minecraft:spectral_arrow 64
give @s minecraft:spectral_arrow 64
give @s minecraft:spectral_arrow 64
#give @s minecraft:spectral_arrow 64
give @s minecraft:gold_ingot 64
give @s minecraft:firework_rocket{Fireworks:{Flight:3}} 64
give @s minecraft:redstone 64
give @s minecraft:emerald 64
give @s minecraft:gold_ingot 64
give @s minecraft:diamond 64

#give @s minecraft:iron_nugget 64
#give @s minecraft:spectral_arrow 64
give @s minecraft:spectral_arrow 64
give @s minecraft:spectral_arrow 64
give @s minecraft:spectral_arrow 64
give @s minecraft:gold_ingot 64
give @s minecraft:firework_rocket{Fireworks:{Flight:3}} 64
give @s minecraft:coal_block 64
give @s minecraft:coal 64
give @s minecraft:armor_stand 16
give @s minecraft:elytra{display:{Name:"{\"text\":\"Fighter\"}"},Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1,HideFlags:39}

item replace entity @s armor.head with diamond_helmet{HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1
item replace entity @s armor.chest with diamond_chestplate{HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1
item replace entity @s armor.legs with diamond_leggings{HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1
item replace entity @s armor.feet with diamond_boots{HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1

scoreboard players operation @s VG_pistolammo = VG_defines VG_def_pstlammo
scoreboard players operation @s VG_shotgunammo = VG_defines VG_def_shtgnammo
scoreboard players operation @s VG_smgammo = VG_defines VG_def_smgammo
scoreboard players operation @s VG_rifleammo = VG_defines VG_def_rifleammo
scoreboard players operation @s VG_rgunammo = VG_defines VG_def_rgunammo
scoreboard players operation @s VG_egunammo = VG_defines VG_def_egunammo

item replace entity @s weapon.offhand with minecraft:spectral_arrow 64