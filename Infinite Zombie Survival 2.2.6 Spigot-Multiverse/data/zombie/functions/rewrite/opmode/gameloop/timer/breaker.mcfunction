execute if score IZr_system IZr_sectionsopen matches 1 at @e[type=armor_stand,tag=IZr_classic,tag=IZ_inminigame,tag=IZr_section1,sort=random,limit=1] run summon spider ~ 4 ~ {NoAI:1,Invulnerable:0,Rotation:[90f,0f],CustomName:"{\"text\":\"Wall Buster\",\"color\":\"red\"}",CustomNameVisible:1,Health:5,Tags:["IZ_inminigame"]}
execute if score IZr_system IZr_sectionsopen matches 2 at @e[type=armor_stand,tag=IZr_classic,tag=IZ_inminigame,tag=IZr_section2,sort=random,limit=1] run summon spider ~ 4 ~ {NoAI:1,Invulnerable:0,Rotation:[90f,0f],CustomName:"{\"text\":\"Wall Buster\",\"color\":\"red\"}",CustomNameVisible:1,Health:5,Tags:["IZ_inminigame"]}
execute if score IZr_system IZr_sectionsopen matches 3 at @e[type=armor_stand,tag=IZr_classic,tag=IZ_inminigame,tag=IZr_section3,sort=random,limit=1] run summon spider ~ 4 ~ {NoAI:1,Invulnerable:0,Rotation:[90f,0f],CustomName:"{\"text\":\"Wall Buster\",\"color\":\"red\"}",CustomNameVisible:1,Health:5,Tags:["IZ_inminigame"]}
execute if score IZr_system IZr_sectionsopen matches 4 at @e[type=armor_stand,tag=IZr_classic,tag=IZ_inminigame,tag=IZr_section4,sort=random,limit=1] run summon spider ~ 4 ~ {NoAI:1,Invulnerable:0,Rotation:[90f,0f],CustomName:"{\"text\":\"Wall Buster\",\"color\":\"red\"}",CustomNameVisible:1,Health:5,Tags:["IZ_inminigame"]}
execute if score IZr_system IZr_sectionsopen matches 5 at @e[type=armor_stand,tag=IZr_classic,tag=IZ_inminigame,tag=IZr_section5,sort=random,limit=1] run summon spider ~ 4 ~ {NoAI:1,Invulnerable:0,Rotation:[90f,0f],CustomName:"{\"text\":\"Wall Buster\",\"color\":\"red\"}",CustomNameVisible:1,Health:5,Tags:["IZ_inminigame"]}

function zombie:rewrite/opmode/gameloop/rng/breaker