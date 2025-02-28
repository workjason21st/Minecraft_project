#----------商店回收---------
execute @e[type=item] ~ ~ ~ detect ~-1 ~ ~ minecraft:lit_pumpkin 1 scoreboard players tag @s add recycle
execute @e[type=item] ~ ~ ~ detect ~1 ~ ~ minecraft:lit_pumpkin 3 scoreboard players tag @s add recycle
#----------商店道具---------
scoreboard players tag @e[type=Item,x=980,dx=52,z=939,dz=122,y=100,dy=101] add fire_charge {OnGround:1b,Item:{id:"minecraft:fire_charge",Count:1b}}

scoreboard players tag @e[type=Item,x=980,dx=52,z=939,dz=122,y=100,dy=101] add firework_charge {OnGround:1b,Item:{id:"minecraft:firework_charge",Count:1b}}

scoreboard players tag @e[type=Item,x=980,dx=52,z=939,dz=122,y=100,dy=101] add blaze_rod {OnGround:1b,Item:{id:"minecraft:blaze_rod",Count:1b}}

scoreboard players tag @e[type=Item,x=980,dx=52,z=939,dz=122,y=100,dy=101] add glass {Item:{id:"minecraft:glass",Count:1b}}
#----------其他轉換---------
scoreboard players tag @e[type=Item] add seeds {Item:{id:"minecraft:wheat_seeds"}}

scoreboard players tag @e[type=Item] add fish {Item:{id:"minecraft:fish"}}

scoreboard players tag @e[type=Item] add sapling {OnGround:1b,Item:{id:"minecraft:sapling",Count:1b}}

scoreboard players tag @e[type=Item] add potato {Item:{id:"minecraft:potato"}}

scoreboard players tag @e[type=Item] add zombies {OnGround:1b,Item:{id:"minecraft:spawn_egg",tag:{EntityTag:{id:"minecraft:zombie"}}}}
#------------mineral----------------------------------
execute @a[score_mining_stones_min=1] ~ ~ ~ execute @e[tag=!cobblestone] ~ ~ ~ scoreboard players tag @s[type=item,tag=!mineral,tag=!coal,tag=!stone,tag=!cobblestone,tag=!iron,tag=!gold,tag=!lapis,tag=!redstone,tag=!diamond,tag=!ore] add mineral {Item:{id:"minecraft:cobblestone"}}
execute @e[type=item,tag=mineral] ~ ~ ~ entitydata @e[type=item,tag=!coal,tag=!iron,tag=!gold,tag=!lapis,tag=!redstone,tag=!diamond,tag=!ore,tag=mineral,tag=!stone,tag=!cobblestone,c=1] {Tags:[mineral],PickupDelay:9999s}
execute @a[score_mining_stones_min=1] ~ ~ ~ scoreboard players tag @s add mininger
execute @a[tag=mininger] ~ ~ ~ scoreboard players set @s mining_stones 0
execute @a[tag=mininger] ~ ~ ~ scoreboard players tag @s remove mininger
#------------star----------------
scoreboard players tag @e[type=Item] add absorption {Item:{id:"minecraft:concrete",Damage:15s}}
scoreboard players tag @e[type=Item,tag=!darktheys] add darkthey {Item:{id:"minecraft:dye",Damage:0s}}
scoreboard players tag @e[type=Item,tag=!damagedoors] add damagedoor {Item:{id:"minecraft:end_portal_frame"}}
scoreboard players tag @e[type=Item] add double_plant {Age:1s,Item:{id:"minecraft:double_plant"}}
scoreboard players tag @e[type=Item,tag=!bowls] add bowl {Item:{id:"minecraft:bowl"}}
scoreboard players tag @e[type=Item] add glass_pane {Age:2s,Item:{id:"minecraft:glass_pane"}}

#------------刪除----------------
scoreboard players tag @e[type=Item] add written_book {Item:{id:"minecraft:written_book"}}
scoreboard players tag @e[type=Item] add stonesuit {Item:{id:"minecraft:barrier"}}
scoreboard players tag @e[type=Item] add redstone_lamp {Item:{id:"minecraft:redstone_lamp"}}
scoreboard players tag @e[type=Item] add rotten_flesh {Item:{id:"minecraft:rotten_flesh"}}
scoreboard players tag @e[type=Item] add carrot {Item:{id:"minecraft:carrot"}}
scoreboard players tag @e[type=Item] add cactus {Item:{id:"minecraft:cactus"}}
scoreboard players tag @e[type=Item] add spider_eye {Item:{id:"minecraft:spider_eye"}}
scoreboard players tag @e[type=Item] add bone {Item:{id:"minecraft:bone"}}
scoreboard players tag @e[type=Item] add magma_cream {Item:{id:"minecraft:magma_cream"}}
scoreboard players tag @e[type=Item] add blaze_powder {Item:{id:"minecraft:blaze_powder"}}
scoreboard players tag @e[type=Item] add chicken {Item:{id:"minecraft:chicken"}}
scoreboard players tag @e[type=Item] add rabbit {Item:{id:"minecraft:rabbit"}}
scoreboard players tag @e[type=Item] add rabbit_hide {Item:{id:"minecraft:rabbit_hide"}}
scoreboard players tag @e[type=Item] add rabbit_foot {Item:{id:"minecraft:rabbit_foot"}}
scoreboard players tag @e[type=Item] add fence {Item:{id:"minecraft:fence"}}
scoreboard players tag @e[type=Item] add Chocolate {Item:{id:"minecraft:dye",Damage:3s,tag:{display:{Lore:["§8野怪隨機掉落物","§8掉落機率０.１%","§7屬於隱藏特殊道具","§7據說是巧克家族的聖物","","§2放置副手可以增加近身攻擊力","§2但是有緩速、飢餓等副作用","§c以上效果死掉才會消失","§c道具一丟掉就會消失","§c服用前請詳閱公開說明書"]}}}}
scoreboard players tag @e[type=Item] add bamboo {Item:{id:"minecraft:reeds",tag:{display:{Lore:["§8寶箱隨機生成物","§8生成機率０.１%","§7屬於隱藏特殊道具","§7聽聞竹林教有萬人教徒","","§2放置主手能增加自身走路的速度","§2和使敵方攻速降低、緩掘","§2但脫離竹子超過11秒有噁心副作用","§c以上效果死掉才會消失","§c道具一丟掉就會消失","§c拿取前請詳閱竹林教義經"]}}}}
scoreboard players tag @e[type=Item] add golden_carrot {Item:{id:"minecraft:golden_carrot",tag:{display:{Lore:["§8野怪隨機掉落物","§8掉落機率０.１%","§7屬於隱藏特殊道具","§7天說要貢獻上萬根才會出現","","§2放置副手能召喚兔王","§2牠的十格內能使同隊跳躍提升","§2五格內會使敵隊中毒","§c範圍效果兔王死掉才會消失","§c道具一丟掉就會消失","§c使用前請詳閱兔王召喚書"]}}}}