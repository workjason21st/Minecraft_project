#----------其他轉換---------
scoreboard players tag @e[type=Item] add seeds {Item:{id:"minecraft:wheat_seeds"}}
entitydata @e[tag=seeds] {PickupDelay:0,Item:{id:"wheat_seeds",tag:{HideFlags:16,CanPlaceOn:[farmland]}}}
scoreboard players tag @e[tag=seeds] remove seeds

scoreboard players tag @e[type=Item] add fish {Item:{id:"minecraft:fish"}}
entitydata @e[tag=fish] {PickupDelay:0,Item:{id:"cooked_fish"}}
scoreboard players tag @e[tag=fish] remove fish

scoreboard players tag @e[type=Item] add sapling {OnGround:1b,Item:{id:"minecraft:sapling",Count:1b}}
execute @e[tag=sapling] ~ ~ ~ detect ~ ~ ~ air 0 scoreboard players tag @s add saplings
execute @e[tag=saplings] ~ ~ ~ detect ~ ~-1 ~ grass 0 scoreboard players tag @s add saplingss
execute @e[tag=saplings] ~ ~ ~ detect ~ ~-1 ~ dirt 0 scoreboard players tag @s add saplingss
execute @e[tag=saplingss] ~ ~ ~ detect ~ ~-1 ~ grass 0 /fill ~ ~ ~ ~ ~ ~ sapling 0 replace air
execute @e[tag=saplingss] ~ ~ ~ detect ~ ~-1 ~ dirt 0 /fill ~ ~ ~ ~ ~ ~ sapling 0 replace air
kill @e[tag=saplingss]

scoreboard players tag @e[type=Item] add potato {Item:{id:"minecraft:potato"}}
entitydata @e[tag=potato] {PickupDelay:0,Item:{id:"potato",tag:{HideFlags:16,CanPlaceOn:[farmland]}}}
scoreboard players tag @e[tag=potato] remove potato

scoreboard players tag @e[type=Item] add zombies {OnGround:1b,Item:{id:"minecraft:spawn_egg",tag:{EntityTag:{id:"minecraft:zombie"}}}}
execute @e[tag=zombies] ~ ~ ~ /summon minecraft:zombie ~ ~1 ~ {CustomName:"有機率掉落物品的殭屍",CustomNameVisible:1,Tags:["zombie"],Health:50,IsVillager:0,IsBaby:0,CanBreakDoors:1,PersistenceRequired:1,Attributes:[{Name:generic.maxHealth,Base:50},{Name:"generic.followRange",Base:20},{Name:"generic.movementSpeed",Base:0.25f},{Name:"generic.attackDamage",Base:3.5}],HandItems:[{id:"ghast_tear",Count:1,tag:{display:{Name:"回城水滴",Lore:["§5放置副手可快速回城"]}}},{id:"minecraft:clay_ball",Count:2,tag:{display:{Name:"黏土"}}}],HandDropChances:[0F,0F],ArmorItems:[{Count:1,id:"minecraft:chorus_fruit",tag:{display:{Name:"瞬移果"}}},{Count:1,id:"minecraft:experience_bottle",tag:{display:{Name:"經驗瓶"}}},{id:"minecraft:leather_chestplate",Count:1},{id:"minecraft:web",Count:1,tag:{display:{Name:"蜘蛛網"}}}],ArmorDropChances:[0F,0F,0F,0F],ActiveEffects:[{Id:8,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:12,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:13,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:16,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
kill @e[type=Item,tag=zombies]

#scoreboard players tag @e[type=Item] add zombies {OnGround:1b,Item:{id:"minecraft:spawn_egg",tag:{EntityTag:{id:"minecraft:zombie"}}}}
#execute @e[tag=zombies] ~ ~ ~ /summon minecraft:zombie ~ ~1 ~ {CustomName:"有機率掉落物品的殭屍",CustomNameVisible:1,Tags:["zombie"],Health:50,IsVillager:0,IsBaby:0,CanBreakDoors:1,PersistenceRequired:1,Attributes:[{Name:generic.maxHealth,Base:50},{Name:"generic.followRange",Base:20},{Name:"generic.movementSpeed",Base:0.25f},{Name:"generic.attackDamage",Base:3.5}],HandItems:[{id:"ghast_tear",Count:1,tag:{display:{Name:"1%掉落的回程水滴",Lore:["§5放置副手可快速回城"]}}},{id:"minecraft:clay_ball",Count:2,tag:{display:{Name:"10%掉落的黏土"}}}],HandDropChances:[0.01F,0.1F],ArmorItems:[{Count:1,id:"minecraft:chorus_fruit",tag:{display:{Name:"15%掉落的瞬移果"}}},{Count:1,id:"minecraft:experience_bottle",tag:{display:{Name:"15%掉落的經驗瓶"}}},{id:"minecraft:leather_chestplate",Count:1},{id:"minecraft:web",Count:1,tag:{display:{Name:"7%掉落的蜘蛛網"}}}],ArmorDropChances:[0.15F,0.15F,0F,0.07F],ActiveEffects:[{Id:8,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:12,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:13,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:16,Amplifier:0,Duration:2147483647,ShowParticles:0b}]}
#kill @e[type=Item,tag=zombies]
