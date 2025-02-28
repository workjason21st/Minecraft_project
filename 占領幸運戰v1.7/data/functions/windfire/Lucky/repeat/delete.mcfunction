scoreboard players tag @e[type=Item] add stonesuit {Item:{id:"minecraft:barrier"}}
execute @e[tag=stonesuit] ~ ~ ~ scoreboard players tag @e[type=Item,r=1] add barrier_chest {Item:{id:"minecraft:chest"}}
kill @e[tag=barrier_chest]
kill @e[tag=stonesuit]
scoreboard players tag @e[type=Item] add redstone_lamp {Item:{id:"minecraft:redstone_lamp"}}
kill @e[tag=redstone_lamp]
scoreboard players tag @e[type=Item] add written_book {Item:{id:"minecraft:written_book"}}
kill @e[tag=written_book]
#scoreboard players tag @e[type=Item] add killarmor_stand {Item:{id:"minecraft:armor_stand"}}
#execute @e[tag=killarmor_stand] ~ ~ ~ function windfire:lucky/killguard
#kill @e[tag=killarmor_stand]

#==========刪除僵屍附屬品======
scoreboard players tag @e[type=Item] add rotten_flesh {Item:{id:"minecraft:rotten_flesh"}}
kill @e[tag=rotten_flesh]
scoreboard players tag @e[type=Item] add carrot {Item:{id:"minecraft:carrot"}}
kill @e[tag=carrot]
scoreboard players tag @e[type=Item] add cactus {Item:{id:"minecraft:cactus"}}
kill @e[tag=cactus]
#==========刪除蜘蛛附屬品======
scoreboard players tag @e[type=Item] add spider_eye {Item:{id:"minecraft:spider_eye"}}
kill @e[tag=spider_eye]
#----------刪除骨頭、--
scoreboard players tag @e[type=Item] add bone {Item:{id:"minecraft:bone"}}
kill @e[tag=bone]
#----------刪除熔岩球、烈焰粉、生雞肉、雞
scoreboard players tag @e[type=Item] add magma_cream {Item:{id:"minecraft:magma_cream"}}
kill @e[tag=magma_cream]
scoreboard players tag @e[type=Item] add blaze_powder {Item:{id:"minecraft:blaze_powder"}}
kill @e[tag=blaze_powder]

scoreboard players tag @e[type=Item] add chicken {Item:{id:"minecraft:chicken"}}
kill @e[tag=chicken]
kill @e[type=chicken]
#----------刪除兔子肉、皮、腳
scoreboard players tag @e[type=Item] add rabbit {Item:{id:"minecraft:rabbit"}}
kill @e[tag=rabbit]
scoreboard players tag @e[type=Item] add rabbit_hide {Item:{id:"minecraft:rabbit_hide"}}
kill @e[tag=rabbit_hide]
scoreboard players tag @e[type=Item] add rabbit_foot {Item:{id:"minecraft:rabbit_foot"}}
kill @e[tag=rabbit_foot]
#----------刪除道具之產物
scoreboard players tag @e[type=Item] add fence {Item:{id:"minecraft:fence"}}
kill @e[tag=fence]
scoreboard players tag @e[type=Item] add Chocolate {Item:{id:"minecraft:dye",Damage:3s,tag:{display:{Lore:["§8野怪隨機掉落物","§8掉落機率０.１%","§7屬於隱藏特殊道具","§7據說是巧克家族的聖物","","§2放置副手可以增加近身攻擊力","§2但是有緩速、飢餓等副作用","§c以上效果死掉才會消失","§c道具一丟掉就會消失","§c服用前請詳閱公開說明書"]}}}}
kill @e[tag=Chocolate]
scoreboard players tag @e[type=Item] add bamboo {Item:{id:"minecraft:reeds",tag:{display:{Lore:["§8寶箱隨機生成物","§8生成機率０.１%","§7屬於隱藏特殊道具","§7聽聞竹林教有萬人教徒","","§2放置主手能增加自身走路的速度","§2和使敵方攻速降低、緩掘","§2但脫離竹子超過11秒有噁心副作用","§c以上效果死掉才會消失","§c道具一丟掉就會消失","§c拿取前請詳閱竹林教義經"]}}}}
kill @e[tag=bamboo]
scoreboard players tag @e[type=Item] add golden_carrot {Item:{id:"minecraft:golden_carrot",tag:{display:{Lore:["§8野怪隨機掉落物","§8掉落機率０.１%","§7屬於隱藏特殊道具","§7天說要貢獻上萬根才會出現","","§2放置副手能召喚兔王","§2牠的十格內能使同隊跳躍提升","§2五格內會使敵隊中毒","§c範圍效果兔王死掉才會消失","§c道具一丟掉就會消失","§c使用前請詳閱兔王召喚書"]}}}}
kill @e[tag=golden_carrot]
#scoreboard players tag @e[type=Item] add kouki_leggings {Item:{id:"minecraft:golden_leggings",tag:{ench:[{id:10,lvl:1}]}}}
#kill @e[tag=kouki_leggings]
