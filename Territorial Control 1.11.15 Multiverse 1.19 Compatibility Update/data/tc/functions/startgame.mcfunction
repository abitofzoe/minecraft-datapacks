gamerule maxCommandChainLength 32767

clear @a[tag=TC_inminigame]
xp set @a[tag=TC_inminigame] 0 levels
xp set @a[tag=TC_inminigame] 0 points

team leave @a[tag=TC_inminigame]

scoreboard players set TC_playersnum TC_playersnum 0

execute as @a[tag=TC_inminigame] run scoreboard players add TC_playersnum TC_playersnum 1
scoreboard players operation TC_playersnum TC_playersnum /= 2div TC_2div

execute if score TC_playersnum TC_playersnum matches 1.. run function tc:placeteams

team join red @a[tag=TC_inminigame,team=!blue]

#Blue clone
clone 27 5 -10 27 5 -19 100 4 -15
#Red clone
clone 29 5 -20 29 5 -11 249 4 155

execute as @e[tag=TC_inminigame,type=armor_stand,tag=TC_ogspawn_blue] run team join blue @s[tag=TC_inminigame] 
execute as @e[tag=TC_inminigame,type=armor_stand,tag=TC_ogspawn_red] run team join red @s[tag=TC_inminigame] 

execute at @e[tag=TC_inminigame,type=armor_stand,tag=TC_bluespawn] run summon villager ~ 4 ~ {Profession:1,CustomName:"{\"text\":\"Blue Villager Guard\",\"color\":\"blue\"}",CustomNameVisible:1,Career:1,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.movement_speed",Base:0}],Offers:{},Team:blue,Rotation:[-90f,0f],Tags:["TC_inminigame","TC_guard","TC_blueguard"]}
execute at @e[tag=TC_inminigame,type=armor_stand,tag=TC_redspawn] run summon villager ~ 4 ~ {Profession:2,CustomName:"{\"text\":\"Red Villager Guard\",\"color\":\"red\"}",CustomNameVisible:1,Career:1,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.movement_speed",Base:0}],Offers:{},Team:red,Rotation:[90f,0f],Tags:["TC_inminigame","TC_guard","TC_redguard"]}

execute as @e[tag=TC_inminigame,type=villager,tag=TC_redguard] run team join red @s[tag=TC_inminigame] 
execute as @e[tag=TC_inminigame,type=villager,tag=TC_blueguard] run team join blue @s[tag=TC_inminigame] 

scoreboard players set @e[tag=TC_inminigame,type=villager] front 0
spawnpoint @a[tag=TC_inminigame,team=blue] 107 4 -8
spawnpoint @a[tag=TC_inminigame,team=red] 242 4 157
tp @a[tag=TC_inminigame,team=blue] 107.5 4 -7.5
tp @a[tag=TC_inminigame,team=red] 242.5 4 157.5
scoreboard players set @e[tag=TC_inminigame,type=villager] hit 0
execute at @e[tag=TC_inminigame,type=armor_stand,tag=TC_bshop1] run summon villager ~ 4 ~ {Profession:0,CustomName:"{\"text\":\"Materials Genius\",\"color\":\"blue\"}",CustomNameVisible:1,Career:1,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Attributes:[{Name:"generic.max_health",Base:99999}],Offers:{Recipes:[{buy:{id:"oak_log",Count:4},maxUses:9999999,sell:{id:"coal",Count:1},rewardExp:false},{buy:{id:"coal",Count:4},maxUses:9999999,sell:{id:"iron_ingot",Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:4},maxUses:9999999,sell:{id:"gold_ingot",Count:1},rewardExp:false},{buy:{id:"gold_ingot",Count:2},maxUses:9999999,sell:{id:"redstone",Count:1},rewardExp:false},{buy:{id:"gold_ingot",Count:2},maxUses:9999999,sell:{id:"lapis_lazuli",Count:1},rewardExp:false},{buy:{id:"gold_ingot",Count:2},maxUses:9999999,sell:{id:"emerald",Count:1},rewardExp:false},{buy:{id:"emerald",Count:2},maxUses:9999999,sell:{id:"diamond",Count:1},rewardExp:false}]},Team:shopBlue,Rotation:[-90f,0f],AbsorptionAmount:3500000000000000000000000000000000.0f,PersistenceRequired:1,Tags:["TC_inminigame","TC_bmerchant","TC_merchant"]}
execute at @e[tag=TC_inminigame,type=armor_stand,tag=TC_rshop1] run summon villager ~ 4 ~ {Profession:0,CustomName:"{\"text\":\"Materials Genius\",\"color\":\"red\"}",CustomNameVisible:1,Career:1,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Attributes:[{Name:"generic.max_health",Base:99999}],Offers:{Recipes:[{buy:{id:"oak_log",Count:4},maxUses:9999999,sell:{id:"coal",Count:1},rewardExp:false},{buy:{id:"coal",Count:4},maxUses:9999999,sell:{id:"iron_ingot",Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:4},maxUses:9999999,sell:{id:"gold_ingot",Count:1},rewardExp:false},{buy:{id:"gold_ingot",Count:2},maxUses:9999999,sell:{id:"redstone",Count:1},rewardExp:false},{buy:{id:"gold_ingot",Count:2},maxUses:9999999,sell:{id:"lapis_lazuli",Count:1},rewardExp:false},{buy:{id:"gold_ingot",Count:2},maxUses:9999999,sell:{id:"emerald",Count:1},rewardExp:false},{buy:{id:"emerald",Count:2},maxUses:9999999,sell:{id:"diamond",Count:1},rewardExp:false}]},Team:shopRed,Rotation:[90f,0f],AbsorptionAmount:3500000000000000000000000000000000.0f,PersistenceRequired:1,Tags:["TC_inminigame","TC_rmerchant","TC_merchant"]}
execute at @e[tag=TC_inminigame,type=armor_stand,tag=TC_bshop2] run summon villager ~ 4 ~ {Profession:1,CustomName:"{\"text\":\"Block Trader\",\"color\":\"blue\"}",CustomNameVisible:1,Career:1,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Attributes:[{Name:"generic.max_health",Base:99999}],Offers:{Recipes:[{buy:{id:"oak_log",Count:4},maxUses:9999999,sell:{id:"sandstone",Count:16,Damage:2},rewardExp:false},{buy:{id:"coal",Count:4},maxUses:9999999,sell:{id:"sandstone",Count:64,Damage:2},rewardExp:false},{buy:{id:"iron_ingot",Count:4},maxUses:9999999,sell:{id:"cobblestone",Count:16},rewardExp:false},{buy:{id:"gold_ingot",Count:2},maxUses:9999999,sell:{id:"cobblestone",Count:64},rewardExp:false},{buy:{id:"redstone",Count:3},maxUses:9999999,sell:{id:"end_stone",Count:16},rewardExp:false},{buy:{id:"lapis_lazuli",Count:3},maxUses:9999999,sell:{id:"end_stone",Count:64},rewardExp:false},{buy:{id:"emerald",Count:4},maxUses:9999999,sell:{id:"obsidian",Count:8},rewardExp:false},{buy:{id:"diamond",Count:2},maxUses:9999999,sell:{id:"obsidian",Count:20},rewardExp:false}]},Team:shopBlue,Rotation:[-90f,0f],AbsorptionAmount:3500000000000000000000000000000000.0f,PersistenceRequired:1,Tags:["TC_inminigame","TC_bmerchant","TC_merchant"]}
execute at @e[tag=TC_inminigame,type=armor_stand,tag=TC_rshop2] run summon villager ~ 4 ~ {Profession:1,CustomName:"{\"text\":\"Block Trader\",\"color\":\"red\"}",CustomNameVisible:1,Career:1,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Attributes:[{Name:"generic.max_health",Base:99999}],Offers:{Recipes:[{buy:{id:"oak_log",Count:4},maxUses:9999999,sell:{id:"sandstone",Count:16,Damage:2},rewardExp:false},{buy:{id:"coal",Count:4},maxUses:9999999,sell:{id:"sandstone",Count:64,Damage:2},rewardExp:false},{buy:{id:"iron_ingot",Count:4},maxUses:9999999,sell:{id:"cobblestone",Count:16},rewardExp:false},{buy:{id:"gold_ingot",Count:2},maxUses:9999999,sell:{id:"cobblestone",Count:64},rewardExp:false},{buy:{id:"redstone",Count:3},maxUses:9999999,sell:{id:"end_stone",Count:16},rewardExp:false},{buy:{id:"lapis_lazuli",Count:3},maxUses:9999999,sell:{id:"end_stone",Count:64},rewardExp:false},{buy:{id:"emerald",Count:4},maxUses:9999999,sell:{id:"obsidian",Count:8},rewardExp:false},{buy:{id:"diamond",Count:2},maxUses:9999999,sell:{id:"obsidian",Count:20},rewardExp:false}]},Team:shopRed,Rotation:[90f,0f],AbsorptionAmount:3500000000000000000000000000000000.0f,PersistenceRequired:1,Tags:["TC_inminigame","TC_rmerchant","TC_merchant"]}
execute at @e[tag=TC_inminigame,type=armor_stand,tag=TC_bshop3] run summon villager ~ 4 ~ {Profession:2,CustomName:"{\"text\":\"Utilities Merchant\",\"color\":\"blue\"}",CustomNameVisible:1,Career:1,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Attributes:[{Name:"generic.max_health",Base:99999}],Offers:{Recipes:[{buy:{id:"iron_ingot",Count:4},maxUses:9999999,sell:{id:"leather",Count:16},rewardExp:false},{buy:{id:"gold_ingot",Count:4},maxUses:9999999,sell:{id:"string",Count:16},rewardExp:false},{buy:{id:"gold_ingot",Count:4},maxUses:9999999,sell:{id:"flint",Count:16},rewardExp:false},{buy:{id:"gold_ingot",Count:4},maxUses:9999999,sell:{id:"sand",Count:16},rewardExp:false},{buy:{id:"emerald",Count:4},maxUses:9999999,sell:{id:"gunpowder",Count:16},rewardExp:false},{buy:{id:"diamond",Count:4},maxUses:9999999,sell:{id:"enchanting_table",Count:1},rewardExp:false},{buy:{id:"diamond",Count:8},maxUses:9999999,sell:{id:"bookshelf",Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:2},maxUses:9999999,sell:{id:"rail",Count:32},rewardExp:false},{buy:{id:"iron_ingot",Count:4},maxUses:9999999,sell:{id:"powered_rail",Count:24},rewardExp:false}]},Team:shopBlue,Rotation:[-90f,0f],AbsorptionAmount:3500000000000000000000000000000000.0f,PersistenceRequired:1,Tags:["TC_inminigame","TC_bmerchant","TC_merchant"]}
execute at @e[tag=TC_inminigame,type=armor_stand,tag=TC_rshop3] run summon villager ~ 4 ~ {Profession:2,CustomName:"{\"text\":\"Utilities Merchant\",\"color\":\"red\"}",CustomNameVisible:1,Career:1,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Attributes:[{Name:"generic.max_health",Base:99999}],Offers:{Recipes:[{buy:{id:"iron_ingot",Count:4},maxUses:9999999,sell:{id:"leather",Count:16},rewardExp:false},{buy:{id:"gold_ingot",Count:4},maxUses:9999999,sell:{id:"string",Count:16},rewardExp:false},{buy:{id:"gold_ingot",Count:4},maxUses:9999999,sell:{id:"flint",Count:16},rewardExp:false},{buy:{id:"gold_ingot",Count:4},maxUses:9999999,sell:{id:"sand",Count:16},rewardExp:false},{buy:{id:"emerald",Count:4},maxUses:9999999,sell:{id:"gunpowder",Count:16},rewardExp:false},{buy:{id:"diamond",Count:4},maxUses:9999999,sell:{id:"enchanting_table",Count:1},rewardExp:false},{buy:{id:"diamond",Count:8},maxUses:9999999,sell:{id:"bookshelf",Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:2},maxUses:9999999,sell:{id:"rail",Count:32},rewardExp:false},{buy:{id:"iron_ingot",Count:4},maxUses:9999999,sell:{id:"powered_rail",Count:24},rewardExp:false}]},Team:shopRed,Rotation:[90f,0f],AbsorptionAmount:3500000000000000000000000000000000.0f,PersistenceRequired:1,Tags:["TC_inminigame","TC_rmerchant","TC_merchant"]}

#execute at @e[tag=TC_inminigame,type=armor_stand,tag=TC_bshop4] run summon villager ~ 4 ~ {Profession:3,CustomName:"{\"text\":\"Weapons Expert\",\"color\":\"blue\"}",CustomNameVisible:1,Career:2,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Attributes:[{Name:"generic.max_health",Base:99999}],Offers:{Recipes:[{buy:{id:"iron_ingot",Count:3},maxUses:9999999,sell:{id:"blaze_rod",tag:{display:{Name:"{\"text\":\"Explosive Arrows\"}",Lore:["Hold in your hand along with the bow","Fire the bow to make arrows explode! (One time use only)"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:2},maxUses:9999999,sell:{id:"creeper_spawn_egg",tag:{AbsorptionAmount:3500000000000000000000000000000000.0f,EntityTag:{id:"minecraft:creeper",NoAI:1b,PersistenceRequired:1b,NoGravity:1b,CanPickUpLoot:0b,Health:200000,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Silent:1,ExplosionRadius:3,Fuse:40,Tags:["TC_inminigame","landmine","TC_bluemine"],Team:blue},display:{Name:"{\"text\":\"Landmine\"}",Lore:["Deals moderate, concentrated damage in a tiny area.","Blows up when an emeny steps on it!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:4},maxUses:9999999,sell:{id:"blaze_spawn_egg",tag:{AbsorptionAmount:3500000000000000000000000000000000.0f,EntityTag:{id:"minecraft:blaze",NoAI:1b,PersistenceRequired:1b,NoGravity:1b,CanPickUpLoot:0b,Health:200000,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Silent:1,ExplosionRadius:5,Fuse:40,Tags:["TC_inminigame","missile"]},display:{Name:"{\"text\":\"Missile\"}",Lore:["Deals heavy damage in a small area. Also sets things on fire!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"silverfish_spawn_egg",tag:{AbsorptionAmount:3500000000000000000000000000000000.0f,EntityTag:{id:"minecraft:silverfish",NoAI:1b,Silent:1,PersistenceRequired:1b,NoGravity:1b,CanPickUpLoot:0b,Health:200000,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Tags:["TC_inminigame","smoke"]},display:{Name:"{\"text\":\"Smoke Bomb\"}",Lore:["Blind your enemies with smoke and lag for seven seconds!"]}},Count:1},rewardExp:false},{buy:{id:"coal",Count:2},maxUses:9999999,sell:{id:"creeper_spawn_egg",tag:{AbsorptionAmount:3500000000000000000000000000000000.0f,EntityTag:{id:"minecraft:creeper",NoAI:1b,PersistenceRequired:1b,ExplosionRadius:5,Fuse:30,ignited:1,NoGravity:1b,CanPickUpLoot:0b,Health:200000,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Tags:["TC_inminigame","grenade"]},display:{Name:"{\"text\":\"Grenade\"}",Lore:["Blows up with moderate force after 1.5 seconds."]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:16},maxUses:9999999,sell:{id:"carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Pistol\"}",Lore:["Rename this to something else with an","anvil to get better guns!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"spectral_arrow",tag:{display:{Name:"{\"text\":\"Shotgun Ammo\"}",Lore:["For use with a shotgun!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"fire_charge",tag:{display:{Name:"{\"text\":\"Variety Ammo\"}",Lore:["For use with a variety of guns!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"tnt",tag:{display:{Lore:["For use with either blowing things up or bombing from above!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:2},maxUses:9999999,sell:{id:"lava_bucket",tag:{display:{Lore:["Burn your enemies!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"water_bucket",tag:{display:{Lore:["Save yourself from fire!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"firework_rocket",tag:{display:{Lore:["Fly!"]},Fireworks:{Flight:3}},Count:1},rewardExp:false}]},Team:shopBlue,Rotation:[-90f,0f],AbsorptionAmount:3500000000000000000000000000000000.0f,PersistenceRequired:1,Tags:["TC_inminigame","TC_bmerchant","TC_merchant"]}
#execute at @e[tag=TC_inminigame,type=armor_stand,tag=TC_rshop4] run summon villager ~ 4 ~ {Profession:3,CustomName:"{\"text\":\"Weapons Expert\",\"color\":\"red\"}",CustomNameVisible:1,Career:2,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Attributes:[{Name:"generic.max_health",Base:99999}],Offers:{Recipes:[{buy:{id:"iron_ingot",Count:3},maxUses:9999999,sell:{id:"blaze_rod",tag:{display:{Name:"{\"text\":\"Explosive Arrows\"}",Lore:["Hold in your hand along with the bow","Fire the bow to make arrows explode! (One time use only)"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:2},maxUses:9999999,sell:{id:"creeper_spawn_egg",tag:{AbsorptionAmount:3500000000000000000000000000000000.0f,EntityTag:{id:"minecraft:creeper",NoAI:1b,PersistenceRequired:1b,NoGravity:1b,CanPickUpLoot:0b,Health:200000,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Silent:1,ExplosionRadius:3,Fuse:40,Tags:["TC_inminigame","landmine","TC_redmine"],Team:red},display:{Name:"{\"text\":\"Landmine\"}",Lore:["Deals moderate, concentrated damage in a tiny area.","Blows up when an emeny steps on it!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:4},maxUses:9999999,sell:{id:"blaze_spawn_egg",tag:{AbsorptionAmount:3500000000000000000000000000000000.0f,EntityTag:{id:"minecraft:blaze",NoAI:1b,PersistenceRequired:1b,NoGravity:1b,CanPickUpLoot:0b,Health:200000,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Silent:1,ExplosionRadius:5,Fuse:40,Tags:["TC_inminigame","missile"]},display:{Name:"{\"text\":\"Missile\"}",Lore:["Deals heavy damage in a small area. Also sets things on fire!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"silverfish_spawn_egg",tag:{AbsorptionAmount:3500000000000000000000000000000000.0f,EntityTag:{id:"minecraft:silverfish",NoAI:1b,Silent:1,PersistenceRequired:1b,NoGravity:1b,CanPickUpLoot:0b,Health:200000,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Tags:["TC_inminigame","smoke"]},display:{Name:"{\"text\":\"Smoke Bomb\"}",Lore:["Blind your enemies with smoke and lag for seven seconds!"]}},Count:1},rewardExp:false},{buy:{id:"coal",Count:2},maxUses:9999999,sell:{id:"creeper_spawn_egg",tag:{AbsorptionAmount:3500000000000000000000000000000000.0f,EntityTag:{id:"minecraft:creeper",NoAI:1b,PersistenceRequired:1b,ExplosionRadius:5,Fuse:30,ignited:1,NoGravity:1b,CanPickUpLoot:0b,Health:200000,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Tags:["TC_inminigame","grenade"]},display:{Name:"{\"text\":\"Grenade\"}",Lore:["Blows up with moderate force after 1.5 seconds."]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:16},maxUses:9999999,sell:{id:"carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Pistol\"}",Lore:["Rename this to something else with an","anvil to get better guns!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"spectral_arrow",tag:{display:{Name:"{\"text\":\"Shotgun Ammo\"}",Lore:["For use with a shotgun!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"fire_charge",tag:{display:{Name:"{\"text\":\"Variety Ammo\"}",Lore:["For use with a variety of guns!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:2},maxUses:9999999,sell:{id:"tnt",tag:{display:{Lore:["For use with either blowing things up or bombing from above!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:2},maxUses:9999999,sell:{id:"lava_bucket",tag:{display:{Lore:["Burn your enemies!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"water_bucket",tag:{display:{Lore:["Save yourself from fire!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"firework_rocket",tag:{display:{Lore:["Fly!"]},Fireworks:{Flight:3}},Count:1},rewardExp:false}]},Team:shopRed,Rotation:[90f,0f],AbsorptionAmount:3500000000000000000000000000000000.0f,PersistenceRequired:1,Tags:["TC_inminigame","TC_rmerchant","TC_merchant"]}

execute at @e[tag=TC_inminigame,type=armor_stand,tag=TC_rshop4] run summon villager ~ 4 ~ {Profession:3,CustomName:"{\"text\":\"Weapons Expert\",\"color\":\"red\"}",CustomNameVisible:1,Career:2,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Attributes:[{Name:"generic.max_health",Base:99999}],Offers:{Recipes:[{buy:{id:"iron_ingot",Count:3},maxUses:9999999,sell:{id:"blaze_rod",tag:{display:{Name:"{\"text\":\"Explosive Arrows\"}",Lore:["Hold in your hand along with the bow","Fire the bow to make arrows explode! (One time use only)"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:2},maxUses:9999999,sell:{id:"creeper_spawn_egg",tag:{AbsorptionAmount:3500000000000000000000000000000000.0f,EntityTag:{id:"minecraft:creeper",NoAI:1b,PersistenceRequired:1b,NoGravity:1b,CanPickUpLoot:0b,Health:200000,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Silent:1,ExplosionRadius:3,Fuse:40,Tags:["TC_inminigame","landmine","TC_redmine"],Team:red},display:{Name:"{\"text\":\"Landmine\"}",Lore:["Deals moderate, concentrated damage in a tiny area.","Blows up when an emeny steps on it!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:4},maxUses:9999999,sell:{id:"blaze_spawn_egg",tag:{AbsorptionAmount:3500000000000000000000000000000000.0f,EntityTag:{id:"minecraft:blaze",NoAI:1b,PersistenceRequired:1b,NoGravity:1b,CanPickUpLoot:0b,Health:200000,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Silent:1,ExplosionRadius:5,Fuse:40,Tags:["TC_inminigame","missile"]},display:{Name:"{\"text\":\"Missile\"}",Lore:["Deals heavy damage in a small area. Also sets things on fire!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"silverfish_spawn_egg",tag:{AbsorptionAmount:3500000000000000000000000000000000.0f,EntityTag:{id:"minecraft:silverfish",NoAI:1b,Silent:1,PersistenceRequired:1b,NoGravity:1b,CanPickUpLoot:0b,Health:200000,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Tags:["TC_inminigame","smoke"]},display:{Name:"{\"text\":\"Smoke Bomb\"}",Lore:["Blind your enemies with smoke and lag for seven seconds!"]}},Count:1},rewardExp:false},{buy:{id:"coal",Count:2},maxUses:9999999,sell:{id:"creeper_spawn_egg",tag:{AbsorptionAmount:3500000000000000000000000000000000.0f,EntityTag:{id:"minecraft:creeper",NoAI:1b,PersistenceRequired:1b,ExplosionRadius:5,Fuse:20,ignited:1,NoGravity:1b,CanPickUpLoot:0b,Health:200000,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Tags:["TC_inminigame","grenade"]},display:{Name:"{\"text\":\"Grenade\"}",Lore:["Blows up with moderate force after 1.5 seconds."]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:2},maxUses:9999999,sell:{id:"tnt",tag:{display:{Lore:["For use with either blowing things up or bombing from above!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:2},maxUses:9999999,sell:{id:"lava_bucket",tag:{display:{Lore:["Burn your enemies!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"water_bucket",tag:{display:{Lore:["Save yourself from fire!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"firework_rocket",tag:{display:{Lore:["Fly!"]},Fireworks:{Flight:3}},Count:1},rewardExp:false}]},Team:shopRed,Rotation:[90f,0f],AbsorptionAmount:3500000000000000000000000000000000.0f,PersistenceRequired:1,Tags:["TC_inminigame","TC_rmerchant","TC_merchant"]}
execute at @e[tag=TC_inminigame,type=armor_stand,tag=TC_bshop4] run summon villager ~ 4 ~ {Profession:3,CustomName:"{\"text\":\"Weapons Expert\",\"color\":\"blue\"}",CustomNameVisible:1,Career:2,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Attributes:[{Name:"generic.max_health",Base:99999}],Offers:{Recipes:[{buy:{id:"iron_ingot",Count:3},maxUses:9999999,sell:{id:"blaze_rod",tag:{display:{Name:"{\"text\":\"Explosive Arrows\"}",Lore:["Hold in your hand along with the bow","Fire the bow to make arrows explode! (One time use only)"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:2},maxUses:9999999,sell:{id:"creeper_spawn_egg",tag:{AbsorptionAmount:3500000000000000000000000000000000.0f,EntityTag:{id:"minecraft:creeper",NoAI:1b,PersistenceRequired:1b,NoGravity:1b,CanPickUpLoot:0b,Health:200000,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Silent:1,ExplosionRadius:3,Fuse:40,Tags:["TC_inminigame","landmine","TC_bluemine"],Team:blue},display:{Name:"{\"text\":\"Landmine\"}",Lore:["Deals moderate, concentrated damage in a tiny area.","Blows up when an emeny steps on it!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:4},maxUses:9999999,sell:{id:"blaze_spawn_egg",tag:{AbsorptionAmount:3500000000000000000000000000000000.0f,EntityTag:{id:"minecraft:blaze",NoAI:1b,PersistenceRequired:1b,NoGravity:1b,CanPickUpLoot:0b,Health:200000,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Silent:1,ExplosionRadius:5,Fuse:40,Tags:["TC_inminigame","missile"]},display:{Name:"{\"text\":\"Missile\"}",Lore:["Deals heavy damage in a small area. Also sets things on fire!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"silverfish_spawn_egg",tag:{AbsorptionAmount:3500000000000000000000000000000000.0f,EntityTag:{id:"minecraft:silverfish",NoAI:1b,Silent:1,PersistenceRequired:1b,NoGravity:1b,CanPickUpLoot:0b,Health:200000,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Tags:["TC_inminigame","smoke"]},display:{Name:"{\"text\":\"Smoke Bomb\"}",Lore:["Blind your enemies with smoke and lag for seven seconds!"]}},Count:1},rewardExp:false},{buy:{id:"coal",Count:2},maxUses:9999999,sell:{id:"creeper_spawn_egg",tag:{AbsorptionAmount:3500000000000000000000000000000000.0f,EntityTag:{id:"minecraft:creeper",NoAI:1b,PersistenceRequired:1b,ExplosionRadius:5,Fuse:20,ignited:1,NoGravity:1b,CanPickUpLoot:0b,Health:200000,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.movement_speed",Base:0f}],Tags:["TC_inminigame","grenade"]},display:{Name:"{\"text\":\"Grenade\"}",Lore:["Blows up with moderate force after 1.5 seconds."]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"tnt",tag:{display:{Lore:["For use with either blowing things up or bombing from above!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:2},maxUses:9999999,sell:{id:"lava_bucket",tag:{display:{Lore:["Burn your enemies!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"water_bucket",tag:{display:{Lore:["Save yourself from fire!"]}},Count:1},rewardExp:false},{buy:{id:"iron_ingot",Count:1},maxUses:9999999,sell:{id:"firework_rocket",tag:{display:{Lore:["Fly!"]},Fireworks:{Flight:3}},Count:1},rewardExp:false}]},Team:shopBlue,Rotation:[-90f,0f],AbsorptionAmount:3500000000000000000000000000000000.0f,PersistenceRequired:1,Tags:["TC_inminigame","TC_bmerchant","TC_merchant"]}

#give @a[tag=TC_inminigame,team=blue] name_tag{display:{Name:"{\"text\":\"Blue's key\"}",Lore:["Use to unlock your team's chest"]}} 1 
#give @a[tag=TC_inminigame,team=red] name_tag{display:{Name:"{\"text\":\"Red's key\"}",Lore:["Use to unlock your team's chest"]}} 1 
item replace entity @a[tag=TC_inminigame] inventory.8 with minecraft:rotten_flesh{display:{Name:"{\"text\":\"Respawn\"}",Lore:["Drop this to respawn."]}}
scoreboard players set powerupTimer powerupTimer 0
scoreboard players set TC_poweruptime TC_poweruptime 0
scoreboard players set TeamPoints TC_bpoints 0
scoreboard players set TeamPoints TC_rpoints 0
scoreboard players set TC_timer TC_tpointstimer 0
scoreboard players set TC_trucetime TC_trucetime 2400
tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"Personal settings: ","color":"white"},{"text":"/trigger TC_settings","color":"green"}]
tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"Team actions: ","color":"white"},{"text":"/trigger TC_taction","color":"green"}]
tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"Get a new team chest key: ","color":"white"},{"text":"/trigger TC_key","color":"green"}]
tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"New to the game or want a refresher? Type in ","color":"white"},{"text":"/trigger TC_help","color":"green"}]
tellraw @a[tag=TC_inminigame] [{"text":"Territorial Control: ","color":"green"},{"text":"Truce! 2 minutes to prepare. You are not allowed to capture territory during this time.","color":"white"}]
scoreboard players set TC_votes TC_voteyes 0
scoreboard players set @a[tag=TC_inminigame] TC_voteyes 0
scoreboard players set TC_votes TC_voteno 0
scoreboard players set @a[tag=TC_inminigame] TC_voteno 0
scoreboard players set TC_votes TC_totalplayers 0
scoreboard players set TC_votes TC_votetimer 0
scoreboard players set @a[tag=TC_inminigame] TC_set_sboost 1
scoreboard players set @a[tag=TC_inminigame] TC_set_dust 1
scoreboard players set @a[tag=TC_inminigame] TC_set_notif 1
scoreboard players set @a[tag=TC_inminigame] TC_set_seffect 1
scoreboard players set @a[tag=TC_inminigame] TC_set_tips 1
scoreboard players set @a[tag=TC_inminigame] TC_hasDied 0
scoreboard players set @a[tag=TC_inminigame] respawnTimer 0
scoreboard players set @a[tag=TC_inminigame] death 0
gamerule maxEntityCramming 24
gamerule sendCommandFeedback false
time set 6000
gamerule doDaylightCycle true
effect clear @a[tag=TC_inminigame] 
effect give @a[tag=TC_inminigame] saturation 100 0 true
scoreboard players set @e[tag=TC_inminigame,type=villager,tag=TC_guard] TC_resources 0
scoreboard players set TeamPoints TC_bpointsmax 1000
scoreboard players set TeamPoints TC_rpointsmax 1000
scoreboard players set TeamPoints TC_bpointsmodif 100
scoreboard players set TeamPoints TC_rpointsmodif 100
scoreboard players set TeamPoints TC_bpointsups 0
scoreboard players set TeamPoints TC_rpointsups 0
scoreboard players set TeamPoints TC_giveBPoints 0
scoreboard players set TeamPoints TC_giveRPoints 0
scoreboard players reset TeamPoints TC_bKillPtsTimer
scoreboard players reset TeamPoints TC_rKillPtsTimer
scoreboard players reset TeamPoints TC_bDthPtsTimer
scoreboard players reset TeamPoints TC_rDthPtsTimer
scoreboard players set TC_bextract TC_bextractmodif 100
scoreboard players set TC_rextract TC_rextractmodif 100
scoreboard players set TC_rextract TC_blextractmod 0
scoreboard players set TC_rextract TC_rlextractmod 0
scoreboard players set TC_bextract TC_bextractups 0
scoreboard players set TC_rextract TC_rextractups 0
scoreboard players set TC_bextract TC_coalextract 0 
scoreboard players set TC_bextract TC_ironextract 0 
scoreboard players set TC_bextract TC_goldextract 0 
scoreboard players set TC_bextract TC_diamextract 0 
scoreboard players set TC_rextract TC_coalextract 0 
scoreboard players set TC_rextract TC_ironextract 0 
scoreboard players set TC_rextract TC_goldextract 0 
scoreboard players set TC_rextract TC_diamextract 0 
scoreboard players set TC_guards TC_bmaxguardhp 150
scoreboard players set TC_guards TC_rmaxguardhp 150
scoreboard players set TC_guards TC_bguardhpups 0
scoreboard players set TC_guards TC_rguardhpups 0
gamemode survival @a[tag=TC_inminigame]
scoreboard players set actioncontrol TC_actioncontrol 5
bossbar remove minecraft:brampage
bossbar remove minecraft:rrampage
bossbar remove minecraft:btpointsboost
bossbar remove minecraft:rtpointsboost
bossbar remove minecraft:btpointsreduc
bossbar remove minecraft:rtpointsreduc
bossbar remove minecraft:trucetime

bossbar add btpointsboost {"text":"+300% Team Points gain speed","color":"green"}
bossbar set minecraft:btpointsboost color green
bossbar set minecraft:btpointsboost max 900

bossbar add rtpointsboost {"text":"+300% Team Points gain speed","color":"green"}
bossbar set minecraft:rtpointsboost color green
bossbar set minecraft:rtpointsboost max 900

bossbar add btpointsreduc {"text":"-100% Team Points gain speed","color":"yellow"}
bossbar set minecraft:btpointsreduc color yellow
bossbar set minecraft:btpointsreduc max 400

bossbar add rtpointsreduc {"text":"-100% Team Points gain speed","color":"yellow"}
bossbar set minecraft:rtpointsreduc color yellow
bossbar set minecraft:rtpointsreduc max 400

bossbar add trucetime {"text":"Truce!","color":"green"}
bossbar set minecraft:trucetime color green
bossbar set minecraft:trucetime max 2400

bossbar add brampage {"text":"Rampage","color":"green"}
bossbar set minecraft:brampage color green
bossbar set minecraft:brampage max 600

bossbar add brampageenemy {"text":"Enemy is Rampaging!","color":"yellow"}
bossbar set minecraft:brampageenemy color yellow
bossbar set minecraft:brampageenemy max 600

bossbar add rrampage {"text":"Rampage","color":"green"}
bossbar set minecraft:rrampage color green
bossbar set minecraft:rrampage max 600

bossbar add rrampageenemy {"text":"Enemy is Rampaging!","color":"yellow"}
bossbar set minecraft:rrampageenemy color yellow
bossbar set minecraft:rrampageenemy max 600

bossbar set minecraft:btpointsboost visible false
bossbar set minecraft:rtpointsboost visible false
bossbar set minecraft:btpointsreduc visible false
bossbar set minecraft:rtpointsreduc visible false
bossbar set minecraft:trucetime visible false
bossbar set minecraft:brampage visible false
bossbar set minecraft:rrampage visible false

scoreboard players set @a[tag=TC_inminigame] disorient 0

scoreboard players add TC_gameid TC_gameid 1
execute as @a[tag=TC_inminigame] run scoreboard players operation @s[tag=TC_inminigame] TC_gameid = TC_gameid TC_gameid

#scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay sidebar.team.blue TC_bpoints 
scoreboard objectives setdisplay sidebar.team.red TC_rpoints 

scoreboard players set @a[tag=TC_inminigame] TC_supplygrace 100
scoreboard players set @a[tag=TC_inminigame] TC_supplygracemx 100
scoreboard players set @a[tag=TC_inminigame] TC_supplygracem 0

execute as @a[tag=TC_inminigame] run function tc:endextrasupplies

scoreboard players set @e[tag=TC_inminigame,type=villager,tag=TC_guard] TC_attritiontime 1

scoreboard players set TC_TeamActions TC_rrampage 0
scoreboard players set TC_TeamActions TC_brampage 0

gamerule doImmediateRespawn true
gamerule mobGriefing true

scoreboard players set @a[tag=TC_inminigame] tookDamage 0
scoreboard players set @a[tag=TC_inminigame] TC_unharmedtime 0