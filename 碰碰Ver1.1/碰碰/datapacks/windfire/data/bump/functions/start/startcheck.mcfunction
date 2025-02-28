#forceload remove all
#forceload add 100 100

gamemode adventure @a
execute if entity @e[tag=mainAI,scores={bumpplace=0}] run fill 219 37 219 181 32 181 minecraft:air replace barrier
execute if entity @e[tag=mainAI,scores={bumpplace=0}] run fill 219 32 219 181 32 181 minecraft:air

execute if entity @e[tag=mainAI,scores={bumpplace=1}] run fill 319 39 319 281 32 281 minecraft:air replace barrier
execute if entity @e[tag=mainAI,scores={bumpplace=1}] run fill 307 32 295 305 32 293 minecraft:barrier replace air

execute if entity @e[tag=mainAI,scores={bumpplace=2}] run fill 270 31 170 201 34 101 minecraft:air replace barrier
execute if entity @e[tag=mainAI,scores={bumpplace=2}] run fill 270 35 170 201 37 101 minecraft:air replace barrier
#execute if entity @e[tag=mainAI,scores={bumpplace=2}] run fill 307 32 295 305 32 293 minecraft:barrier replace air

kill @e[type=item]
kill @e[tag=teamwin]
kill @e[tag=solewin]
kill @e[tag=aiwin]
execute if entity @e[tag=mainAI] if entity @a[team=yellow] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bump","teamwin","teamyellowwin","wins"],CustomName:"{\"text\":\"黃win\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b}
execute if entity @e[tag=mainAI] if entity @a[team=red] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bump","teamwin","teamredwin","wins"],CustomName:"{\"text\":\"紅win\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b}
execute if entity @e[tag=mainAI] if entity @a[team=green] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bump","teamwin","teamgreenwin","wins"],CustomName:"{\"text\":\"綠win\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b}
execute if entity @e[tag=mainAI] if entity @a[team=aqua] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bump","teamwin","teamaquawin","wins"],CustomName:"{\"text\":\"藍win\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b}
execute if entity @e[tag=mainAI] as @a[team=,gamemode=adventure] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bump","solewin","wins"],CustomName:"{\"text\":\"solewin\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b}
execute if entity @e[tag=mainAI,scores={bumpai=1..2}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bump","aiwin","wins"],CustomName:"{\"text\":\"solewin\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b}

execute if entity @e[tag=mainAI,scores={bumpplace=0}] run fill 214 37 219 214 32 214 minecraft:barrier replace air
execute if entity @e[tag=mainAI,scores={bumpplace=0}] run fill 219 37 214 214 32 214 minecraft:barrier replace air
execute if entity @e[tag=mainAI,scores={bumpplace=0}] run fill 186 37 219 186 32 214 minecraft:barrier replace air
execute if entity @e[tag=mainAI,scores={bumpplace=0}] run fill 181 37 214 186 32 214 minecraft:barrier replace air
execute if entity @e[tag=mainAI,scores={bumpplace=0}] run fill 219 37 186 214 32 186 minecraft:barrier replace air
execute if entity @e[tag=mainAI,scores={bumpplace=0}] run fill 214 37 181 214 32 186 minecraft:barrier replace air
execute if entity @e[tag=mainAI,scores={bumpplace=0}] run fill 181 37 186 186 32 186 minecraft:barrier replace air
execute if entity @e[tag=mainAI,scores={bumpplace=0}] run fill 186 37 181 186 32 186 minecraft:barrier replace air
execute if entity @e[tag=mainAI,scores={bumpplace=0}] run fill 219 32 219 215 32 215 minecraft:yellow_concrete
execute if entity @e[tag=mainAI,scores={bumpplace=0}] run fill 185 32 185 181 32 181 minecraft:red_concrete
execute if entity @e[tag=mainAI,scores={bumpplace=0}] run fill 181 32 219 185 32 215 minecraft:lime_concrete
execute if entity @e[tag=mainAI,scores={bumpplace=0}] run fill 219 32 181 215 32 185 minecraft:light_blue_concrete

execute if entity @e[tag=mainAI,scores={bumpplace=1}] run fill 317 46 317 312 40 312 minecraft:barrier hollow
execute if entity @e[tag=mainAI,scores={bumpplace=1}] run fill 288 46 288 283 40 283 minecraft:barrier hollow
execute if entity @e[tag=mainAI,scores={bumpplace=1}] run fill 317 46 283 312 40 288 minecraft:barrier hollow
execute if entity @e[tag=mainAI,scores={bumpplace=1}] run fill 283 46 317 288 40 312 minecraft:barrier hollow

execute if entity @e[tag=mainAI,scores={bumpplace=2}] run fill 259 31 159 267 37 167 minecraft:barrier replace air
execute if entity @e[tag=mainAI,scores={bumpplace=2}] run fill 212 31 112 204 37 104 minecraft:barrier replace air
execute if entity @e[tag=mainAI,scores={bumpplace=2}] run fill 212 31 159 204 37 167 minecraft:barrier replace air
execute if entity @e[tag=mainAI,scores={bumpplace=2}] run fill 259 31 112 267 37 104 minecraft:barrier replace air
execute if entity @e[tag=mainAI,scores={bumpplace=2}] run fill 260 31 160 266 36 166 minecraft:air replace barrier
execute if entity @e[tag=mainAI,scores={bumpplace=2}] run fill 211 31 160 205 36 166 minecraft:air replace barrier
execute if entity @e[tag=mainAI,scores={bumpplace=2}] run fill 211 31 111 205 36 105 minecraft:air replace barrier
execute if entity @e[tag=mainAI,scores={bumpplace=2}] run fill 260 31 111 266 36 105 minecraft:air replace barrier

execute if entity @e[tag=mainAI,scores={bumpplace=0}] run spawnpoint @a 200 41 200
execute if entity @e[tag=mainAI,scores={bumpplace=1}] run spawnpoint @a 300 41 300
execute if entity @e[tag=mainAI,scores={bumpplace=2}] run spawnpoint @a 236 41 136

kill @e[tag=spawns]
execute if entity @e[tag=mainAI] as @a[team=,gamemode=adventure] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bump","solespawn","spawns"],CustomName:"{\"text\":\"solewin\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b}
execute if entity @e[tag=mainAI,scores={bumpai=1..2}] as @a[gamemode=adventure] run summon minecraft:armor_stand ~ ~ ~ {Tags:["bump","aispawn","spawns"],CustomName:"{\"text\":\"solewin\"}",CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,Silent:1b}

execute if entity @e[tag=mainAI,scores={bumpplace=0}] run spreadplayers 200 200 3 14 false @e[tag=spawns]
execute if entity @e[tag=mainAI,scores={bumpplace=0}] as @e[tag=spawns] at @s run fill ~1 37 ~1 ~-1 32 ~-1 minecraft:barrier replace air
execute if entity @e[tag=mainAI,scores={bumpplace=0}] as @e[tag=spawns] at @s run fill ~ 37 ~ ~ 33 ~ minecraft:air replace barrier
execute if entity @e[tag=mainAI,scores={bumpplace=0}] as @e[tag=spawns] at @s run fill ~ 32 ~ ~ 32 ~ minecraft:black_concrete replace air
execute if entity @e[tag=mainAI,scores={bumpplace=1}] run spreadplayers 300 300 3 17 under 40 false @e[tag=spawns]
execute if entity @e[tag=mainAI,scores={bumpplace=1}] as @e[tag=spawns] at @s run fill ~1 ~5 ~1 ~-1 ~ ~-1 minecraft:barrier replace air
execute if entity @e[tag=mainAI,scores={bumpplace=1}] as @e[tag=spawns] at @s run fill ~ ~4 ~ ~ ~ ~ minecraft:air replace barrier
execute if entity @e[tag=mainAI,scores={bumpplace=2}] run spreadplayers 236.0 136.0 5 28 under 35 false @e[tag=spawns]
execute if entity @e[tag=mainAI,scores={bumpplace=2}] as @e[tag=spawns] at @s run fill ~1 ~5 ~1 ~-1 ~ ~-1 minecraft:barrier replace air
execute if entity @e[tag=mainAI,scores={bumpplace=2}] as @e[tag=spawns] at @s run fill ~ ~4 ~ ~ ~ ~ minecraft:air replace barrier
#execute if entity @e[tag=mainAI,scores={bumpplace=1}] as @e[tag=spawns] at @s run fill ~ 32 ~ ~ 32 ~ minecraft:black_concrete replace air

execute if entity @e[tag=mainAI,scores={bumpplace=0}] run tp @e[team=yellow] 219 34 219
execute if entity @e[tag=mainAI,scores={bumpplace=0}] run tp @e[team=red] 181 34 181
execute if entity @e[tag=mainAI,scores={bumpplace=0}] run tp @e[team=green] 181 34 219
execute if entity @e[tag=mainAI,scores={bumpplace=0}] run tp @e[team=aqua] 219 34 181
execute if entity @e[tag=mainAI,scores={bumpplace=1}] run tp @e[team=yellow] 316 42 316
execute if entity @e[tag=mainAI,scores={bumpplace=1}] run tp @e[team=red] 284 42 284
execute if entity @e[tag=mainAI,scores={bumpplace=1}] run tp @e[team=green] 284 42 316
execute if entity @e[tag=mainAI,scores={bumpplace=1}] run tp @e[team=aqua] 316 42 284
execute if entity @e[tag=mainAI,scores={bumpplace=2}] run tp @e[team=yellow] 264 32 164
execute if entity @e[tag=mainAI,scores={bumpplace=2}] run tp @e[team=red] 207 32 107
execute if entity @e[tag=mainAI,scores={bumpplace=2}] run tp @e[team=green] 207 32 164
execute if entity @e[tag=mainAI,scores={bumpplace=2}] run tp @e[team=aqua] 264 32 107
execute if entity @e[tag=mainAI] as @e[tag=teampoint] at @s run forceload add ~ ~
execute if entity @e[tag=mainAI] as @e[tag=solespawn] at @s run forceload add ~ ~

difficulty hard
clear @a
xp set @a 0
effect give @a minecraft:saturation 999 0 true
effect give @a minecraft:regeneration 999 127 true
effect give @a minecraft:resistance 999 10 true
execute if entity @e[tag=mainAI,scores={bumpai=1..2}] run effect give @a minecraft:invisibility 999 0 true

function bump:set/tagset
scoreboard objectives remove check
scoreboard objectives remove kill
scoreboard objectives remove killstrider
scoreboard objectives remove used
scoreboard objectives remove striderm
scoreboard objectives remove stridercm
scoreboard objectives add check dummy "開始準備"
scoreboard objectives add kill playerKillCount "擊殺人數"
scoreboard objectives add killstrider minecraft.killed:minecraft.strider "虐殺熾足獸數"
scoreboard objectives add used minecraft.used:minecraft.warped_fungus_on_a_stick "使用扭曲蕈菇釣竿"
scoreboard objectives add striderm dummy "騎乘熾足獸的距離"
scoreboard objectives add stridercm minecraft.custom:minecraft.strider_one_cm
scoreboard players set @a deathCount 0
scoreboard players set @a kill 0
scoreboard players set @a killstrider 0
scoreboard players set @a used 0
scoreboard players set @a striderm 0
scoreboard players set @a stridercm 0
scoreboard players set @a check 0
scoreboard players set @e[tag=mainAI] startgame 1
scoreboard players set @e[tag=mainAI] endgame 0
scoreboard players set @e[tag=mainAI] win 0
scoreboard players reset 黃隊存活人數 bumplist
scoreboard players reset 紅隊存活人數 bumplist
scoreboard players reset 綠隊存活人數 bumplist
scoreboard players reset 藍隊存活人數 bumplist
scoreboard players reset 單排存活人數 bumplist
scoreboard players reset 電腦存活人數 bumplist
scoreboard players reset 擊殺最多人數 top_kill
scoreboard players reset 擊殺最多熾足獸 top_killstrider
scoreboard players reset 使用最多次扭曲蕈菇釣竿 top_used
scoreboard players reset 騎乘熾足獸最遠距離 top_striderm

kill @e[type=minecraft:strider,tag=!displaystrider]
execute as @a[team=yellow] at @e[tag=teamyellow] run summon minecraft:strider ~-1 ~ ~-1 {Tags:["bump","car","caryellow"],InLove:0,Age:999999999,Saddle:1,Attributes:[{Base:21.0d,Name:"minecraft:generic.max_health"}]}
execute as @a[team=red] at @e[tag=teamred] run summon minecraft:strider ~1 ~ ~1 {Tags:["bump","car","carred"],InLove:0,Age:999999999,Saddle:1,Attributes:[{Base:21.0d,Name:"minecraft:generic.max_health"}]}
execute as @a[team=green] at @e[tag=teamgreen] run summon minecraft:strider ~1 ~ ~-1 {Tags:["bump","car","cargreen"],InLove:0,Age:999999999,Saddle:1,Attributes:[{Base:21.0d,Name:"minecraft:generic.max_health"}]}
execute as @a[team=aqua] at @e[tag=teamaqua] run summon minecraft:strider ~-1 ~ ~1 {Tags:["bump","car","caraqua"],InLove:0,Age:999999999,Saddle:1,Attributes:[{Base:21.0d,Name:"minecraft:generic.max_health"}]}
execute if entity @e[tag=mainAI,scores={bumpplace=0}] as @e[tag=solespawn] at @s run summon minecraft:strider ~ 34 ~ {Tags:["bump","car"],InLove:0,Age:999999999,Saddle:1,Attributes:[{Base:21.0d,Name:"minecraft:generic.max_health"}]}
execute if entity @e[tag=mainAI,scores={bumpplace=1..2}] as @e[tag=solespawn] at @s run summon minecraft:strider ~ ~ ~ {Tags:["bump","car"],InLove:0,Age:999999999,Saddle:1,Attributes:[{Base:21.0d,Name:"minecraft:generic.max_health"}]}
#Count:1,id:golden_sword,tag:{Unbreakable:1b}
kill @e[tag=ai]
execute if entity @e[tag=mainAI,scores={bumpplace=0,bumpai=1}] as @e[tag=aispawn] at @s run summon minecraft:strider ~ 34 ~ {Tags:["bump","car","carai"],InLove:0,Age:999999999,Saddle:1,Attributes:[{Base:21.0d,Name:"minecraft:generic.max_health"}],Passengers:[{id:"minecraft:zombified_piglin",AngerTime:2147483647,IsBaby:0,Tags:["bump","ai1","ai"],Marker:1b,CustomNameVisible:0b,Silent:1b,PersistenceRequired:1b,Invisible:1b,HandItems:[{},{Count:1,id:warped_fungus_on_a_stick,tag:{Unbreakable:1b}}]}]}
execute if entity @e[tag=mainAI,scores={bumpplace=1..2,bumpai=1}] as @e[tag=aispawn] at @s run summon minecraft:strider ~ ~ ~ {Tags:["bump","car","carai"],InLove:0,Age:999999999,Saddle:1,Attributes:[{Base:21.0d,Name:"minecraft:generic.max_health"}],Passengers:[{id:"minecraft:zombified_piglin",AngerTime:2147483647,IsBaby:0,Tags:["bump","ai1","ai"],Marker:1b,CustomNameVisible:0b,Silent:1b,PersistenceRequired:1b,Invisible:1b,HandItems:[{},{Count:1,id:warped_fungus_on_a_stick,tag:{Unbreakable:1b}}]}]}
execute if entity @e[tag=mainAI,scores={bumpplace=0,bumpai=2}] as @e[tag=aispawn] at @s run summon minecraft:strider ~ 34 ~ {Tags:["bump","car","carai"],InLove:0,Age:999999999,Saddle:1,Attributes:[{Base:21.0d,Name:"minecraft:generic.max_health"}],Passengers:[{id:"minecraft:zombified_piglin",AngerTime:2147483647,IsBaby:0,Tags:["bump","ai2","ai"],Marker:1b,CustomNameVisible:0b,Silent:1b,PersistenceRequired:1b,HandItems:[{},{Count:1,id:warped_fungus_on_a_stick,tag:{Unbreakable:1b}}]}]}
execute if entity @e[tag=mainAI,scores={bumpplace=1..2,bumpai=2}] as @e[tag=aispawn] at @s run summon minecraft:strider ~ ~ ~ {Tags:["bump","car","carai"],InLove:0,Age:999999999,Saddle:1,Attributes:[{Base:21.0d,Name:"minecraft:generic.max_health"}],Passengers:[{id:"minecraft:zombified_piglin",AngerTime:2147483647,IsBaby:0,Tags:["bump","ai2","ai"],Marker:1b,CustomNameVisible:0b,Silent:1b,PersistenceRequired:1b,HandItems:[{},{Count:1,id:warped_fungus_on_a_stick,tag:{Unbreakable:1b}}]}]}
team join yellow @e[tag=caryellow]
team join red @e[tag=carred]
team join green @e[tag=cargreen]
team join aqua @e[tag=caraqua]
team join ai @e[tag=carai]
execute if entity @e[tag=mainAI,scores={bumpai=1..2}] run effect give @e[tag=ai] minecraft:invisibility 999 0 true
#execute if entity @e[tag=mainAI,scores={bumpai=1..2}] run effect give @e[tag=ai] minecraft:fire_resistance 999 0 true
execute if entity @e[tag=mainAI,scores={bumpai=1..2}] as @e[tag=ai] run attribute @s minecraft:generic.follow_range base set 2048
execute if entity @e[tag=mainAI,scores={bumpai=1}] as @e[tag=ai] run attribute @s minecraft:generic.attack_damage base set 0.5
execute if entity @e[tag=mainAI,scores={bumpai=2}] as @e[tag=ai] run attribute @s minecraft:generic.attack_damage base set 0

execute as @e[type=minecraft:strider,tag=!displaystrider] store result entity @s Attributes[{Name:"generic.max_health"}].Base double 1 run scoreboard players get @e[tag=mainAI,limit=1] bumphealth
execute as @e[type=minecraft:strider,tag=!displaystrider] store result entity @s Health float 1 run scoreboard players get @e[tag=mainAI,limit=1] bumphealth
#execute as @e[tag=ai] store result entity @s Health float 1 run scoreboard players get @e[tag=mainAI,limit=1] bumphealth
function bump:set/healthset
execute if entity @e[tag=mainAI,scores={bumpplace=0}] as @e[type=minecraft:strider,tag=!displaystrider] store result entity @s Attributes[{Name:"generic.movement_speed"}].Base double 0.01 run scoreboard players get @e[tag=mainAI,limit=1] bumpspeed
execute if entity @e[tag=mainAI,scores={bumpplace=1..2}] as @e[type=minecraft:strider,tag=!displaystrider] store result entity @s Attributes[{Name:"generic.movement_speed"}].Base double 0.05 run scoreboard players get @e[tag=mainAI,limit=1] bumpspeed
execute if entity @e[tag=mainAI,scores={bumpplace=0}] as @e[type=minecraft:strider,tag=!displaystrider] store result entity @s[tag=carai] Attributes[{Name:"generic.movement_speed"}].Base double 0.01 run scoreboard players get @e[tag=mainAI,limit=1] bumpspeed
execute if entity @e[tag=mainAI,scores={bumpplace=1..2}] as @e[type=minecraft:strider,tag=!displaystrider] store result entity @s[tag=carai] Attributes[{Name:"generic.movement_speed"}].Base double 0.0475 run scoreboard players get @e[tag=mainAI,limit=1] bumpspeed
execute if entity @e[tag=mainAI,scores={bumpmode=1}] as @e[tag=car] run data merge entity @s {Invulnerable:1}
#effect give @e[type=minecraft:strider] minecraft:regeneration 99 127 true

execute as @a[gamemode=adventure] run give @s minecraft:cooked_beef 7
execute as @a[gamemode=adventure] run give @s minecraft:warped_fungus_on_a_stick{Unbreakable:1}
execute if entity @e[tag=mainAI,scores={bumpsword=0}] as @a[gamemode=adventure] run give @s golden_sword{Unbreakable:1}
execute if entity @e[tag=mainAI,scores={bumpsword=1}] as @a[gamemode=adventure] run give @s netherite_sword{Unbreakable:1}
execute if entity @e[tag=mainAI,scores={bumpsword=2}] as @a[gamemode=adventure] run give @s bow{Unbreakable:1,Enchantments:[{id:infinity,lvl:1}]}
execute if entity @e[tag=mainAI,scores={bumpsword=2}] as @a[gamemode=adventure] run give @s arrow
execute if entity @e[tag=mainAI,scores={bumpsword=3}] as @a[gamemode=adventure] run give @s trident{Unbreakable:1,Enchantments:[{id:loyalty,lvl:5}]}
execute if entity @e[tag=mainAI,scores={bumpsword=4}] as @a[gamemode=adventure] run give @s minecraft:splash_potion{CustomPotionColor:16733695,CustomPotionEffects:[{Id:7,Amplifier:0,Duration:20}]} 1
execute if entity @e[tag=mainAI,scores={bumpsword=5}] as @a[gamemode=adventure] run give @s minecraft:lingering_potion{CustomPotionColor:16733695,CustomPotionEffects:[{Id:7,Amplifier:0,Duration:140}]} 1
execute if entity @e[tag=mainAI,scores={bumpsword=6}] as @a[gamemode=adventure] run give @s wooden_axe{Unbreakable:1}
execute if entity @e[tag=mainAI,scores={bumpsword=7}] as @a[gamemode=adventure] run give @s iron_axe{Unbreakable:1}
execute if entity @e[tag=mainAI,scores={bumpsword=8}] as @a[gamemode=adventure] run give @s crossbow{Unbreakable:1,Enchantments:[{id:multishot,lvl:3},{id:quick_charge,lvl:2}]}
#
execute if entity @e[tag=mainAI,scores={bumpai=1,bumpsword=0}] as @e[tag=ai] run data merge entity @s {HandItems:[{Count:1,id:golden_sword,tag:{Unbreakable:1b}},{Count:1,id:warped_fungus_on_a_stick,tag:{Unbreakable:1b}}]}
execute if entity @e[tag=mainAI,scores={bumpai=1,bumpsword=1}] as @e[tag=ai] run data merge entity @s {HandItems:[{Count:1,id:netherite_sword,tag:{Unbreakable:1b}},{Count:1,id:warped_fungus_on_a_stick,tag:{Unbreakable:1b}}]}
#execute if entity @e[tag=mainAI,scores={bumpai=1,bumpsword=2}] as @e[tag=ai] run data merge entity @s {HandItems:[{Count:1,id:bow,tag:{Unbreakable:1b,Enchantments:[{id:infinity,lvl:1}]}},{Count:1,id:warped_fungus_on_a_stick,tag:{Unbreakable:1b}}]}
#execute if entity @e[tag=mainAI,scores={bumpai=1,bumpsword=2}] as @e[tag=ai] run give @s arrow
#execute if entity @e[tag=mainAI,scores={bumpai=1,bumpsword=3}] as @e[tag=ai] run data merge entity @s {HandItems:[{Count:1,id:trident,tag:{Unbreakable:1b,Enchantments:[{id:loyalty,lvl:5}]}},{Count:1,id:warped_fungus_on_a_stick,tag:{Unbreakable:1b}}]}
execute if entity @e[tag=mainAI,scores={bumpai=1,bumpsword=6}] as @e[tag=ai] run data merge entity @s {HandItems:[{Count:1,id:wooden_axe,tag:{Unbreakable:1b}},{Count:1,id:warped_fungus_on_a_stick,tag:{Unbreakable:1b}}]}
execute if entity @e[tag=mainAI,scores={bumpai=1,bumpsword=7}] as @e[tag=ai] run data merge entity @s {HandItems:[{Count:1,id:iron_axe,tag:{Unbreakable:1b}},{Count:1,id:warped_fungus_on_a_stick,tag:{Unbreakable:1b}}]}
#execute if entity @e[tag=mainAI,scores={bumpai=1,bumpsword=8}] as @e[tag=ai] run data merge entity @s {HandItems:[{Count:1,id:crossbow,tag:{Unbreakable:1b,Enchantments:[{id:multishot,lvl:3},{id:quick_charge,lvl:2}]}},{Count:1,id:warped_fungus_on_a_stick,tag:{Unbreakable:1b}}]}
#
execute if entity @e[tag=mainAI,scores={bumparmor=1}] as @a[gamemode=adventure] run give @s minecraft:golden_boots
execute if entity @e[tag=mainAI,scores={bumparmor=1}] as @a[gamemode=adventure] run give @s minecraft:golden_chestplate
execute if entity @e[tag=mainAI,scores={bumparmor=1}] as @a[gamemode=adventure] run give @s minecraft:golden_helmet
execute if entity @e[tag=mainAI,scores={bumparmor=1}] as @a[gamemode=adventure] run give @s minecraft:golden_leggings

execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=] run give @s minecraft:leather_boots{display:{color:16777215}}
execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=] run give @s minecraft:leather_chestplate{display:{color:16777215}}
execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=] run give @s minecraft:leather_helmet{display:{color:16777215}}
execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=] run give @s minecraft:leather_leggings{display:{color:16777215}}

execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=yellow] run give @s minecraft:leather_boots{display:{color:16777045}}
execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=yellow] run give @s minecraft:leather_chestplate{display:{color:16777045}}
execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=yellow] run give @s minecraft:leather_helmet{display:{color:16777045}}
execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=yellow] run give @s minecraft:leather_leggings{display:{color:16777045}}

execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=red] run give @s minecraft:leather_boots{display:{color:16733525}}
execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=red] run give @s minecraft:leather_chestplate{display:{color:16733525}}
execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=red] run give @s minecraft:leather_helmet{display:{color:16733525}}
execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=red] run give @s minecraft:leather_leggings{display:{color:16733525}}

execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=green] run give @s minecraft:leather_boots{display:{color:5635925}}
execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=green] run give @s minecraft:leather_chestplate{display:{color:5635925}}
execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=green] run give @s minecraft:leather_helmet{display:{color:5635925}}
execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=green] run give @s minecraft:leather_leggings{display:{color:5635925}}

execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=aqua] run give @s minecraft:leather_boots{display:{color:5636095}}
execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=aqua] run give @s minecraft:leather_chestplate{display:{color:5636095}}
execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=aqua] run give @s minecraft:leather_helmet{display:{color:5636095}}
execute if entity @e[tag=mainAI,scores={bumparmor=2}] as @a[gamemode=adventure,team=aqua] run give @s minecraft:leather_leggings{display:{color:5636095}}

execute if entity @e[tag=mainAI,scores={bumptool=0}] as @a[gamemode=adventure] run give @s minecraft:stick{Unbreakable:1,Enchantments:[{id:knockback,lvl:99}]}
execute if entity @e[tag=mainAI,scores={bumptool=1}] as @a[gamemode=adventure] run give @s minecraft:shield{Unbreakable:1}
execute if entity @e[tag=mainAI,scores={bumptool=2}] as @a[gamemode=adventure] run give @s minecraft:totem_of_undying
execute if entity @e[tag=mainAI,scores={bumptool=3}] as @a[gamemode=adventure] run give @s minecraft:fishing_rod{Unbreakable:1}

execute if entity @e[tag=mainAI,scores={bumpai=1..2}] as @e[tag=ai] at @s run summon minecraft:snowball ~ ~2.5 ~ {Silent:1,Invisible:1,PersistenceRequired:1}
tellraw @a ["",{"text":"\n\n「 準備時間 」 ","bold":true,"color":"white"},{"text":"所有人騎上熾足獸， 才正式開始遊戲","bold":true,"color":"gold"}]
scoreboard objectives setdisplay sidebar check