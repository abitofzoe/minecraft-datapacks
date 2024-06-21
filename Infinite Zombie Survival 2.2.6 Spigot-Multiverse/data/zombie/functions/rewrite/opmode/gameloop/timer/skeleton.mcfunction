execute if score IZr_system IZr_sectionsopen matches 1 at @e[type=armor_stand,tag=IZr_classic,tag=IZ_inminigame,tag=IZr_section1,sort=random,limit=1] run summon minecraft:skeleton ~ ~ ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:320.0f},{Name:"generic.movement_speed",Base:0.42f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score IZr_system IZr_sectionsopen matches 2 at @e[type=armor_stand,tag=IZr_classic,tag=IZ_inminigame,tag=IZr_section2,sort=random,limit=1] run summon minecraft:skeleton ~ ~ ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:320.0f},{Name:"generic.movement_speed",Base:0.48f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score IZr_system IZr_sectionsopen matches 3 at @e[type=armor_stand,tag=IZr_classic,tag=IZ_inminigame,tag=IZr_section3,sort=random,limit=1] run summon minecraft:skeleton ~ ~ ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:320.0f},{Name:"generic.movement_speed",Base:0.54f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score IZr_system IZr_sectionsopen matches 4 at @e[type=armor_stand,tag=IZr_classic,tag=IZ_inminigame,tag=IZr_section4,sort=random,limit=1] run summon minecraft:skeleton ~ ~ ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:320.0f},{Name:"generic.movement_speed",Base:0.60f}],HandItems:[{id:"minecraft:bow",Count:1,tag:{Enchantments:[{id:"minecraft:power",lvl:2}]}},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}
execute if score IZr_system IZr_sectionsopen matches 5 at @e[type=armor_stand,tag=IZr_classic,tag=IZ_inminigame,tag=IZr_section5,sort=random,limit=1] run summon minecraft:skeleton ~ ~ ~ {PersistenceRequired:1b,LeftHanded:0,Health:30,Attributes:[{Name:"generic.follow_range",Base:320.0f},{Name:"generic.movement_speed",Base:0.60f}],HandItems:[{id:"minecraft:bow",Count:1,tag:{Enchantments:[{id:"minecraft:power",lvl:5}]}},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}

function zombie:rewrite/opmode/gameloop/rng/skeleton

#{PersistenceRequired:1b,Health:30,Attributes:[{Name:"generic.follow_range",Base:320.0f},{Name:"generic.movement_speed",Base:0.42f}],HandItems:[{id:"minecraft:bow",Count:1},{}],HandDropChances:[0.25F,0F],Tags:["IZ_inminigame"]}