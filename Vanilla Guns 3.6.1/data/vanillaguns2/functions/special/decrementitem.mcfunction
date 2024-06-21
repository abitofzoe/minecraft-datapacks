execute store result score @s VG_itemcount run data get entity @s Item.Count
scoreboard players remove @s VG_itemcount 1
execute if score @s VG_itemcount matches ..0 run kill @s 
execute store result entity @s Item.Count byte 1 run scoreboard players get @s VG_itemcount
playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.5 2