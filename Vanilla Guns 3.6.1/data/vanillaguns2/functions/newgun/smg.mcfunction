function vanillaguns2:turrets/newturreteffects
function vanillaguns2:newgun/newgundata
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_nugget"}},distance=..1,sort=nearest,limit=1] run function vanillaguns2:special/decrementitem
data merge entity @s {Item:{tag:{Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1,HideFlags:39}}}