data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Pistol"}'}},Count:1b},{}],HandDropChances:[1.0f,0.0f],CanPickUpLoot:0b,PersistenceRequired:1b}
tag @s add VG_hasmobgun
scoreboard players set @s VG_mobgunid 1
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Pistol"}'}}}},sort=nearest,limit=1]
function vanillaguns2:mobguns/newguneffect