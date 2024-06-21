execute store result score WC_time WC_day run time query day
execute store result score WC_time WC_hours run time query daytime
execute store result score WC_time WC_daytime run time query day
scoreboard players add WC_time WC_passmidnight 0 

#tellraw @a ["",{"score":{"name":"WC_time","objective":"WC_daytime"}},{"text":", "},{"score":{"name":"WC_time","objective":"WC_lastdaytime"}}]

scoreboard players add WC_time WC_lastdaytime_c 1
execute if score WC_time WC_lastdaytime_c matches 20.. store result score WC_time WC_lastdaytime run time query day
#execute if score WC_time WC_lastdaytime_c matches 2.. unless score WC_time WC_lastdaytime matches 0 if score WC_time WC_daytime matches 1 run scoreboard players add WC_time WC_weekday 1
execute if score WC_time WC_lastdaytime_c matches 20.. run scoreboard players set WC_time WC_lastdaytime_c 0

execute if score WC_time WC_daytime > WC_time WC_lastdaytime if score WC_time WC_passmidnight matches 0 run scoreboard players add WC_time WC_weekday 1
execute if score WC_time WC_daytime > WC_time WC_lastdaytime run scoreboard players operation WC_time WC_lastdaytime = WC_time WC_daytime

execute if score WC_time WC_hours matches 10 run scoreboard players set WC_time WC_passmidnight 0
execute if score WC_time WC_hours matches 18000 run scoreboard players add WC_time WC_weekday 1
execute if score WC_time WC_hours matches 18000 run scoreboard players set WC_time WC_passmidnight 1
scoreboard players add WC_time WC_hours 6000
scoreboard players operation WC_time WC_hours /= 1000div WC_1000div
execute if score WC_time WC_hours matches 24.. run scoreboard players operation WC_time WC_over24 = WC_time WC_hours
scoreboard players remove WC_time WC_over24 24
execute if score WC_time WC_hours matches 24.. run scoreboard players operation WC_time WC_hours = WC_time WC_over24
execute store result score WC_time WC_mins run time query daytime
execute store result score WC_time WC_minstemp run time query daytime
scoreboard players operation WC_time WC_minstemp /= 1000div WC_1000div
scoreboard players operation WC_time WC_minstemp *= 1000mul WC_1000mul
scoreboard players operation WC_time WC_mins -= WC_time WC_minstemp
scoreboard players operation WC_time WC_mins /= 50div WC_50div
scoreboard players operation WC_time WC_mins *= 3mul WC_3mul

execute if score WC_time WC_weekday matches 7.. run scoreboard players set WC_time WC_weekday 0

scoreboard players enable @a WC_toggle

execute if score WC_time WC_weekday matches 0 if score WC_time WC_mins matches 10.. run title @a[scores={WC_toggle=1}] actionbar ["",{"text":"Sunday","color":"yellow"},{"text":" — Time: ","color":"white"},{"score":{"name":"WC_time","objective":"WC_hours"}},{"text":":"},{"score":{"name":"WC_time","objective":"WC_mins"}}]
execute if score WC_time WC_weekday matches 0 if score WC_time WC_mins matches ..9 run title @a[scores={WC_toggle=1}] actionbar ["",{"text":"Sunday","color":"yellow"},{"text":" — Time: ","color":"white"},{"score":{"name":"WC_time","objective":"WC_hours"}},{"text":":0"},{"score":{"name":"WC_time","objective":"WC_mins"}}]
execute if score WC_time WC_weekday matches 1 if score WC_time WC_mins matches 10.. run title @a[scores={WC_toggle=1}] actionbar ["",{"text":"Monday","color":"white"},{"text":" — Time: ","color":"white"},{"score":{"name":"WC_time","objective":"WC_hours"}},{"text":":"},{"score":{"name":"WC_time","objective":"WC_mins"}}]
execute if score WC_time WC_weekday matches 1 if score WC_time WC_mins matches ..9 run title @a[scores={WC_toggle=1}] actionbar ["",{"text":"Monday","color":"white"},{"text":" — Time: ","color":"white"},{"score":{"name":"WC_time","objective":"WC_hours"}},{"text":":0"},{"score":{"name":"WC_time","objective":"WC_mins"}}]
execute if score WC_time WC_weekday matches 2 if score WC_time WC_mins matches 10.. run title @a[scores={WC_toggle=1}] actionbar ["",{"text":"Tuesday","color":"white"},{"text":" — Time: ","color":"white"},{"score":{"name":"WC_time","objective":"WC_hours"}},{"text":":"},{"score":{"name":"WC_time","objective":"WC_mins"}}]
execute if score WC_time WC_weekday matches 2 if score WC_time WC_mins matches ..9 run title @a[scores={WC_toggle=1}] actionbar ["",{"text":"Tuesday","color":"white"},{"text":" — Time: ","color":"white"},{"score":{"name":"WC_time","objective":"WC_hours"}},{"text":":0"},{"score":{"name":"WC_time","objective":"WC_mins"}}]
execute if score WC_time WC_weekday matches 3 if score WC_time WC_mins matches 10.. run title @a[scores={WC_toggle=1}] actionbar ["",{"text":"Wednesday","color":"white"},{"text":" — Time: ","color":"white"},{"score":{"name":"WC_time","objective":"WC_hours"}},{"text":":"},{"score":{"name":"WC_time","objective":"WC_mins"}}]
execute if score WC_time WC_weekday matches 3 if score WC_time WC_mins matches ..9 run title @a[scores={WC_toggle=1}] actionbar ["",{"text":"Wednesday","color":"white"},{"text":" — Time: ","color":"white"},{"score":{"name":"WC_time","objective":"WC_hours"}},{"text":":0"},{"score":{"name":"WC_time","objective":"WC_mins"}}]
execute if score WC_time WC_weekday matches 4 if score WC_time WC_mins matches 10.. run title @a[scores={WC_toggle=1}] actionbar ["",{"text":"Thursday","color":"white"},{"text":" — Time: ","color":"white"},{"score":{"name":"WC_time","objective":"WC_hours"}},{"text":":"},{"score":{"name":"WC_time","objective":"WC_mins"}}]
execute if score WC_time WC_weekday matches 4 if score WC_time WC_mins matches ..9 run title @a[scores={WC_toggle=1}] actionbar ["",{"text":"Thursday","color":"white"},{"text":" — Time: ","color":"white"},{"score":{"name":"WC_time","objective":"WC_hours"}},{"text":":0"},{"score":{"name":"WC_time","objective":"WC_mins"}}]
execute if score WC_time WC_weekday matches 5 if score WC_time WC_mins matches 10.. run title @a[scores={WC_toggle=1}] actionbar ["",{"text":"Friday","color":"white"},{"text":" — Time: ","color":"white"},{"score":{"name":"WC_time","objective":"WC_hours"}},{"text":":"},{"score":{"name":"WC_time","objective":"WC_mins"}}]
execute if score WC_time WC_weekday matches 5 if score WC_time WC_mins matches ..9 run title @a[scores={WC_toggle=1}] actionbar ["",{"text":"Friday","color":"white"},{"text":" — Time: ","color":"white"},{"score":{"name":"WC_time","objective":"WC_hours"}},{"text":":0"},{"score":{"name":"WC_time","objective":"WC_mins"}}]
execute if score WC_time WC_weekday matches 6 if score WC_time WC_mins matches 10.. run title @a[scores={WC_toggle=1}] actionbar ["",{"text":"Saturday","color":"yellow"},{"text":" — Time: ","color":"white"},{"score":{"name":"WC_time","objective":"WC_hours"}},{"text":":"},{"score":{"name":"WC_time","objective":"WC_mins"}}]
execute if score WC_time WC_weekday matches 6 if score WC_time WC_mins matches ..9 run title @a[scores={WC_toggle=1}] actionbar ["",{"text":"Saturday","color":"yellow"},{"text":" — Time: ","color":"white"},{"score":{"name":"WC_time","objective":"WC_hours"}},{"text":":0"},{"score":{"name":"WC_time","objective":"WC_mins"}}]


#13000, 13000 — 1
#13000, 13001 — 2
#13001, 13001 — 2

#13000, 0 — 2