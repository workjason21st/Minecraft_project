execute unless score basis rgldemo matches 1.. run fill 105 52 120 109 56 120 minecraft:barrier destroy

execute unless score basis rgldemo matches 1.. run scoreboard players set basis rgldemo 301
#顯示
execute if score basis rgldemo matches 300 run summon minecraft:area_effect_cloud 107 51 119 {Tags:["rgl","lobby0","basis","explain"],CustomName:"{\"text\":\"壞孩子可以在任意距離下丟出紅燈使用，來使自己無敵\",\"color\":\"red\"}",CustomNameVisible:1b,Duration:100}
execute if score basis rgldemo matches 300 run summon minecraft:area_effect_cloud 107 50.5 119 {Tags:["rgl","lobby0","basis","explain"],CustomName:"{\"text\":\"但是會讓隊友發光1秒，且自己會持續發光和無法移動\",\"color\":\"red\"}",CustomNameVisible:1b,Duration:100}
execute if score basis rgldemo matches 200 run summon minecraft:area_effect_cloud 107 51 119 {Tags:["rgl","lobby0","basis","explain"],CustomName:"{\"text\":\"其他壞孩子在距離同伴3格內可以丟出綠燈使用救其他孩子\",\"color\":\"green\"}",CustomNameVisible:1b,Duration:100}
execute if score basis rgldemo matches 100 run summon minecraft:area_effect_cloud 107 51 119 {Tags:["rgl","lobby0","basis","explain"],CustomName:"{\"text\":\"而鬼要在時間到前將孩子殺光或讓孩子們全部紅燈\",\"color\":\"light_purple\"}",CustomNameVisible:1b,Duration:100}
#鬼 孩 107.5 122.5
execute if score basis rgldemo matches 301 run summon armor_stand 105.5 52.00 125.0 {Tags:["rgl","lobby0","basis","Ghost"],Rotation:[-128f],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b},{id:"leather_leggings",Count:1b},{id:"leather_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"WindFire_tw"}}],HandItems:[{id:"golden_sword",Count:1b},{}],CustomName:"{\"text\":\"鬼\",\"color\":\"yellow\",\"bold\":\"true\"}",CustomNameVisible:1b,Pose:{Head:[8f,0f,0f],LeftLeg:[10f,0f,0f],RightLeg:[343f,0f,0f],LeftArm:[247f,0f,0f],RightArm:[0.1f,0f,0f]}}
execute if score basis rgldemo matches 301 run summon armor_stand 108.5 52.00 122.0 {Tags:["rgl","lobby0","basis","Childs","Child"],Rotation:[-160f],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b},{id:"leather_leggings",Count:1b},{id:"leather_chestplate",Count:1b},{id:"skeleton_skull",Count:1b}],HandItems:[{id:"red_concrete",Count:1b},{}],CustomName:"{\"text\":\"壞孩子\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:1b,Pose:{Head:[8f,0f,0f],LeftLeg:[10f,0f,0f],RightLeg:[343f,0f,0f],LeftArm:[247f,-40f,0f],RightArm:[0f,0f,0f]}}
execute if score basis rgldemo matches 230 run summon item 108.8 52.50 121.7 {Tags:["rgl","lobby0","basis","ITEM"],Age:5990,PickupDelay:-9999,Invulnerable:1b,Item:{id:"minecraft:red_concrete",Count:1b}}
execute if score basis rgldemo matches 230 run summon zombie 108.5 52.00 122.0 {Tags:["rgl","lobby0","basis","redglow"],Team:badred,Rotation:[-160f],NoAI:1b,NoGravity:0b,IsBaby:1b,ArmorItems:[{}, {}, {}, {Count:1, id:red_banner}],ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0},{Id:24,Amplifier:0,Duration:999999,ShowParticles:0}],Invulnerable:1b,PersistenceRequired:1b,Silent:1b}

execute if score basis rgldemo matches 210 run summon armor_stand 109.0 53.50 125.5 {Tags:["rgl","lobby0","basis","Childs","Child2"],Rotation:[180f],Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b},{id:"leather_leggings",Count:1b},{id:"leather_chestplate",Count:1b},{id:"skeleton_skull",Count:1b}],HandItems:[{id:"red_concrete",Count:1b},{}],CustomName:"{\"text\":\"壞孩子\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:1b,Pose:{Head:[350f,0f,0f],LeftLeg:[352f,0f,0f],RightLeg:[16f,0f,0f],LeftArm:[111f,-40f,0f],RightArm:[318f,0f,0f]}}

execute if score basis rgldemo matches 100 run summon item 108.7 53.50 122.0 {Tags:["rgl","lobby0","basis","ITEM"],Age:5990,PickupDelay:-9999,Invulnerable:1b,Item:{id:"minecraft:lime_concrete",Count:1b}}
#行動
#鬼抓人 人紅燈 同伴救
#execute if score basis rgldemo matches 136 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Rotation[0] set value 170f
execute if score basis rgldemo matches 290 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Motion[1] set value 0.25d
execute if score basis rgldemo matches 270 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Motion[1] set value 0.25d
execute if score basis rgldemo matches 250 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Motion[1] set value 0.25d
execute if score basis rgldemo matches 230 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Motion[1] set value 0.25d
execute if score basis rgldemo matches 220..300 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Motion[0] set value 0.025d
execute if score basis rgldemo matches 220..300 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Motion[2] set value -0.03125d
execute if score basis rgldemo matches 220 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Rotation[0] set value 100f
#
execute if score basis rgldemo matches 190 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Motion[1] set value 0.25d
execute if score basis rgldemo matches 170 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Motion[1] set value 0.25d
execute if score basis rgldemo matches 160..200 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Motion[0] set value -0.07d
execute if score basis rgldemo matches 160..190 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Motion[2] set value -0.025d
execute if score basis rgldemo matches 165 as @e[limit=1,tag=basis,tag=Ghost] at @s if block ^ ^ ^0.5 minecraft:light_blue_concrete run data merge entity @s {Invisible:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
#
execute if score basis rgldemo matches 200 run data modify entity @e[limit=1,tag=basis,tag=Child2] Motion[1] set value 0.25d
execute if score basis rgldemo matches 180 run data modify entity @e[limit=1,tag=basis,tag=Child2] Motion[1] set value 0.25d
execute if score basis rgldemo matches 160 run data modify entity @e[limit=1,tag=basis,tag=Child2] Motion[1] set value 0.25d
execute if score basis rgldemo matches 140 run data modify entity @e[limit=1,tag=basis,tag=Child2] Motion[1] set value 0.25d
execute if score basis rgldemo matches 120 run data modify entity @e[limit=1,tag=basis,tag=Child2] Motion[1] set value 0.25d
execute if score basis rgldemo matches 100..200 run data modify entity @e[limit=1,tag=basis,tag=Child2] Motion[0] set value -0.0001d
execute if score basis rgldemo matches 0..200 run data modify entity @e[limit=1,tag=basis,tag=Child2] Motion[2] set value -0.025d
execute if score basis rgldemo matches 0..100 run data modify entity @e[limit=1,tag=basis,tag=Child] Motion[2] set value -0.025d
execute if score basis rgldemo matches 0..200 as @e[limit=1,tag=basis,tag=Childs] at @s if block ^ ^ ^0.5 minecraft:barrier run kill @s
execute if score basis rgldemo matches 0..100 as @e[limit=1,tag=basis,tag=Childs] at @s if block ^ ^ ^0.5 minecraft:barrier run kill @s
#
execute if score basis rgldemo matches 280 run item replace entity @e[limit=1,tag=basis,tag=Child] weapon.mainhand with lime_concrete
execute if score basis rgldemo matches 270 run item replace entity @e[limit=1,tag=basis,tag=Child] weapon.mainhand with lime_concrete
execute if score basis rgldemo matches 260 run item replace entity @e[limit=1,tag=basis,tag=Child] weapon.mainhand with air
execute if score basis rgldemo matches 240 run item replace entity @e[limit=1,tag=basis,tag=Child] weapon.mainhand with red_concrete
execute if score basis rgldemo matches 230 run item replace entity @e[limit=1,tag=basis,tag=Child] weapon.mainhand with air
execute if score basis rgldemo matches 230 run effect give @e[tag=redglow] minecraft:glowing 7 0 true
execute if score basis rgldemo matches 180 run item replace entity @e[limit=1,tag=basis,tag=Child2] weapon.mainhand with lime_concrete
execute if score basis rgldemo matches 170 run item replace entity @e[limit=1,tag=basis,tag=Child2] weapon.mainhand with red_concrete
execute if score basis rgldemo matches 160 run item replace entity @e[limit=1,tag=basis,tag=Child2] weapon.mainhand with air
execute if score basis rgldemo matches 140 run item replace entity @e[limit=1,tag=basis,tag=Child2] weapon.mainhand with lime_concrete
execute if score basis rgldemo matches 100 run item replace entity @e[limit=1,tag=basis,tag=Child2] weapon.mainhand with air
execute if score basis rgldemo matches 99 run tp @e[tag=basis,tag=redglow] ~ -70 ~
execute if score basis rgldemo matches 99 run kill @e[tag=basis,tag=redglow]
#
execute if score basis rgldemo matches 80 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Motion[1] set value 0.25d
execute if score basis rgldemo matches 60 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Motion[1] set value 0.25d
execute if score basis rgldemo matches 40 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Motion[1] set value 0.25d
execute if score basis rgldemo matches 20 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Motion[1] set value 0.25d
execute if score basis rgldemo matches 90 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Rotation[0] set value -100f
execute if score basis rgldemo matches 90 run data merge entity @e[limit=1,tag=basis,tag=Ghost] {Invisible:0b,CustomNameVisible:1b,ArmorItems:[{id:"leather_boots",Count:1b},{id:"leather_leggings",Count:1b},{id:"leather_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:"WindFire_tw"}}],HandItems:[{id:"golden_sword",Count:1b},{}]}
execute if score basis rgldemo matches 0..90 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Motion[0] set value 0.05d
execute if score basis rgldemo matches 60..90 run data modify entity @e[limit=1,tag=basis,tag=Ghost] Motion[2] set value -0.0005d

scoreboard players remove basis rgldemo 1
execute if score basis rgldemo matches 1.. run schedule function rgl:lobby/demo/basis 1t
execute if score basis rgldemo matches 0 run kill @e[tag=basis]
execute if score basis rgldemo matches 0 run fill 105 52 120 109 56 120 minecraft:purple_concrete
execute if score basis rgldemo matches 0 run setblock 107 52 119 minecraft:jungle_wall_sign[facing=north]
execute if score basis rgldemo matches 0 run data merge block 107 52 119 {Text2: "{\"text\":\"使用紅綠燈說明\",\"color\":\"gold\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function rgl:lobby/demo/basis\"}}",Text4: "{\"text\":\"(點擊查看)\"}"}
