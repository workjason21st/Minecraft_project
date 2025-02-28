#
scoreboard objectives remove bigwincount
scoreboard objectives remove smallwinpoint
scoreboard objectives remove random10
scoreboard objectives remove playgame
scoreboard objectives remove gametime
#scoreboard objectives remove rglplusplayround
scoreboard objectives remove rglplustime
scoreboard objectives remove rglplusround
scoreboard objectives remove rglplusmap
scoreboard objectives remove rglplusplaymap
scoreboard objectives remove rglplusmode
scoreboard objectives remove rglplussword
scoreboard objectives remove rglplusweapon
scoreboard objectives remove rglplusghost
scoreboard objectives remove rglplusgreencount
scoreboard objectives remove rglplusredcount
scoreboard objectives remove rglplusredtime
scoreboard objectives remove rglplusbyself
scoreboard objectives remove rglplusredwall
scoreboard objectives remove rglplusghostprop
scoreboard objectives remove rglplusaddtime
scoreboard objectives remove rglpluskidsword
scoreboard objectives remove rglplusalleffect
scoreboard objectives remove rglpluskidlife
scoreboard objectives remove rglplusqteghost
scoreboard objectives remove rglplusqtekid
scoreboard objectives remove rglplusbuffghost
scoreboard objectives remove rglplusbuffkid
scoreboard objectives remove rglplustouchtime
scoreboard objectives remove rglplustouchdis
scoreboard objectives remove rglplusglow
scoreboard objectives remove rglplusshowdis
scoreboard objectives remove rglplusteamdamage
scoreboard objectives remove rglplusfalldamage
scoreboard objectives remove rglplusautoblood
scoreboard objectives remove rglplusdaynight
#
scoreboard objectives remove rglplusinvulnerable
#
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
scoreboard objectives remove toenddisplay
scoreboard objectives remove foodL
scoreboard objectives remove toendtime
scoreboard objectives remove rglplus_clearendchest
scoreboard objectives remove throw_id0
scoreboard objectives remove throw_id1
scoreboard objectives remove throw_id2
scoreboard objectives remove throw_id3
scoreboard objectives remove displayhealth
scoreboard objectives remove rglplusnumber
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
scoreboard objectives remove humanwincount
scoreboard objectives remove ghostwincount

scoreboard objectives remove rglpluslist
scoreboard objectives remove book1
scoreboard objectives remove book2
scoreboard objectives remove book3
scoreboard objectives remove book4
scoreboard objectives remove bookteam
scoreboard objectives remove rglplus_posx
scoreboard objectives remove rglplus_posy
scoreboard objectives remove rglplus_posz
scoreboard objectives remove rglplus_disx
scoreboard objectives remove rglplus_disy
scoreboard objectives remove rglplus_disz
scoreboard objectives remove rglplus_dis
scoreboard objectives remove rglplus_sqrt
###
scoreboard objectives add bigwincount dummy
scoreboard objectives add smallwinpoint dummy
scoreboard objectives add random10 dummy
#scoreboard objectives add random dummy
#scoreboard objectives add randomfor dummy
#地圖場控 遊玩時間 遊玩回合
scoreboard objectives add playgame dummy
scoreboard objectives add gametime dummy
#scoreboard objectives add rglplusplayround dummy

#book1
scoreboard objectives add rglplustime dummy
scoreboard objectives add rglplusround dummy
scoreboard objectives add rglplusmap dummy
scoreboard objectives add rglplusplaymap dummy
scoreboard objectives add rglplusmode dummy

scoreboard objectives add rglplussword dummy
scoreboard objectives add rglplusweapon dummy
scoreboard objectives add rglplusghost dummy
#book2
scoreboard objectives add rglplusgreencount dummy
scoreboard objectives add rglplusredcount dummy
scoreboard objectives add rglplusredtime dummy
scoreboard objectives add rglplusbyself dummy
scoreboard objectives add rglplusredwall dummy
#book2
scoreboard objectives add rglplusghostprop dummy
scoreboard objectives add rglplusaddtime dummy
scoreboard objectives add rglpluskidsword dummy
scoreboard objectives add rglplusalleffect dummy
scoreboard objectives add rglpluskidlife dummy
#book4p1
scoreboard objectives add rglplusqteghost dummy
scoreboard objectives add rglplusqtekid dummy
scoreboard objectives add rglplusbuffghost dummy
scoreboard objectives add rglplusbuffkid dummy
scoreboard objectives add rglplusclearxporb dummy
#book4p2
scoreboard objectives add rglplustouchtime dummy
scoreboard objectives add rglplustouchdis dummy
scoreboard objectives add rglplusglow dummy
scoreboard objectives add rglplusshowdis dummy
scoreboard objectives add rglplusteamdamage dummy
#book4p3
scoreboard objectives add rglplusfalldamage dummy
scoreboard objectives add rglplusautoblood dummy
scoreboard objectives add rglplusdaynight dummy
scoreboard objectives add rglplusrescue dummy
scoreboard objectives add rglplusguardred dummy
#未實裝
scoreboard objectives add rglplusinvulnerable dummy

#scoreboard objectives add openender minecraft.custom:minecraft.open_enderchest
scoreboard objectives add sword1 minecraft.used:minecraft.bone
scoreboard objectives add sword2 minecraft.used:minecraft.iron_sword
scoreboard objectives add sword3 minecraft.used:minecraft.golden_axe
scoreboard objectives add sword4 minecraft.used:minecraft.diamond_sword
scoreboard objectives add sword5 minecraft.used:minecraft.netherite_axe
scoreboard objectives add sword6 minecraft.used:minecraft.trident
scoreboard objectives add sword7 minecraft.used:minecraft.flint_and_steel
scoreboard objectives add sword8 minecraft.used:minecraft.experience_bottle
scoreboard objectives add sword9 minecraft.used:minecraft.experience_bottle
scoreboard objectives add sword10 minecraft.used:minecraft.bow
scoreboard objectives add sword11 minecraft.used:minecraft.crossbow
scoreboard objectives add sword12 minecraft.used:minecraft.chain
scoreboard objectives add sword13 minecraft.used:minecraft.mace
scoreboard objectives add torchcount dummy
scoreboard objectives add propscount dummy
scoreboard objectives add propstime dummy
scoreboard objectives add damaged dummy
scoreboard objectives add attack dummy
scoreboard objectives add usesword dummy "武器使用偵測"
scoreboard objectives add toenddisplay dummy
scoreboard objectives add foodL food
scoreboard objectives add toendtime dummy
scoreboard objectives add rglplus_clearendchest minecraft.custom:minecraft.open_enderchest

scoreboard objectives add throw_id0 dummy
scoreboard objectives add throw_id1 dummy
scoreboard objectives add throw_id2 dummy
scoreboard objectives add throw_id3 dummy

scoreboard objectives add displayhealth health "❤"
scoreboard objectives add rglplusnumber dummy "編號"
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

scoreboard objectives add humanwincount dummy "人類獲勝回合數"
scoreboard objectives add ghostwincount dummy "鬼的獲勝回合數"

scoreboard objectives add rglpluslist dummy ["","RGL+ 資訊列表-Beta1.4"]
scoreboard objectives setdisplay sidebar rglpluslist
scoreboard objectives setdisplay list smallwinpoint
scoreboard objectives setdisplay below_name displayhealth

scoreboard objectives add book_intro trigger
scoreboard objectives add book1 trigger
scoreboard objectives add book2 trigger
scoreboard objectives add book3 trigger
scoreboard objectives add book4 trigger
scoreboard objectives add bookteam trigger

scoreboard players set @a bigwincount 0
scoreboard players set @a smallwinpoint 0
scoreboard players set @e[tag=core,tag=rglplus] playgame -1
scoreboard players set @e[tag=core,tag=rglplus] toendtime -5
#scoreboard players set @e[tag=core,tag=rglplus] toenddisplay 5
scoreboard players set @e[tag=core,tag=rglplus] rglplusnumber 0
scoreboard players set @e[tag=random1,tag=rglplus] rglplusnumber 0

scoreboard players set @e[tag=tick,tag=rglplus] gametime 5
scoreboard players set @e[tag=tick,tag=rglplus] rglplusghost 40
scoreboard players set @e[tag=random1,tag=rglplus] gametime 60
scoreboard players set @e[tag=core,tag=rglplus] rglplustime 240
scoreboard players set @a book1 0

scoreboard players set @e[tag=core,tag=rglplus] rglplusround 1
scoreboard players set @e[tag=random1,tag=rglplus] rglplusround 1
scoreboard players set @e[tag=core,tag=rglplus] rglplusmode 1
scoreboard players set @e[tag=core,tag=rglplus] rglplusmap 1
scoreboard players set @e[tag=core,tag=rglplus] rglplusplaymap 1
scoreboard players set @e[tag=random1,tag=rglplus] rglplusplaymap 1

scoreboard players set @e[tag=core,tag=rglplus] rglplussword 1
scoreboard players set @e[tag=core,tag=rglplus] rglplusweapon 2
scoreboard players set @e[tag=core,tag=rglplus] rglplusghost 1

scoreboard players set @e[tag=core,tag=rglplus] rglplusgreencount 3333
scoreboard players set @e[tag=core,tag=rglplus] rglplusredcount 3333
scoreboard players set @e[tag=core,tag=rglplus] rglplusredtime 3
scoreboard players set @e[tag=rglplus,tag=bookredtime,type=marker] rglplusredtime 3
#scoreboard players operation @e[tag=rglplus,tag=bookredtime,type=marker,limit=1] rglplusredtime = @e[tag=rglplus,tag=core,limit=1] rglplusredtime
scoreboard players set @e[tag=core,tag=rglplus] rglplusbyself 0
scoreboard players set @e[tag=core,tag=rglplus] rglplusredwall 0

scoreboard players set @e[tag=core,tag=rglplus] rglplusghostprop 0
scoreboard players set @e[tag=core,tag=rglplus] rglplusaddtime 0
scoreboard players set @e[tag=core,tag=rglplus] rglpluskidsword 0
scoreboard players set @e[tag=core,tag=rglplus] rglplusalleffect 0
scoreboard players set @e[tag=core,tag=rglplus] rglpluskidlife 3

scoreboard players set @e[tag=core,tag=rglplus] rglplusqteghost 2
scoreboard players set @e[tag=core,tag=rglplus] rglplusqtekid 2
scoreboard players set @e[tag=core,tag=rglplus] rglplusbuffghost 1
scoreboard players set @e[tag=core,tag=rglplus] rglplusbuffkid 1

scoreboard players set @e[tag=random2,tag=rglplus] rglplustouchtime 40
scoreboard players set @e[tag=random1,tag=rglplus] rglplustouchtime 20
scoreboard players set @e[tag=core,tag=rglplus] rglplustouchtime 40
scoreboard players set @e[tag=core,tag=rglplus] rglplustouchdis 10
scoreboard players set @e[tag=core,tag=rglplus] rglplusglow 1
scoreboard players set @e[tag=core,tag=rglplus] rglplusshowdis 1
scoreboard players set @e[tag=core,tag=rglplus] rglplusteamdamage 0

scoreboard players set @e[tag=core,tag=rglplus] rglplusfalldamage 0
scoreboard players set @e[tag=core,tag=rglplus] rglplusautoblood 0
scoreboard players set @e[tag=core,tag=rglplus] rglplusdaynight 0
scoreboard players set @e[tag=core,tag=rglplus] rglplusclearxporb 1
scoreboard players set @e[tag=core,tag=rglplus] rglplusrescue 1
scoreboard players set 7-0-7-0-000100000000 rglplusrescue 1
scoreboard players set @e[tag=core,tag=rglplus] rglplusguardred 1

#scoreboard players set @e[tag=core,tag=rglplus] rglplusuhc 1
#scoreboard players set @e[tag=core,tag=rglplus] rglplusjump 1
#scoreboard players set @e[tag=core,tag=rglplus] rglplushealth 11
#scoreboard players set @e[tag=core,tag=rglplus] rglplusused 7
#scoreboard players set @e[tag=core,tag=rglplus] rglpluskill 25
#scoreboard players set @e[tag=core,tag=rglplus] rglplusself 10
#scoreboard players set @e[tag=core,tag=rglplus] rglplussword 3
#scoreboard players set @e[tag=core,tag=rglplus] rglplusgdis 3
#scoreboard players set @e[tag=core,tag=rglplus] rglplusinventory 2
#scoreboard players set @e[tag=core,tag=rglplus] rglplusfriend 0
#scoreboard players set @e[tag=core,tag=rglplus] rglpluseffect 2
#scoreboard players set @e[tag=core,tag=rglplus] rglplusbuff 4
#scoreboard players set @e[tag=core,tag=rglplus] rglplusglow 7
#scoreboard players set @e[tag=core,tag=rglplus] rglplusgive 20
#scoreboard players set @e[tag=core,tag=rglplus] rglpluscount 10
#scoreboard players set @e[tag=core,tag=rglplus] rglplusfree 25
#scoreboard players set @e[tag=core,tag=rglplus] rglplusgreen 8
#scoreboard players set @e[tag=core,tag=rglplus] rglplustouchdis 10
#scoreboard players set @e[tag=core,tag=rglplus] rglplustouchtime 25
#scoreboard players set @e[tag=core,tag=rglplus] rglplusspecial 0
#scoreboard players set @e[tag=core,tag=rglplus] rglplusrebirth 1
scoreboard players set @e[tag=core,tag=rglplus] rglplusinvulnerable 1
#scoreboard players set @e[tag=core,tag=rglplus] rglplusnewghost 25
#scoreboard players set @e[tag=core,tag=rglplus] rglplusaddheart 2
#scoreboard players set @e[tag=core,tag=rglplus] rglplusdaynight 1
#scoreboard players set @e[tag=core,tag=rglplus] rglplusstickatt 5
#scoreboard players set @e[tag=core,tag=rglplus] rglpluskeepwhite 0
#scoreboard players set @e[tag=random3] rglplustouchtime 20

scoreboard players set @e[tag=random0,tag=rglplus] random10 0
scoreboard players set @e[tag=random1,tag=rglplus] random10 1
scoreboard players set @e[tag=random2,tag=rglplus] random10 2
scoreboard players set @e[tag=random3,tag=rglplus] random10 3
scoreboard players set @e[tag=random4,tag=rglplus] random10 4
scoreboard players set @e[tag=random5,tag=rglplus] random10 5
scoreboard players set @e[tag=random6,tag=rglplus] random10 6
scoreboard players set @e[tag=random7,tag=rglplus] random10 7
scoreboard players set @e[tag=random8,tag=rglplus] random10 8
scoreboard players set @e[tag=random9,tag=rglplus] random10 9

scoreboard players set @e[tag=map1spawn,tag=rglplus] rglplusplaymap 1

execute store result score @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1] rglpluskidlife if entity @a
scoreboard players set @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1,scores={rglpluskidlife=1..3}] rglpluskidlife 1
scoreboard players set @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1,scores={rglpluskidlife=4..7}] rglpluskidlife 2
scoreboard players set @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1,scores={rglpluskidlife=8..12}] rglpluskidlife 3
scoreboard players set @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1,scores={rglpluskidlife=13..}] rglpluskidlife 4
scoreboard players operation @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1] rglpluskidlife *= @e[tag=rglplus,tag=core,limit=1] rglpluskidlife
scoreboard players operation @e[tag=rglplus,tag=random4,limit=1] rglpluskidlife = @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1] rglpluskidlife
scoreboard players set @e[tag=rglplus,tag=random1] rglplusredtime 1

scoreboard players set @a book1 0
scoreboard players set @a book2 0
scoreboard players set @a book3 0
scoreboard players set @a book4 0
execute as @a store result score @s throw_id0 run data get entity @s UUID[0]
execute as @a store result score @s throw_id1 run data get entity @s UUID[1]
execute as @a store result score @s throw_id2 run data get entity @s UUID[2]
execute as @a store result score @s throw_id3 run data get entity @s UUID[3]

#scoreboard players set 目前壞孩子的綠燈總數 rglplusdemolist 0
#scoreboard players set 目前壞孩子的總死亡數 rglplusdemolist 0
#scoreboard players set 剩餘的孩子們 rglplusdemolist 8
#scoreboard players set 在綠燈狀態的孩子 rglplusdemolist 5
#scoreboard players set 在紅燈狀態的孩子 rglplusdemolist 3
#scoreboard players set 壞孩子失敗的總死亡數量 rglplusdemolist 10
#scoreboard players set 壞孩子獲勝的綠燈目標數 rglplusdemolist 50

scoreboard objectives add rglplus_posx dummy "x座標"
scoreboard objectives add rglplus_posy dummy "y座標"
scoreboard objectives add rglplus_posz dummy "z座標"
execute as @e[tag=rglplus,tag=spawn] at @s store result score @s rglplus_posx run data get entity @s Pos[0] 1
execute as @e[tag=rglplus,tag=spawn] at @s store result score @s rglplus_posy run data get entity @s Pos[1] 1
execute as @e[tag=rglplus,tag=spawn] at @s store result score @s rglplus_posz run data get entity @s Pos[2] 1
scoreboard objectives add rglplus_disx dummy "x距離"
scoreboard objectives add rglplus_disy dummy "y距離"
scoreboard objectives add rglplus_disz dummy "z距離"
scoreboard objectives add rglplus_dis dummy "總距離"
scoreboard objectives add rglplus_sqrt dummy
scoreboard players set @e[tag=core,tag=rglplus] rglplus_dis 100
scoreboard players set rglplus2 rglplus_sqrt 2
scoreboard players set rglplus16 rglplus_sqrt 16
scoreboard players set rglplus-1 rglplus_sqrt -1

scoreboard players operation @e[tag=rglplus,tag=tick,limit=1] rglplus_disx = @s rglplus_disx
scoreboard players operation @e[tag=rglplus,tag=tick,limit=1] rglplus_disz = @s rglplus_disz
execute as @e[tag=rglplus,tag=spawn] run scoreboard players operation @s rglplus_disx = @s rglplus_posx
execute as @e[tag=rglplus,tag=spawn] run scoreboard players operation @s rglplus_disz = @s rglplus_posz
execute as @e[tag=rglplus,tag=spawn] run scoreboard players operation @s rglplus_disx /= rglplus16 rglplus_sqrt
execute as @e[tag=rglplus,tag=spawn] run scoreboard players operation @s rglplus_disz /= rglplus16 rglplus_sqrt

####
execute if entity @e[tag=rglplus,tag=core,tag=rgl1.0] run scoreboard players set @e[tag=map2spawn,tag=rglplus] rglplusplaymap 2
execute if entity @e[tag=rglplus,tag=core,tag=rgl1.0] run scoreboard players set @e[tag=map3spawn,tag=rglplus] rglplusplaymap 3
execute if entity @e[tag=rglplus,tag=core,tag=rgl1.0] run scoreboard players set @e[tag=map4spawn,tag=rglplus] rglplusplaymap 4
execute if entity @e[tag=rglplus,tag=core,tag=rgl1.0] run scoreboard players set @e[tag=map5spawn,tag=rglplus] rglplusplaymap 5
execute if entity @e[tag=rglplus,tag=core,tag=rgl1.0] run scoreboard players set @e[tag=map6spawn,tag=rglplus] rglplusplaymap 6
execute if entity @e[tag=rglplus,tag=core,tag=rgl1.0] run scoreboard players set @e[tag=map7spawn,tag=rglplus] rglplusplaymap 7
execute if entity @e[tag=rglplus,tag=core,tag=rgl1.0] run scoreboard players set @e[tag=map8spawn,tag=rglplus] rglplusplaymap 8
execute if entity @e[tag=rglplus,tag=core,tag=rgl1.0] run scoreboard players set @e[tag=map9spawn,tag=rglplus] rglplusplaymap 9
execute if entity @e[tag=rglplus,tag=core,tag=rgl1.0] run scoreboard players set @e[tag=rglplus,tag=random1] rglplusplaymap 8
