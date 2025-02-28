#----------隱藏道具轉換---------
#Hi_Chocolate
scoreboard players tag @a add convert-Chocolate {SelectedItem:{id:"minecraft:dye",Damage:3s,Count:1b,tag:{display:{Lore:["§c拿到主手，開啟功能"]}}}}
execute @a[tag=convert-Chocolate] ~ ~ ~ replaceitem entity @s[tag=convert-Chocolate] slot.weapon.mainhand minecraft:air
execute @a[tag=convert-Chocolate] ~ ~ ~ give @s[tag=convert-Chocolate] dye 1 3 {display:{Name:"§d巧克力的神秘豆子",Lore:["§8野怪隨機掉落物","§8掉落機率０.７%","§7屬於隱藏特殊道具","§7據說是巧克家族的聖物","","§2放置副手可以增加近身攻擊力","§2但是有緩掘、飢餓等副作用","§c以上效果死掉才會消失","§c服用前請詳閱公開說明書"]}}
execute @a[tag=convert-Chocolate] ~ ~ ~ tellraw @a ["",{"text":"\n"},{"text":"【工商時間】","color":"light_purple","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"有人獲得隱藏道具觸發，\n(因為此實況主促成此道具，\n因此幫此實況主工商一下，\n經過實況主同意)"}]}}},{"text":"\n§l巧克力頻道以帶給觀看者歡笑為主軸。\n§l正常來說每天至少兩部影片，\n§l實況以Minecraft為主。\n§l玩遊戲常捉弄他人，\n§l但是卻越玩弄關係越好。","color":"dark_green","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCgL6J6oL8F69vm-GcPScmwg"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"???????(點擊)"}]}}},{"text":"\n§l如果你喜歡搞笑、嗆人、幼稚的風格，\n就點此段文字訂閱吧！","color":"gold","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCgL6J6oL8F69vm-GcPScmwg"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"???????(點擊)"}]}}},{"text":"\n","color":"white"}]
execute @a[tag=convert-Chocolate] ~ ~ ~ scoreboard players tag @s[tag=convert-Chocolate] remove convert-Chocolate

#Tuan_Tuan
scoreboard players tag @a add convert-bamboo {SelectedItem:{id:"minecraft:reeds",Count:1b,tag:{display:{Lore:["§8寶箱隨機生成物","§8生成機率０.１%","§7屬於隱藏特殊道具","§7聽聞竹林教有萬人教徒","","§2放置主手能增加自身走路的速度","§2和使敵方攻速降低、緩掘","§2但脫離竹子超過11秒有噁心副作用","§c以上效果死掉才會消失","§c道具一丟掉道具就會消失","§c拿取前請詳閱竹林教義經","§6拿到主手，開啟功能"]}}}}
execute @a[tag=convert-bamboo] ~ ~ ~ replaceitem entity @s[tag=convert-bamboo] slot.weapon.mainhand minecraft:air
execute @a[tag=convert-bamboo] ~ ~ ~ give @s[tag=convert-bamboo] reeds 1 0 {display:{Name:"§d竹林教的聖品",Lore:["§8寶箱隨機生成物","§8生成機率０.１%","§7屬於隱藏特殊道具","§7聽聞竹林教有萬人教徒","","§2放置主手能增加自身走路的速度","§2和使敵方攻速降低、緩掘","§2但脫離竹子超過11秒有噁心副作用","§c以上效果死掉才會消失","§c道具一丟掉道具就會消失","§c拿取前請詳閱竹林教義經"]}}
execute @a[tag=convert-bamboo] ~ ~ ~ tellraw @a ["",{"text":"\n"},{"text":"【工商時間】","color":"light_purple","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"有人獲得隱藏道具觸發，\n(因為此實況主促成此道具，\n因此幫此實況主工商一下，\n經過實況主同意)"}]}}},{"text":"\n§l團團頻道有各種小87片段，\n§l還有訪問各種實況主的影片。\n§l玩遊戲做的事情常讓自己都發笑w。","color":"dark_green","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCa2rVH7Kefp6SAFBnkgTDKQ/featured"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"???????(點擊)"}]}}},{"text":"\n§l如果你喜歡連自己都發笑或訪問他人的影片，\n就點此段文字訂閱吧！","color":"gold","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCa2rVH7Kefp6SAFBnkgTDKQ/featured"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"???????(點擊)"}]}}},{"text":"\n","color":"white"}]
execute @a[tag=convert-bamboo] ~ ~ ~ scoreboard players tag @s[tag=convert-bamboo] remove convert-bamboo

#Fanshing
#scoreboard players tag @a add convert-carrot {SelectedItem:{id:"minecraft:golden_carrot",Count:1b,tag:{display:{Name:"金胡蘿蔔"}}}}
#execute @a[tag=convert-carrot] ~ ~ ~ replaceitem entity @s[tag=convert-carrot] slot.weapon.mainhand minecraft:air
#execute @a[tag=convert-carrot] ~ ~ ~ give @s[tag=convert-carrot] golden_carrot 1 0 {display:{Name:"兔兔王者的食物",Lore:["§8野怪隨機掉落物","§8掉落機率０.１%","§7屬於隱藏特殊道具","§7天說要貢獻上萬根才會出現","","§2放置副手能召喚兔王","§2牠的十格內能使同隊跳躍提升","§2五格內會使敵隊中毒","§c範圍效果兔王死掉才會消失","§c道具一丟掉就會消失","§c使用前請詳閱兔王召喚書"]}}
#execute @a[tag=convert-carrot] ~ ~ ~ tellraw @a ["",{"text":"\n"},{"text":"【工商時間】","color":"light_purple","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"有人獲得隱藏道具觸發，\n(因為此實況主促成此道具，\n因此幫此實況主工商一下，\n經過實況主同意)"}]}}},{"text":"\n§l繁星頻道能看到各種完整遊戲實況記錄，\n§l以及繪圖的記錄，\n§l也會有超爆笑的精華。","color":"dark_green","clickEvent":{"action":"open_url","value":"https://www.youtube.com/user/qekneqkwos/featured"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"???????(點擊)"}]}}},{"text":"\n§l如果你喜歡偶爾看長時間的影片，\n§l偶爾看精華，體會不同感受，\n就點此段文字訂閱吧！","color":"gold","clickEvent":{"action":"open_url","value":"https://www.youtube.com/user/qekneqkwos/featured"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"???????(點擊)"}]}}},{"text":"\n","color":"white"}]
#execute @a[tag=convert-carrot] ~ ~ ~ scoreboard players tag @s[tag=convert-carrot] remove convert-carrot

#----------隱藏道具啟動---------
#hageeshow
#scoreboard players tag @a add hageeshow {Inventory:[{id:"minecraft:trapped_chest",Slot:-106b,Count:1b}]}
#replaceitem entity @a[tag=hageeshow] slot.weapon.offhand minecraft:air
#execute @a[tag=hageeshow] ~ ~ ~ setblock ~ ~ ~ chest 0 replace {LootTable:"minecraft:chests/hageeshow"}
#scoreboard players tag @a[tag=hageeshow] remove hageeshow

#Hi_Chocolate
scoreboard players tag @a add Hi_Chocolate {Inventory:[{id:"minecraft:dye",Slot:-106b,Count:1b,Damage:3s,tag:{display:{Lore:["§8野怪隨機掉落物","§8掉落機率０.７%","§7屬於隱藏特殊道具","§7據說是巧克家族的聖物","","§2放置副手可以增加近身攻擊力","§2但是有緩掘、飢餓等副作用","§c以上效果死掉才會消失","§c服用前請詳閱公開說明書"]}}}]}
replaceitem entity @a[tag=Hi_Chocolate] slot.weapon.offhand minecraft:air
execute @a[tag=Hi_Chocolate] ~ ~ ~ tellraw @s ["",{"text":"【巧克豆神】","color":"dark_purple"},{"text":"給予你集於我一身的營養","color":"dark_green"}]
execute @a[tag=Hi_Chocolate] ~ ~ ~ playsound minecraft:entity.generic.drink master @s ~ ~ ~ 1 0.66
execute @a[tag=Hi_Chocolate] ~ ~ ~ effect @s minecraft:strength 999999 3 true
execute @a[tag=Hi_Chocolate] ~ ~ ~ effect @s minecraft:mining_fatigue 999999 2 true
execute @a[tag=Hi_Chocolate] ~ ~ ~ effect @s minecraft:hunger 999999 51 true
scoreboard players tag @a[tag=Hi_Chocolate] remove Hi_Chocolate

#Tuan_Tuan
scoreboard players tag @a add Tuan_Tuan {SelectedItem:{id:"minecraft:reeds",Count:1b,tag:{display:{Lore:["§8寶箱隨機生成物","§8生成機率０.１%","§7屬於隱藏特殊道具","§7聽聞竹林教有萬人教徒","","§2放置主手能增加自身走路的速度","§2和使敵方攻速降低、緩掘","§2但脫離竹子超過11秒有噁心副作用","§c以上效果死掉才會消失","§c道具一丟掉道具就會消失","§c拿取前請詳閱竹林教義經"]}}}}
scoreboard players set @a[tag=Tuan_Tuan,score_bambootime_min=-2] bambootime 220 {SelectedItem:{id:"minecraft:reeds",Count:1b,tag:{display:{Lore:["§8寶箱隨機生成物","§8生成機率０.１%","§7屬於隱藏特殊道具","§7聽聞竹林教有萬人教徒","","§2放置主手能增加自身走路的速度","§2和使敵方攻速降低、緩掘","§2但脫離竹子超過11秒有噁心副作用","§c以上效果死掉才會消失","§c道具一丟掉道具就會消失","§c拿取前請詳閱竹林教義經"]}}}}
execute @a[tag=Tuan_Tuan,team=yellow] ~ ~ ~ effect @a[team=blue] minecraft:mining_fatigue 1 1 true
execute @a[tag=Tuan_Tuan,team=blue] ~ ~ ~ effect @a[team=yellow] minecraft:mining_fatigue 1 1 true
execute @a[tag=Tuan_Tuan] ~ ~ ~ effect @s minecraft:speed 1 1 true
scoreboard players tag @a[tag=Tuan_Tuan] add Tuan_Tuan-curse
scoreboard players tag @a[tag=Tuan_Tuan] remove Tuan_Tuan
scoreboard players tag @a[score_deathCount_min=1,score_bambootime_min=-1] remove Tuan_Tuan-curse 
execute @a[score_deathCount_min=1,score_bambootime_min=-1] ~ ~ ~ clear @s reeds 0 1
scoreboard players remove @a[tag=!Tuan_Tuan,tag=Tuan_Tuan-curse,score_bambootime_min=0] bambootime 1
execute @a[score_bambootime=-1,score_bambootime_min=-1,tag=Tuan_Tuan-curse] ~ ~ ~ tellraw @s ["",{"text":"【竹林教義】","color":"dark_purple"},{"text":"不尊重教義，處罰你","color":"dark_red"}]
execute @a[score_bambootime=-1,score_bambootime_min=-1,tag=Tuan_Tuan-curse] ~ ~ ~ playsound minecraft:block.note.bell master @s ~ ~ ~ 1 2
execute @a[tag=Tuan_Tuan-curse,score_bambootime=-1,score_bambootime_min=-1] ~ ~ ~ scoreboard players set @s bambootime -2
execute @a[tag=Tuan_Tuan-curse,score_bambootime=-2,score_bambootime_min=-2] ~ ~ ~ effect @s minecraft:nausea 7 74

#Fanshing
#scoreboard players tag @a add Fanshing {Inventory:[{id:"minecraft:golden_carrot",Slot:-106b,Count:1b,tag:{display:{Lore:["§8野怪隨機掉落物","§8掉落機率０.１%","§7屬於隱藏特殊道具","§7天說要貢獻上萬根才會出現","","§2放置副手能召喚兔王","§2牠的十格內能使同隊跳躍提升","§2五格內會使敵隊中毒","§c範圍效果兔王死掉才會消失","§c道具一丟掉就會消失","§c使用前請詳閱兔王召喚書"]}}}]}
#replaceitem entity @a[tag=Fanshing] slot.weapon.offhand minecraft:air
#execute @a[tag=Fanshing] ~ ~ ~ tellraw @s ["",{"text":"【兔王獻聲】","color":"dark_purple"},{"text":"是誰在呼喚我","color":"dark_green"}]
#execute @a[tag=Fanshing] ~ ~ ~ playsound minecraft:entity.bat.loop master @s ~ ~ ~ 1 0.5
#execute @a[tag=Fanshing,team=yellow] ~ ~ ~ summon rabbit ~ ~ ~ {CustomName:"黃隊兔王",Tags:[Fanshing],Team:yellow,Invulnerable:1,ActiveEffects:[{Id:2,Amplifier:6,Duration:2147483647,ShowParticles:0b}]}
#execute @a[tag=Fanshing,team=blue] ~ ~ ~ summon rabbit ~ ~ ~ {CustomName:"藍隊兔王",Tags:[Fanshing],Team:blue,Invulnerable:1,ActiveEffects:[{Id:2,Amplifier:6,Duration:2147483647,ShowParticles:0b}]}
#scoreboard players tag @a[tag=Fanshing] remove Fanshing
#execute @e[tag=Fanshing,type=rabbit,team=yellow] ~ ~ ~ effect @a[team=yellow,r=10] minecraft:jump_boost 4 1
#execute @e[tag=Fanshing,type=rabbit,team=yellow] ~ ~ ~ effect @a[team=blue,r=5] minecraft:poison 4 1
#execute @e[tag=Fanshing,type=rabbit,team=yellow] ~ ~ ~ particle slime ~ ~ ~ 3 1 3 11 10 force @a[team=yellow]
#execute @e[tag=Fanshing,type=rabbit,team=yellow] ~ ~ ~ particle witchMagic ~ ~ ~ 2 0 2 7 3 force @a[team=blue]
#execute @e[tag=Fanshing,type=rabbit,team=blue] ~ ~ ~ effect @a[team=blue,r=10] minecraft:jump_boost 4 1
#execute @e[tag=Fanshing,type=rabbit,team=blue] ~ ~ ~ effect @a[team=yellow,r=5] minecraft:poison 4 1
#execute @e[tag=Fanshing,type=rabbit,team=blue] ~ ~ ~ particle slime ~ ~ ~ 3 1 3 11 10 force @a[team=blue]
#execute @e[tag=Fanshing,type=rabbit,team=blue] ~ ~ ~ particle witchMagic ~ ~ ~ 2 0 2 7 3 force @a[team=yellow]

#OokoukioO
#scoreboard players set @a[tag=!OokoukioO] kouki_death 0
#scoreboard players tag @a[tag=!OokoukioO] remove OokoukioX
#scoreboard players tag @a[tag=!OokoukioO] remove XokoukioO
#scoreboard players tag @a[tag=!OokoukioO] remove XokoukioX
#scoreboard players tag @a add OokoukioO {Inventory:[{id:"minecraft:golden_leggings",Slot:101b,Count:1b,tag:{display:{Lore:["§8野怪隨機掉落物","§8掉落機率０.１%","§7屬於隱藏特殊道具","§7聽聞此褲子穿了就脫不下來","","§2穿在身上給予持續回復效果","§2但是有虛弱、發光等副作用","§c以上效果三次死掉才會消失","§c服用前請詳閱公開說明書"]}}}]}
#replaceitem entity @a[tag=OokoukioO,score_kouki_death_min=0,score_kouki_death=0] slot.armor.legs minecraft:golden_leggings 1 0 {display:{Name:"§5阿神的寶貝金褲?!",Lore:["§8野怪隨機掉落物","§8掉落機率０.１%","§7屬於隱藏特殊道具","§7聽聞此褲子穿了就脫不下來","","§2穿在身上給予持續回復效果","§2但是有虛弱、發光等副作用","§c以上效果三次死掉才會消失","§c服用前請詳閱公開說明書"]},ench:[{id:10,lvl:1}]}
#execute @a[tag=OokoukioO,tag=!OokoukioX,score_kouki_death_min=0,score_kouki_death=0] ~ ~ ~ effect @s minecraft:regeneration 999999 1 true
#execute @a[tag=OokoukioO,tag=!OokoukioX,score_kouki_death_min=0,score_kouki_death=0] ~ ~ ~ effect @s minecraft:weakness 999999 0 true
#execute @a[tag=OokoukioO,tag=!OokoukioX,score_kouki_death_min=0,score_kouki_death=0] ~ ~ ~ effect @s minecraft:glowing 999999 0 true
#scoreboard players tag @a[tag=OokoukioO,tag=!OokoukioX,score_kouki_death_min=0,score_kouki_death=0] add OokoukioX
#execute @a[tag=OokoukioO,tag=!XokoukioO,score_kouki_death_min=1,score_kouki_death=1,m=2,l=0] ~ ~ ~ effect @s minecraft:regeneration 999999 1 true
#execute @a[tag=OokoukioO,tag=!XokoukioO,score_kouki_death_min=1,score_kouki_death=1,m=2,l=0] ~ ~ ~ effect @s minecraft:weakness 999999 0 true
#execute @a[tag=OokoukioO,tag=!XokoukioO,score_kouki_death_min=1,score_kouki_death=1,m=2,l=0] ~ ~ ~ effect @s minecraft:glowing 999999 0 true
#scoreboard players tag @a[tag=OokoukioO,tag=!XokoukioO,score_kouki_death_min=1,score_kouki_death=1,l=1] add XokoukioO
#replaceitem entity @a[tag=OokoukioO,score_kouki_death_min=1,score_kouki_death=1,m=2,l=0] slot.armor.legs minecraft:golden_leggings 1 52 {display:{Name:"§5阿神的寶貝金褲?!",Lore:["§8野怪隨機掉落物","§8掉落機率０.１%","§7屬於隱藏特殊道具","§7聽聞此褲子穿了就脫不下來","","§2穿在身上給予持續回復效果","§2但是有虛弱、發光等副作用","§c以上效果三次死掉才會消失","§c服用前請詳閱公開說明書"]},ench:[{id:10,lvl:1}]}
#execute @a[tag=OokoukioO,tag=!XokoukioX,score_kouki_death_min=2,score_kouki_death=2,m=2,l=0] ~ ~ ~ effect @s minecraft:regeneration 999999 1 true
#execute @a[tag=OokoukioO,tag=!XokoukioX,score_kouki_death_min=2,score_kouki_death=2,m=2,l=0] ~ ~ ~ effect @s minecraft:weakness 999999 0 true
#execute @a[tag=OokoukioO,tag=!XokoukioX,score_kouki_death_min=2,score_kouki_death=2,m=2,l=0] ~ ~ ~ effect @s minecraft:glowing 999999 0 true
#scoreboard players tag @a[tag=OokoukioO,tag=!XokoukioX,score_kouki_death_min=2,score_kouki_death=2,l=1] add XokoukioX
#replaceitem entity @a[tag=OokoukioO,score_kouki_death_min=2,score_kouki_death=2,m=2,l=0] slot.armor.legs minecraft:golden_leggings 1 78 {display:{Name:"§5阿神的寶貝金褲?!",Lore:["§8野怪隨機掉落物","§8掉落機率０.１%","§7屬於隱藏特殊道具","§7聽聞此褲子穿了就脫不下來","","§2穿在身上給予持續回復效果","§2但是有虛弱、發光等副作用","§c以上效果三次死掉才會消失","§c服用前請詳閱公開說明書"]},ench:[{id:10,lvl:1}]}
#scoreboard players set @a[tag=OokoukioO,score_kouki_death_min=3,score_kouki_death=3] kouki_death -1
#scoreboard players tag @a[tag=OokoukioO,score_kouki_death_min=-1,score_kouki_death=-1] remove OokoukioO

