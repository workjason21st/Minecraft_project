scoreboard objectives remove wincount
scoreboard objectives remove random10
scoreboard objectives remove random
scoreboard objectives remove randomfor
scoreboard objectives remove gameend
scoreboard objectives remove torchcount
scoreboard objectives remove propscount
scoreboard objectives remove damaged
scoreboard objectives remove attack
scoreboard objectives remove rgltime
scoreboard objectives remove rglmode
scoreboard objectives remove rglmap
scoreboard objectives remove rgluhc
scoreboard objectives remove rgljump
scoreboard objectives remove rglhealth
scoreboard objectives remove rglused
scoreboard objectives remove rglkill
scoreboard objectives remove rglself
scoreboard objectives remove rglsword
scoreboard objectives remove rglghost
scoreboard objectives remove rglinventory
scoreboard objectives remove rglfriend
scoreboard objectives remove rgleffect
scoreboard objectives remove rglbuff
scoreboard objectives remove rglglow
scoreboard objectives remove rglgive
scoreboard objectives remove rglcount
scoreboard objectives remove rgltouchdis
scoreboard objectives remove rgltouchtime
scoreboard objectives remove rglgdis
scoreboard objectives remove rgldemo
scoreboard objectives remove rglspecial
scoreboard objectives remove rglfree
scoreboard objectives remove rglgreen
scoreboard objectives remove rglrebirth
scoreboard objectives remove rglinvulnerable
scoreboard objectives remove rglnewghost
scoreboard objectives remove rgladdheart
scoreboard objectives remove rgldaynight
scoreboard objectives remove rglstickatt
scoreboard objectives remove rglkeepwhite
scoreboard objectives remove openender
scoreboard objectives remove sword1
scoreboard objectives remove sword2
scoreboard objectives remove sword3
scoreboard objectives remove sword4
scoreboard objectives remove sword5
scoreboard objectives remove sword6
scoreboard objectives remove sword7
scoreboard objectives remove sword8
scoreboard objectives remove sword9
scoreboard objectives remove sword10
scoreboard objectives remove sword11
scoreboard objectives remove usesword
scoreboard objectives remove gametime
scoreboard objectives remove toenddisplay
scoreboard objectives remove toendtime
scoreboard objectives remove foodL
scoreboard objectives remove throwid0
scoreboard objectives remove throwid1
scoreboard objectives remove throwid2
scoreboard objectives remove throwid3
scoreboard objectives remove displayhealth
scoreboard objectives remove ghost
scoreboard objectives remove little
scoreboard objectives remove greencount
scoreboard objectives remove baddead
scoreboard objectives remove reder
scoreboard objectives remove greener
scoreboard objectives remove laster
scoreboard objectives remove deathdetect
scoreboard objectives remove usered
scoreboard objectives remove usegreen
scoreboard objectives remove begreen
scoreboard objectives remove killbad
scoreboard objectives remove killdetect
scoreboard objectives remove changeteam
scoreboard objectives remove deathcount
scoreboard objectives remove rgllist
scoreboard objectives remove rgldemolist
scoreboard objectives remove posx
scoreboard objectives remove posy
scoreboard objectives remove posz
scoreboard objectives remove disx
scoreboard objectives remove disy
scoreboard objectives remove disz
scoreboard objectives remove dis
scoreboard objectives remove sqrt
###
scoreboard objectives add wincount dummy
scoreboard objectives add random10 dummy
scoreboard objectives add random dummy
scoreboard objectives add randomfor dummy
scoreboard objectives add gameend dummy

scoreboard objectives add torchcount dummy
scoreboard objectives add propscount dummy
scoreboard objectives add damaged dummy
scoreboard objectives add attack dummy
#scoreboard objectives add rglround dummy
scoreboard objectives add rgltime dummy
scoreboard objectives add rglmode dummy
scoreboard objectives add rglmap dummy
scoreboard objectives add rgluhc dummy
scoreboard objectives add rgljump dummy
scoreboard objectives add rglhealth dummy
scoreboard objectives add rglused dummy
scoreboard objectives add rglkill dummy
scoreboard objectives add rglself dummy
scoreboard objectives add rglsword dummy
scoreboard objectives add rglghost dummy
scoreboard objectives add rglinventory dummy
scoreboard objectives add rglfriend dummy
scoreboard objectives add rgleffect dummy
scoreboard objectives add rglbuff dummy
scoreboard objectives add rglglow dummy
scoreboard objectives add rglgive dummy
scoreboard objectives add rglcount dummy
scoreboard objectives add rgltouchdis dummy
scoreboard objectives add rgltouchtime dummy
scoreboard objectives add rglgdis dummy
scoreboard objectives add rgldemo dummy
scoreboard objectives add rglspecial dummy
scoreboard objectives add rglfree dummy
scoreboard objectives add rglgreen dummy
scoreboard objectives add rglrebirth dummy
scoreboard objectives add rglinvulnerable dummy
scoreboard objectives add rglnewghost dummy
scoreboard objectives add rgladdheart dummy
scoreboard objectives add rgldaynight dummy
scoreboard objectives add rglstickatt dummy
scoreboard objectives add rglkeepwhite dummy

scoreboard objectives add openender minecraft.custom:minecraft.open_enderchest
scoreboard objectives add sword1 minecraft.used:minecraft.wooden_sword
scoreboard objectives add sword2 minecraft.used:minecraft.stone_axe
scoreboard objectives add sword3 minecraft.used:minecraft.iron_sword
scoreboard objectives add sword4 minecraft.used:minecraft.golden_axe
scoreboard objectives add sword5 minecraft.used:minecraft.diamond_sword
scoreboard objectives add sword6 minecraft.used:minecraft.netherite_axe
scoreboard objectives add sword7 minecraft.used:minecraft.fishing_rod
scoreboard objectives add sword8 minecraft.used:minecraft.trident
scoreboard objectives add sword9 minecraft.used:minecraft.crossbow
scoreboard objectives add sword10 minecraft.used:minecraft.experience_bottle
scoreboard objectives add sword11 minecraft.used:minecraft.experience_bottle
scoreboard objectives add usesword dummy "武器使用偵測"
scoreboard objectives add gametime dummy
scoreboard objectives add toenddisplay dummy
scoreboard objectives add toendtime dummy
scoreboard objectives add foodL food

scoreboard objectives add throwid0 dummy
scoreboard objectives add throwid1 dummy
scoreboard objectives add throwid2 dummy
scoreboard objectives add throwid3 dummy

scoreboard objectives add displayhealth health "❤"
scoreboard objectives add ghost dummy "這遊戲的好人"
scoreboard objectives add little dummy "小鬼"
scoreboard objectives add greencount dummy "壞孩子的綠燈總數量"
scoreboard objectives add baddead dummy "壞孩子總死亡數量"
scoreboard objectives add reder dummy "紅燈者(R)"
scoreboard objectives add greener dummy "綠燈者(G)"
scoreboard objectives add laster dummy "剩餘人數(R+G)"
scoreboard objectives add deathdetect deathCount "死亡偵測"
scoreboard objectives add usered dummy "使用紅燈"
scoreboard objectives add usegreen dummy "使用綠燈"
scoreboard objectives add begreen dummy "被使用綠燈"
scoreboard objectives add killbad playerKillCount "殺壞蛋"
scoreboard objectives add killdetect playerKillCount "殺人偵測"
scoreboard objectives add changeteam dummy "換陣營"
scoreboard objectives add deathcount dummy "死亡數"

scoreboard objectives add rgllist dummy ["","RGL資訊列表-ver1.6.4"]
scoreboard objectives add rgldemolist dummy ["","RGL展示資訊列表(非實際數字)"]
scoreboard objectives setdisplay sidebar rgllist
scoreboard objectives setdisplay list wincount
scoreboard objectives setdisplay belowName displayhealth

scoreboard players set @a wincount 0
scoreboard players set @e[tag=core] gameend -1
scoreboard players set @e[tag=core] toendtime -5
scoreboard players set @e[tag=core] toenddisplay 5

scoreboard players set @e[tag=random1] gametime 60
scoreboard players set @e[tag=core] gametime 360
scoreboard players set @e[tag=core] rgltime 5
scoreboard players set @e[tag=core] rglmode 1
scoreboard players set @e[tag=core] rglmap 1
scoreboard players set @e[tag=core] rgluhc 1
scoreboard players set @e[tag=core] rgljump 1
scoreboard players set @e[tag=core] rglhealth 11
scoreboard players set @e[tag=core] rglused 7
scoreboard players set @e[tag=core] rglkill 25
scoreboard players set @e[tag=core] rglself 10
scoreboard players set @e[tag=core] rglsword 3
scoreboard players set @e[tag=core] rglghost 2
scoreboard players set @e[tag=core] rglgdis 3
scoreboard players set @e[tag=core] rglinventory 2
scoreboard players set @e[tag=core] rglfriend 0
scoreboard players set @e[tag=core] rgleffect 2
scoreboard players set @e[tag=core] rglbuff 4
scoreboard players set @e[tag=core] rglglow 7
scoreboard players set @e[tag=core] rglgive 20
scoreboard players set @e[tag=core] rglcount 10
scoreboard players set @e[tag=core] rglfree 25
scoreboard players set @e[tag=core] rglgreen 8
scoreboard players set @e[tag=core] rgltouchdis 10
scoreboard players set @e[tag=core] rgltouchtime 25
scoreboard players set @e[tag=core] rglspecial 0
scoreboard players set @e[tag=core] rglrebirth 1
scoreboard players set @e[tag=core] rglinvulnerable 0
scoreboard players set @e[tag=core] rglnewghost 25
scoreboard players set @e[tag=core] rgladdheart 2
scoreboard players set @e[tag=core] rgldaynight 1
scoreboard players set @e[tag=core] rglstickatt 5
scoreboard players set @e[tag=core] rglkeepwhite 0

scoreboard players set @e[tag=random3] rgltouchtime 20

scoreboard players set @e[tag=random0] random10 0
scoreboard players set @e[tag=random1] random10 1
scoreboard players set @e[tag=random2] random10 2
scoreboard players set @e[tag=random3] random10 3
scoreboard players set @e[tag=random4] random10 4
scoreboard players set @e[tag=random5] random10 5
scoreboard players set @e[tag=random6] random10 6
scoreboard players set @e[tag=random7] random10 7
scoreboard players set @e[tag=random8] random10 8
scoreboard players set @e[tag=random9] random10 9

execute as @a store result score @s throwid0 run data get entity @s UUID[0]
execute as @a store result score @s throwid1 run data get entity @s UUID[1]
execute as @a store result score @s throwid2 run data get entity @s UUID[2]
execute as @a store result score @s throwid3 run data get entity @s UUID[3]

scoreboard players set 目前壞孩子的綠燈總數 rgldemolist 0
scoreboard players set 目前壞孩子的總死亡數 rgldemolist 0
scoreboard players set 剩餘的孩子們 rgldemolist 8
scoreboard players set 在綠燈狀態的孩子 rgldemolist 5
scoreboard players set 在紅燈狀態的孩子 rgldemolist 3
scoreboard players set 壞孩子失敗的總死亡數量 rgldemolist 10
scoreboard players set 壞孩子獲勝的綠燈目標數 rgldemolist 50

scoreboard objectives add posx dummy "x座標"
scoreboard objectives add posy dummy "y座標"
scoreboard objectives add posz dummy "z座標"
scoreboard objectives add disx dummy "x距離"
scoreboard objectives add disy dummy "y距離"
scoreboard objectives add disz dummy "z距離"
scoreboard objectives add dis dummy "總距離"
scoreboard objectives add sqrt dummy
scoreboard players set @e[tag=core] dis 100
scoreboard players set rgl2 sqrt 2
scoreboard players set rgl-1 sqrt -1
