#----------Buff------------
#家中抗性
execute @a[m=2,team=yellow] ~ ~ ~ detect ~ ~-3 ~ minecraft:concrete_powder 1 effect @s minecraft:resistance 1 2 true
execute @a[m=2,team=blue] ~ ~ ~ detect ~ ~-3 ~ minecraft:concrete_powder 3 effect @s minecraft:resistance 1 2 true
execute @a[m=2,team=yellow] ~ ~ ~ detect ~ ~-4 ~ minecraft:concrete_powder 1 effect @s minecraft:resistance 1 2 true
execute @a[m=2,team=blue] ~ ~ ~ detect ~ ~-4 ~ minecraft:concrete_powder 3 effect @s minecraft:resistance 1 2 true
execute @a[m=2,team=yellow] ~ ~ ~ detect ~ ~-8.0625 ~ minecraft:concrete_powder 1 effect @s minecraft:resistance 1 2 true
execute @a[m=2,team=blue] ~ ~ ~ detect ~ ~-8.0625 ~ minecraft:concrete_powder 3 effect @s minecraft:resistance 1 2 true
execute @a[m=2,team=yellow] ~ ~ ~ detect ~ ~-9 ~ minecraft:concrete_powder 1 effect @s minecraft:resistance 1 2 true
execute @a[m=2,team=blue] ~ ~ ~ detect ~ ~-9 ~ minecraft:concrete_powder 3 effect @s minecraft:resistance 1 2 true
#礦場挖掘緩速
execute @a[m=2,team=yellow] ~ ~ ~ detect ~ ~-2 ~ minecraft:wool 3 execute @s ~ ~ ~ detect ~ ~3 ~ minecraft:bedrock 0 effect @s minecraft:mining_fatigue 1 7 true
execute @a[m=2,team=blue] ~ ~ ~ detect ~ ~-2 ~ minecraft:wool 1 execute @s ~ ~ ~ detect ~ ~3 ~ minecraft:bedrock 0 effect @s minecraft:mining_fatigue 1 7 true
#紅沙走路緩速
execute @a[m=0] ~ ~ ~ detect ~ ~-1 ~ minecraft:sand 1 effect @s minecraft:slowness 1 3 true
execute @a[m=0] ~ ~ ~ detect ~ ~-1 ~ minecraft:sand 1 title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"走在紅沙上會緩速喔","color":"green","bold":"true"}]
#加速
execute @a[m=2,team=yellow] ~ ~ ~ detect ~ ~-1 ~ minecraft:magenta_glazed_terracotta 3 effect @s minecraft:speed 1 21
execute @a[m=2,team=blue] ~ ~ ~ detect ~ ~-1 ~ minecraft:magenta_glazed_terracotta 1 effect @s minecraft:speed 1 21
#電梯提醒
execute @a[m=2,z=1057,dz=0,x=1009,dx=18,y=177,dy=10,team=yellow] ~ ~ ~ detect ~ ~-1 ~ minecraft:concrete 4 title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"若要上樓，請跳躍一下","color":"green","bold":"true"}]
execute @a[m=2,z=943,dz=0,x=985,dx=18,y=177,dy=10,team=blue] ~ ~ ~ detect ~ ~-1 ~ minecraft:concrete 11 title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"若要上樓，請跳躍一下","color":"green","bold":"true"}]
#自動上升電梯A(黃)
execute @a[m=2,z=1057,dz=0,x=1009,dx=18,y=177,dy=10,team=yellow] ~ ~ ~ detect ~ ~-1.1 ~ minecraft:concrete 4 effect @s minecraft:levitation 2 2 true
execute @a[m=2,z=1057,dz=0,x=1009,dx=18,y=177,dy=10,team=yellow] ~ ~ ~ detect ~ ~-1.1 ~ minecraft:concrete 4 title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"電梯上升中,請不要隨意移動","color":"green","bold":"true"}]
execute @a[m=2,z=1057,dz=0,x=1009,dx=18,y=177,dy=10,team=yellow] ~ ~ ~ detect ~ ~-7.2 ~ minecraft:concrete 4 effect @s minecraft:levitation 0 0 true
execute @a[m=2,z=1057,dz=0,x=1009,dx=18,y=177,dy=10,team=yellow] ~ ~ ~ detect ~ ~-7.2 ~ minecraft:concrete 4 effect @s minecraft:jump_boost 0 0 true
execute @a[m=2,z=1057,dz=0,x=1009,dx=18,y=177,dy=10,team=yellow] ~ ~ ~ detect ~ ~-7.2 ~ minecraft:concrete 4 playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 777 1.1
execute @a[m=2,z=1057,dz=0,x=1009,dx=18,y=177,dy=10,team=yellow] ~ ~ ~ detect ~ ~-7.2 ~ minecraft:concrete 4 tp @s ~ ~1 ~-1
#自動下降
execute @a[m=2,z=1057,dz=0,x=1009,dx=18,y=177,dy=10,team=yellow] ~ ~ ~ detect ~ ~-5 ~ minecraft:concrete 4 effect @s minecraft:levitation 2 253 true
#execute @a[m=2,z=1057,dz=0,x=1009,dx=18,y=177,dy=10,team=yellow] ~ ~ ~ detect ~ ~-4.95 ~ minecraft:concrete 4 title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"電梯下降,小心跌落傷害","color":"green","bold":"true"}]
execute @a[m=2,z=1057,dz=0,x=1009,dx=18,y=177,dy=10,team=yellow] ~ ~ ~ detect ~ ~-4.9 ~ minecraft:concrete 4 effect @s minecraft:jump_boost 3 200 true
execute @a[m=2,z=1057,dz=0,x=1009,dx=18,y=177,dy=10,team=yellow] ~ ~ ~ detect ~ ~-1 ~ minecraft:concrete 4 effect @s minecraft:levitation 0 0 true

#自動上升電梯A(藍)
execute @a[m=2,z=943,dz=0,x=985,dx=18,y=177,dy=10,team=blue] ~ ~ ~ detect ~ ~-1.1 ~ minecraft:concrete 11 effect @s minecraft:levitation 2 2 true
execute @a[m=2,z=943,dz=0,x=985,dx=18,y=177,dy=10,team=blue] ~ ~ ~ detect ~ ~-1.1 ~ minecraft:concrete 11 title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"電梯上升中,請不要隨意移動","color":"green","bold":"true"}]
execute @a[m=2,z=943,dz=0,x=985,dx=18,y=177,dy=10,team=blue] ~ ~ ~ detect ~ ~-7.2 ~ minecraft:concrete 11 effect @s minecraft:levitation 0 0 true
execute @a[m=2,z=943,dz=0,x=985,dx=18,y=177,dy=10,team=blue] ~ ~ ~ detect ~ ~-7.2 ~ minecraft:concrete 11 effect @s minecraft:jump_boost 0 0 true
execute @a[m=2,z=943,dz=0,x=985,dx=18,y=177,dy=10,team=blue] ~ ~ ~ detect ~ ~-7.2 ~ minecraft:concrete 11 playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 777 1.1
execute @a[m=2,z=943,dz=0,x=985,dx=18,y=177,dy=10,team=blue] ~ ~ ~ detect ~ ~-7.2 ~ minecraft:concrete 11 tp @s ~ ~1 ~1
#自動下降
execute @a[m=2,z=943,dz=0,x=985,dx=18,y=177,dy=10,team=blue] ~ ~ ~ detect ~ ~-5 ~ minecraft:concrete 11 effect @s minecraft:levitation 2 253 true
#execute @a[m=2,z=943,dz=0,x=985,dx=18,y=177,dy=10,team=blue] ~ ~ ~ detect ~ ~-4.95 ~ minecraft:concrete 11 title @s actionbar ["",{"text":"小提醒:","color":"dark_purple"},{"text":"電梯下降,小心跌落傷害","color":"green","bold":"true"}]
execute @a[m=2,z=943,dz=0,x=985,dx=18,y=177,dy=10,team=blue] ~ ~ ~ detect ~ ~-4.9 ~ minecraft:concrete 11 effect @s minecraft:jump_boost 3 200 true
execute @a[m=2,z=943,dz=0,x=985,dx=18,y=177,dy=10,team=blue] ~ ~ ~ detect ~ ~-1 ~ minecraft:concrete 11 effect @s minecraft:levitation 0 0 true

#自動上升電梯B(黃)
#execute @a[m=2] ~ ~ ~ detect ~ ~-1.1 ~ minecraft:stone 1 effect @s minecraft:levitation 3 1 true
#execute @a[m=2] ~ ~ ~ detect ~ ~-8.1 ~ minecraft:stone 1 effect @s minecraft:levitation 0 0 true
#execute @a[m=2] ~ ~ ~ detect ~ ~-8.1 ~ minecraft:stone 1 effect @s minecraft:jump_boost 0 0 true
#execute @a[m=2] ~ ~ ~ detect ~ ~-7.2 ~ minecraft:stone 1 playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 777 1.1
#execute @a[m=2] ~ ~ ~ detect ~ ~-8.1 ~ minecraft:stone 1 tp @s ~ ~1 ~-1
#自動下降
#execute @a[m=2] ~ ~ ~ detect ~ ~-7 ~ minecraft:stone 1 effect @s minecraft:levitation 3 253 true
#execute @a[m=2] ~ ~ ~ detect ~ ~-5.4 ~ minecraft:stone 1 effect @s minecraft:jump_boost 3 200 true
#execute @a[m=2] ~ ~ ~ detect ~ ~-3 ~ minecraft:stone 1 effect @s minecraft:jump_boost 1 200 true
#自動上升電梯B(藍)
#execute @a[m=2] ~ ~ ~ detect ~ ~-1.1 ~ minecraft:stone 3 effect @s minecraft:levitation 3 1 true
#execute @a[m=2] ~ ~ ~ detect ~ ~-8.1 ~ minecraft:stone 3 effect @s minecraft:levitation 0 0 true
#execute @a[m=2] ~ ~ ~ detect ~ ~-8.1 ~ minecraft:stone 3 effect @s minecraft:jump_boost 0 0 true
#execute @a[m=2] ~ ~ ~ detect ~ ~-7.2 ~ minecraft:stone 3 playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 777 1.1
#execute @a[m=2] ~ ~ ~ detect ~ ~-8.1 ~ minecraft:stone 3 tp @s ~ ~1 ~1
#自動下降
#execute @a[m=2] ~ ~ ~ detect ~ ~-7 ~ minecraft:stone 3 effect @s minecraft:levitation 3 253 true
#execute @a[m=2] ~ ~ ~ detect ~ ~-5.4 ~ minecraft:stone 3 effect @s minecraft:jump_boost 3 200 true
#execute @a[m=2] ~ ~ ~ detect ~ ~-3 ~ minecraft:stone 3 effect @s minecraft:jump_boost 1 200 true
