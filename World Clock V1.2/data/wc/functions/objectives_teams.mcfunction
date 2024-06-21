#Add objectives
scoreboard objectives add WC_12div dummy
scoreboard objectives add WC_1000div dummy
scoreboard objectives add WC_mins dummy
scoreboard objectives add WC_minstemp dummy
scoreboard objectives add WC_hours dummy
scoreboard objectives add WC_day dummy
scoreboard objectives add WC_month dummy
scoreboard objectives add WC_year dummy
scoreboard objectives add WC_over24 dummy
scoreboard objectives add WC_50div dummy
scoreboard objectives add WC_1000mul dummy
scoreboard objectives add WC_3mul dummy

scoreboard players set 12div WC_12div 12
scoreboard players set 50div WC_50div 50
scoreboard players set 1000div WC_1000div 1000
scoreboard players set 1000mul WC_1000mul 1000
scoreboard players set 3mul WC_3mul 3

scoreboard players add WC_time WC_mins 0
scoreboard players add WC_time WC_hours 0
scoreboard players add WC_time WC_day 0
scoreboard players add WC_time WC_month 0
scoreboard players add WC_time WC_year 0

scoreboard objectives add WC_weekday dummy
scoreboard players add WC_time WC_weekday 0

scoreboard objectives add WC_lastdaytime dummy
scoreboard objectives add WC_daytime dummy
scoreboard objectives add WC_lastdaytime_c dummy

scoreboard objectives add WC_toggle trigger
scoreboard objectives add WC_passmidnight dummy
scoreboard objectives add WC_const_7 dummy

scoreboard players set WC_time WC_const_7 7

#tellraw @a [{"text":"World Clock","color":"green"},{"text":" by abitofzoe","color":"aqua"},{"text":" Version 1.0 Loaded.","color":"green"}]