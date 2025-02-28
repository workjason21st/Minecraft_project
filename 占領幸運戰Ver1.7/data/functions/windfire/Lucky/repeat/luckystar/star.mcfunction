#----------Q出後轉換---------
#---------黑死你全家-------------------
scoreboard players tag @e[type=Item,tag=!darktheys] add darkthey {Item:{id:"minecraft:dye",Damage:0s}}
execute @e[tag=darkthey] ~ ~ ~ scoreboard players tag @p add darkman
execute @e[tag=darkthey] ~ ~ ~ execute @e[tag=darkman,team=yellow] ~ ~ ~ effect @e[team=blue] minecraft:blindness 7 0
execute @e[tag=darkthey] ~ ~ ~ execute @e[tag=darkman,team=blue] ~ ~ ~ effect @e[team=yellow] minecraft:blindness 7 0
execute @e[tag=darkthey] ~ ~ ~ execute @e[tag=darkman,team=yellow] ~ ~ ~ tellraw @a ["",{"text":"【特殊道具】: ","color":"dark_purple"},{"text":"藍隊","color":"blue"},{"text":"遭受特殊道具攻擊","color":"green"}]
execute @e[tag=darkthey] ~ ~ ~ execute @e[tag=darkman,team=blue] ~ ~ ~ tellraw @a ["",{"text":"【特殊道具】: ","color":"dark_purple"},{"text":"黃隊","color":"yellow"},{"text":"遭受特殊道具攻擊","color":"green"}]
entitydata @e[tag=darkthey,c=1] {Invulnerable:1b,Health:9999s,Age:2s,PickupDelay:32767s,Item:{id:"minecraft:dye",Damage:0s},Tags:["darktheys"]}
execute @e[tag=darktheys] ~ ~ ~ execute @e[tag=darkman] ~ ~ ~ scoreboard players tag @s add darkmans
execute @e[tag=darktheys] ~ ~ ~ execute @e[tag=darkman] ~ ~ ~ scoreboard players tag @s remove darkman
scoreboard players tag @e[type=Item,tag=darktheys] add darktheyss {Age:4802s,Item:{id:"minecraft:dye",Damage:0s}}
execute @e[tag=darktheyss] ~ ~ ~ execute @e[tag=darkmans,c=1] ~ ~ ~ give @s dye 1 0 {display:{Name:"黑死你全家",Lore:["§7屬於特殊道具其中之一","§8可藉由完成挑戰類進度","§8或者用幸運星抽獎取得","","§c功用:§l丟出去後能夠在７秒內","§c     使敵方失去視野","§a備註:§l此道具經過４分後會歸還"]}}
execute @e[tag=darktheyss] ~ ~ ~ execute @e[tag=darkmans,c=1] ~ ~ ~ tellraw @s ["",{"text":"【特殊道具】: ","color":"dark_purple"},{"text":"黑死你全家冷卻完成","color":"red"}]
execute @e[tag=darktheyss] ~ ~ ~ execute @e[tag=darkmans,c=1] ~ ~ ~ playsound minecraft:block.comparator.click master @s ~ ~ ~ 0.7 1 0.7 0.7 0.7
execute @e[tag=darktheyss] ~ ~ ~ scoreboard players tag @e[tag=darkmans,c=1] remove darkmans
kill @e[tag=darktheyss]
#---------吸收一切能量-------------------
scoreboard players tag @e[type=Item] add absorption {Item:{id:"minecraft:concrete",Damage:15s}}
execute @e[tag=absorption] ~ ~ ~ effect @p minecraft:absorption 90 9 true
kill @e[tag=absorption]
#---------傷害傳送門-------------------
scoreboard players tag @e[type=Item,tag=!damagedoors] add damagedoor {Item:{id:"minecraft:end_portal_frame"}}
execute @e[tag=damagedoor] ~ ~ ~ scoreboard players tag @p add damagedoorman
execute @e[tag=damagedoor] ~ ~ ~ effect @e[tag=damagedoorman] minecraft:resistance 15 15
entitydata @e[type=item,tag=damagedoor,c=1] {Invulnerable:1b,Health:9999s,Age:2s,PickupDelay:32767s,Item:{id:"minecraft:end_portal_frame"},Tags:["damagedoors"]}
scoreboard players tag @e[type=Item,tag=damagedoors] add damagedoorss {Age:4802s,Item:{id:"minecraft:end_portal_frame"}}
execute @e[tag=damagedoorss] ~ ~ ~ execute @e[tag=damagedoorman,c=1] ~ ~ ~ /give @s end_portal_frame 1 0 {display:{Name:"傷害傳送門",Lore:["§7屬於特殊道具其中之一","§8可藉由完成挑戰類進度","§8或者用幸運星抽獎取得","","§c功用:§l丟出去後能夠在１５秒內","§c     無視任何物理傷害","§a備註:§l此道具經過４分後會歸還"]}}
execute @e[tag=damagedoorss] ~ ~ ~ execute @e[tag=damagedoorman,c=1] ~ ~ ~ tellraw @s ["",{"text":"【特殊道具】: ","color":"dark_purple"},{"text":"傷害傳送門冷卻完成","color":"red"}]
execute @e[tag=damagedoorss] ~ ~ ~ execute @e[tag=damagedoorman,c=1] ~ ~ ~ playsound minecraft:block.comparator.click master @s ~ ~ ~ 0.7 1 0.7 0.7 0.7
execute @e[tag=damagedoorss] ~ ~ ~ scoreboard players tag @e[tag=damagedoorman,c=1] remove damagedoorman
kill @e[tag=damagedoorss]
#---------上天賦予錢-------------------
scoreboard players tag @e[type=Item] add double_plant {Age:1s,Item:{id:"minecraft:double_plant"}}
execute @e[tag=double_plant] ~ ~ ~ scoreboard players tag @p add double_money
entitydata @e[tag=double_plant] {Invulnerable:1b,Health:9999s,Age:2s,PickupDelay:32767s,Item:{id:"double_plant"},Tags:["double_plants"]}
scoreboard players tag @e[type=Item,tag=double_plants] add double_plantss {Age:202s,Item:{id:"minecraft:double_plant"}}
execute @e[tag=double_plantss] ~ ~ ~ scoreboard players tag @e[tag=double_money] remove double_money
kill @e[tag=double_plantss]
#---------自殺突擊碗-------------------
scoreboard players tag @e[type=Item,tag=!bowls] add bowl {Item:{id:"minecraft:bowl"}}
execute @e[tag=bowl] ~ ~ ~ scoreboard players tag @p add bowlguy
execute @e[tag=bowl] ~ ~ ~ execute @p[tag=bowlguy] ~ ~ ~ effect @s minecraft:resistance 3 77
execute @e[tag=bowl] ~ ~ ~ execute @p[tag=bowlguy] ~ ~ ~ effect @s minecraft:jump_boost 3 129
execute @e[tag=bowl] ~ ~ ~ execute @p[tag=bowlguy] ~ ~ ~ effect @s minecraft:slowness 3 128
execute @e[tag=bowl] ~ ~ ~ execute @p[tag=bowlguy] ~ ~ ~ summon item ~2 ~ ~ {Item:{id:"minecraft:tnt",Count:1b},PickupDelay:44s}
execute @e[tag=bowl] ~ ~ ~ execute @p[tag=bowlguy] ~ ~ ~ summon item ~-2 ~ ~ {Item:{id:"minecraft:tnt",Count:1b},PickupDelay:44s}
execute @e[tag=bowl] ~ ~ ~ execute @p[tag=bowlguy] ~ ~ ~ summon item ~ ~ ~2 {Item:{id:"minecraft:tnt",Count:1b},PickupDelay:44s}
execute @e[tag=bowl] ~ ~ ~ execute @p[tag=bowlguy] ~ ~ ~ summon item ~ ~ ~-2 {Item:{id:"minecraft:tnt",Count:1b},PickupDelay:44s}
execute @e[tag=bowl] ~ ~ ~ execute @p[tag=bowlguy] ~ ~ ~ summon item ~2 ~ ~2 {Item:{id:"minecraft:tnt",Count:1b},PickupDelay:44s}
execute @e[tag=bowl] ~ ~ ~ execute @p[tag=bowlguy] ~ ~ ~ summon item ~-2 ~ ~2 {Item:{id:"minecraft:tnt",Count:1b},PickupDelay:44s}
execute @e[tag=bowl] ~ ~ ~ execute @p[tag=bowlguy] ~ ~ ~ summon item ~2 ~ ~-2 {Item:{id:"minecraft:tnt",Count:1b},PickupDelay:44s}
execute @e[tag=bowl] ~ ~ ~ execute @p[tag=bowlguy] ~ ~ ~ summon item ~-2 ~ ~-2 {Item:{id:"minecraft:tnt",Count:1b},PickupDelay:44s}
execute @e[tag=bowl] ~ ~ ~ scoreboard players tag @e[tag=bowlguy,c=1] add bowlguys
execute @e[tag=bowl] ~ ~ ~ scoreboard players tag @e[tag=bowlguy,c=1] remove bowlguy
entitydata @e[tag=bowl,c=1] {Invulnerable:1b,Health:9999s,Age:1s,PickupDelay:32767s,Item:{id:"bowl"},Tags:["bowls"]}
scoreboard players tag @e[type=Item,tag=bowls] add bowlss {Age:3001s,Item:{id:"minecraft:bowl"}}
execute @e[tag=bowlss] ~ ~ ~ execute @e[tag=bowlguys,c=1] ~ ~ ~ give @s bowl 1 0
execute @e[tag=bowlss] ~ ~ ~ execute @e[tag=bowlguys,c=1] ~ ~ ~ tellraw @s ["",{"text":"【特殊道具】: ","color":"dark_purple"},{"text":"自殺突擊碗冷卻完成","color":"red"}]
execute @e[tag=bowlss] ~ ~ ~ execute @e[tag=bowlguys,c=1] ~ ~ ~ playsound minecraft:block.comparator.click master @s ~ ~ ~ 0.7 1 0.7 0.7 0.7
execute @e[tag=bowlss] ~ ~ ~ scoreboard players tag @e[tag=bowlguys,c=1] remove bowlguys
kill @e[tag=bowlss]

#---------我想當間諜-------------------
scoreboard players tag @e[type=Item] add glass_pane {Age:2s,Item:{id:"minecraft:glass_pane"}}
execute @e[tag=glass_pane] ~ ~ ~ scoreboard players tag @p add spy
entitydata @e[tag=glass_pane] {Invulnerable:1b,Health:9999s,Age:3s,PickupDelay:32767s}
execute @e[tag=glass_pane] ~ ~ ~ execute @e[tag=spy] ~ ~ ~ tellraw @s ["",{"text":"【特殊道具】: ","color":"dark_purple"},{"text":"成功開始偽裝","color":"green"}]
execute @e[tag=glass_pane] ~ ~ ~ execute @e[tag=spy,team=blue] ~ ~ ~ scoreboard players tag @s add spys
execute @e[tag=glass_pane] ~ ~ ~ execute @e[tag=!spys,tag=spy,team=yellow] ~ ~ ~ scoreboard teams join blue @s
execute @e[tag=glass_pane] ~ ~ ~ execute @e[tag=spy,tag=spys,team=blue] ~ ~ ~ scoreboard teams join yellow @s
execute @e[tag=glass_pane] ~ ~ ~ execute @e[tag=spy,team=blue] ~ ~ ~ scoreboard players tag @s add spys
execute @e[tag=glass_pane] ~ ~ ~ execute @e[tag=spy,team=yellow] ~ ~ ~ scoreboard players tag @s remove spy
execute @e[tag=glass_pane] ~ ~ ~ execute @e[tag=spy,team=blue] ~ ~ ~ scoreboard players tag @s remove spy
execute @e[tag=glass_pane] ~ ~ ~ execute @e[tag=spys,team=yellow] ~ ~ ~ scoreboard players tag @s add spy_yellow
execute @e[tag=glass_pane] ~ ~ ~ execute @e[tag=spys,team=blue] ~ ~ ~ scoreboard players tag @s add spy_blue
entitydata @e[tag=glass_pane] {Invulnerable:1b,Health:9999s,Age:10s,PickupDelay:32767s,Item:{id:"glass_pane"},Tags:["glass_panes"]}

scoreboard players tag @e[type=Item,tag=glass_panes] add glass_paness {Age:1210s,Item:{id:"minecraft:glass_pane"}}
execute @e[tag=glass_paness] ~ ~ ~ execute @e[tag=spys] ~ ~ ~ tellraw @s ["",{"text":"【特殊道具】: ","color":"dark_purple"},{"text":"偽裝時間剩餘３０秒","color":"green"}]
entitydata @e[tag=glass_paness] {Item:{id:"glass_pane"},Tags:["glass_panesss"]}
scoreboard players tag @e[type=Item,tag=glass_panesss] add glass_panessss {Age:1810s,Item:{id:"minecraft:glass_pane"}}
execute @e[tag=glass_panessss] ~ ~ ~ execute @e[tag=spys,c=1] ~ ~ ~ tellraw @s ["",{"text":"【特殊道具】: ","color":"dark_purple"},{"text":"偽裝時間結束","color":"green"}]
execute @e[tag=glass_panessss] ~ ~ ~ execute @e[tag=spys,c=1] ~ ~ ~ playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 0.7 0.1
execute @e[tag=glass_panessss] ~ ~ ~ execute @e[tag=spy_yellow,c=1] ~ ~ ~ scoreboard teams join blue @s
execute @e[tag=glass_panessss] ~ ~ ~ execute @e[tag=spy_blue,c=1] ~ ~ ~ scoreboard teams join yellow @s
execute @e[tag=glass_panessss] ~ ~ ~ execute @e[tag=spy_yellow,c=1] ~ ~ ~ scoreboard players tag @s remove spy_yellow
execute @e[tag=glass_panessss] ~ ~ ~ execute @e[tag=spy_blue,c=1] ~ ~ ~ scoreboard players tag @s remove spy_blue
execute @e[tag=glass_panessss] ~ ~ ~ execute @e[tag=spys,c=1] ~ ~ ~ scoreboard players tag @s remove spys
kill @e[tag=glass_panessss]