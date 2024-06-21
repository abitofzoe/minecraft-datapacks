summon villager ~ ~ ~ {Profession:1,CustomName:"{\"text\":\"Blue Villager Guard\",\"color\":\"blue\"}",CustomNameVisible:1,Career:1,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.movement_speed",Base:0}],Offers:{},Team:blue,Rotation:[-90f,0f],PersistenceRequired:1,Tags:["TC_inminigame","TC_guard","TC_blueguard"]}
effect give @s[tag=TC_inminigame] invisibility 1 0 true
tp @s[tag=TC_inminigame] ~ ~-128 ~ 
kill @s[tag=TC_inminigame] 
scoreboard players set TC_guards TC_chkencircle 1