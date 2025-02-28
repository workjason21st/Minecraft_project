#登入 永久取得 #mode3 時間結束的都沒判定 除了模式二 沒判定勝利
execute if entity @e[tag=random0,scores={theend=-1}] as @a[tag=!signer] run function newbingo:sign/signer
execute if entity @e[tag=tick,scores={gametime=0..}] if entity @e[tag=random0,scores={theend=0}] as @a[tag=!middlesigner] run function newbingo:sign/sper
#lobby0
execute if entity @e[tag=random0,scores={theend=-1}] run function newbingo:lobby/zero/zero
execute if entity @e[tag=random0,scores={theend=-1}] if entity @a[scores={deathdetect=1..}] run function newbingo:lobby/death
#
execute if entity @e[tag=random0,scores={theend=-1}] unless entity @a[tag=loaders] if entity @a[tag=loader] run function newbingo:load/loader
execute if entity @e[tag=random0,scores={theend=-1,load=-4..-1}] unless entity @a[tag=loader] at @e[tag=random8] run function newbingo:load/load
#隨機
execute if entity @e[tag=random0,scores={theend=-1,bingotarget=1..10,random00=-2..-1,bingorandom=0}] run function newbingo:random/10target
execute if entity @e[tag=random0,scores={theend=-1,bingotarget=1..13,random00=-2..-1,bingorandom=1}] run function newbingo:random/13target
execute if entity @e[tag=random0,scores={theend=-1,bingotarget=1..15,random00=-2..-1,bingorandom=2}] run function newbingo:random/15target
execute if entity @e[tag=random0,tag=randomteam] run function newbingo:team/randomteam
#計時
execute if entity @e[tag=random0,scores={theend=0}] if entity @e[tag=tick,nbt={PortalCooldown:1}] run function newbingo:tick
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-40..0}] run function newbingo:start/checkmap
#加快進行
execute if entity @e[tag=tick,scores={gametime=0..}] run function newbingo:other/mobs
#怪物限制
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0..}] if entity @e[tag=random0,scores={theend=0,bingomax=1..4}] store result score @e[tag=random0,limit=1] monster if entity @e[type=#newbingo:monster]
execute if entity @e[tag=tick,scores={gametime=0..}] if entity @e[tag=random0,scores={theend=0,bingomax=1,monster=30..}] as @e[type=#newbingo:monster,limit=7,sort=random] at @s unless entity @a[distance=..50] run function newbingo:start/death/monster
execute if entity @e[tag=tick,scores={gametime=0..}] if entity @e[tag=random0,scores={theend=0,bingomax=2,monster=50..}] as @e[type=#newbingo:monster,limit=7,sort=random] at @s unless entity @a[distance=..50] run function newbingo:start/death/monster
execute if entity @e[tag=tick,scores={gametime=0..}] if entity @e[tag=random0,scores={theend=0,bingomax=3,monster=80..}] as @e[type=#newbingo:monster,limit=7,sort=random] at @s unless entity @a[distance=..50] run function newbingo:start/death/monster
execute if entity @e[tag=tick,scores={gametime=0..}] if entity @e[tag=random0,scores={theend=0,bingomax=4,monster=100..}] as @e[type=#newbingo:monster,limit=7,sort=random] at @s unless entity @a[distance=..50] run function newbingo:start/death/monster
execute if entity @e[tag=tick,nbt={PortalCooldown:2},scores={gametime=0..}] if entity @e[tag=random0,scores={theend=0,bingomax=1..4,monster=..30}] run gamerule doMobSpawning true
#倒數提醒
execute if entity @e[tag=random0,scores={theend=0,toendtime=..0}] if score @e[tag=random0,limit=1] toenddisplay = @e[tag=random0,limit=1] gametime run function newbingo:end/warn
#mode3
execute if entity @e[tag=random0,scores={bingomode=3,bingosole=0}] if entity @e[tag=tick,scores={gametime=0..}] if entity @a[scores={pointdetects=1}] run function newbingo:start/mode3
execute if entity @e[tag=random0,scores={bingomode=3,bingosole=1}] if entity @e[tag=tick,scores={gametime=0..}] if entity @a[scores={pointdetects=1}] run function newbingo:start/sole/mode3sole
#same
execute if entity @e[tag=random0,scores={bingomode=1,bingosole=0,bingosame=1}] if entity @e[tag=tick,scores={gametime=0..}] if entity @a[scores={pointdetects=1}] run function newbingo:start/addsame
#無獨
execute unless entity @e[tag=random0,scores={bingomode=3}] if entity @e[tag=random0,scores={bingosole=0}] if entity @e[tag=tick,scores={gametime=0..}] if entity @a[scores={pointdetects=1}] run function newbingo:start/addpoint
execute if entity @e[tag=random0,scores={bingosole=0}] if entity @a[tag=nopoint1,tag=!point1s,scores={point1detect=1}] run function newbingo:start/change/changetarget1
execute if entity @e[tag=random0,scores={bingosole=0}] if entity @a[tag=nopoint2,tag=!point2s,scores={point2detect=1}] run function newbingo:start/change/changetarget2
execute if entity @e[tag=random0,scores={bingosole=0}] if entity @a[tag=nopoint3,tag=!point3s,scores={point3detect=1}] run function newbingo:start/change/changetarget3
execute if entity @e[tag=random0,scores={bingosole=0}] if entity @a[tag=nopoint4,tag=!point4s,scores={point4detect=1}] run function newbingo:start/change/changetarget4
execute if entity @e[tag=random0,scores={bingosole=0}] if entity @a[tag=nopoint5,tag=!point5s,scores={point5detect=1}] run function newbingo:start/change/changetarget5
execute if entity @e[tag=random0,scores={bingosole=0}] if entity @a[tag=nopoint6,tag=!point6s,scores={point6detect=1}] run function newbingo:start/change/changetarget6
execute if entity @e[tag=random0,scores={bingosole=0}] if entity @a[tag=nopoint7,tag=!point7s,scores={point7detect=1}] run function newbingo:start/change/changetarget7
execute if entity @e[tag=random0,scores={bingosole=0}] if entity @a[tag=nopoint8,tag=!point8s,scores={point8detect=1}] run function newbingo:start/change/changetarget8
execute if entity @e[tag=random0,scores={bingosole=0}] if entity @a[tag=nopoint9,tag=!point9s,scores={point9detect=1}] run function newbingo:start/change/changetarget9
execute if entity @e[tag=random0,scores={bingosole=0}] if entity @a[tag=nopoint10,tag=!point10s,scores={point10detect=1}] run function newbingo:start/change/changetarget10
execute if entity @e[tag=random0,scores={bingosole=0,bingorandom=1..2}] if entity @a[tag=nopoint11,tag=!point11s,scores={point11detect=1}] run function newbingo:start/change/changetarget11
execute if entity @e[tag=random0,scores={bingosole=0,bingorandom=1..2}] if entity @a[tag=nopoint12,tag=!point12s,scores={point12detect=1}] run function newbingo:start/change/changetarget12
execute if entity @e[tag=random0,scores={bingosole=0,bingorandom=1..2}] if entity @a[tag=nopoint13,tag=!point13s,scores={point13detect=1}] run function newbingo:start/change/changetarget13
execute if entity @e[tag=random0,scores={bingosole=0,bingorandom=2}] if entity @a[tag=nopoint14,tag=!point14s,scores={point14detect=1}] run function newbingo:start/change/changetarget14
execute if entity @e[tag=random0,scores={bingosole=0,bingorandom=2}] if entity @a[tag=nopoint15,tag=!point15s,scores={point15detect=1}] run function newbingo:start/change/changetarget15
execute if entity @e[tag=random0,scores={bingosole=0}] if entity @e[tag=tick,scores={gametime=-1..}] run scoreboard players set @a[scores={pointdetects=1}] pointdetects 0
#有獨
execute unless entity @e[tag=random0,scores={bingomode=3}] if entity @e[tag=random0,scores={bingomode=1,bingosole=1,bingosame=1}] if entity @e[tag=tick,scores={gametime=0..}] if entity @a[scores={pointdetects=1}] run function newbingo:start/sole/samesole

execute unless entity @e[tag=random0,scores={bingomode=3}] if entity @e[tag=random0,scores={bingosole=1}] if entity @e[tag=tick,scores={gametime=0..}] if entity @a[scores={pointdetects=1}] run function newbingo:start/sole/addpointsole
execute unless entity @e[tag=random0,scores={bingomode=3}] if entity @e[tag=random0,scores={bingosole=1}] if entity @a[tag=nopointsole] run function newbingo:start/sole/changetargetsole
execute if entity @e[tag=random0,scores={bingosole=1,bingomode=3}] if entity @a[tag=nopointsole] run function newbingo:start/sole/changemode3
#平手tie
execute if entity @e[tag=tick,scores={gametime=0..}] if entity @e[tag=random0,scores={theend=0,bingorandom=0}] if entity @e[tag=nopoint1] if entity @e[tag=nopoint2] if entity @e[tag=nopoint3] if entity @e[tag=nopoint4] if entity @e[tag=nopoint5] if entity @e[tag=nopoint6] if entity @e[tag=nopoint7] if entity @e[tag=nopoint8] if entity @e[tag=nopoint9] if entity @e[tag=nopoint10] run scoreboard players set @e[tag=random0] theend 10
execute if entity @e[tag=tick,scores={gametime=0..}] if entity @e[tag=random0,scores={theend=0,bingorandom=1}] if entity @e[tag=nopoint1] if entity @e[tag=nopoint2] if entity @e[tag=nopoint3] if entity @e[tag=nopoint4] if entity @e[tag=nopoint5] if entity @e[tag=nopoint6] if entity @e[tag=nopoint7] if entity @e[tag=nopoint8] if entity @e[tag=nopoint9] if entity @e[tag=nopoint10] if entity @e[tag=nopoint11] if entity @e[tag=nopoint12] if entity @e[tag=nopoint13] run scoreboard players set @e[tag=random0] theend 10
execute if entity @e[tag=tick,scores={gametime=0..}] if entity @e[tag=random0,scores={theend=0,bingorandom=2}] if entity @e[tag=nopoint1] if entity @e[tag=nopoint2] if entity @e[tag=nopoint3] if entity @e[tag=nopoint4] if entity @e[tag=nopoint5] if entity @e[tag=nopoint6] if entity @e[tag=nopoint7] if entity @e[tag=nopoint8] if entity @e[tag=nopoint9] if entity @e[tag=nopoint10] if entity @e[tag=nopoint11] if entity @e[tag=nopoint12] if entity @e[tag=nopoint13] if entity @e[tag=nopoint14] if entity @e[tag=nopoint15] run scoreboard players set @e[tag=random0] theend 10
execute if entity @e[tag=tick,scores={gametime=0..}] if entity @e[tag=random0,scores={theend=0}] if score @e[tag=random0,limit=1] gametime >= @e[tag=random0,limit=1] mode2time run scoreboard players set @e[tag=random0] theend 10
execute if entity @e[tag=random0,scores={theend=10}] run function newbingo:end/tiedetect
#end
execute if entity @e[tag=tick,scores={gametime=0..}] if entity @e[tag=random0,scores={theend=0,bingomode=1,bingosame=1}] as @a if score @s teampoint >= @e[tag=random0,limit=1] mode1same run scoreboard players set @e[tag=random0] theend 4
execute if entity @e[tag=tick,scores={gametime=0..}] unless entity @e[tag=random0,scores={bingomode=1,bingosame=1}] unless entity @e[tag=random0,scores={bingomode=3}] if entity @e[tag=random0,scores={theend=0}] as @a if score @s teampoint >= @e[tag=random0,limit=1] mode1point run scoreboard players set @e[tag=random0] theend 1
execute if entity @e[tag=tick,scores={gametime=0..}] if entity @e[tag=random0,scores={theend=0,bingomode=3}] as @e[tag=!random0] if score @s bingosole matches 6.. run scoreboard players set @e[tag=random0] theend 1
execute if entity @e[tag=tick,scores={gametime=0..}] if entity @e[tag=random0,scores={theend=0}] if score @e[tag=random0,limit=1] gametime >= @e[tag=random0,limit=1] mode2time run scoreboard players set @e[tag=random0] theend 1
#endonly
execute if entity @e[tag=tick,scores={gametime=0..}] if entity @e[tag=random0,scores={theend=10,bingosole=1,bingomode=3}] run scoreboard players set @e[tag=random0] theend 3
execute if entity @e[tag=tick,scores={gametime=0..}] if entity @e[tag=random0,scores={theend=10,bingosole=1}] run scoreboard players set @e[tag=random0] theend 2

execute if entity @e[tag=random0,scores={theend=1..9}] run function newbingo:end/end
execute if entity @e[tag=random0,scores={theend=11..}] run function newbingo:end/tie
#deathdetect
execute if entity @e[tag=random0,scores={theend=0}] if entity @e[tag=tick,scores={gametime=0..,deathplayer=1..}] if entity @a[scores={deathdetect=1..,displayhealth=20}] run function newbingo:start/death/deathgive
execute if entity @e[tag=random0,scores={theend=0}] if entity @e[tag=tick,scores={gametime=0..}] store result score @e[tag=tick,limit=1] deathplayer if entity @a[scores={deathdetect=1..}]
#
execute if entity @e[tag=random0,scores={theend=0,bingoweapon=2..3}] if entity @e[tag=tick,scores={gametime=0..}] as @a unless entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket",Count:2b}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket",Count:1b}]}] run clear @s minecraft:firework_rocket
execute if entity @e[tag=random0,scores={theend=0,bingoweapon=2..3}] if entity @e[tag=tick,scores={gametime=0..}] as @a unless entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket",Count:2b}]}] run give @s minecraft:firework_rocket 1
execute if entity @e[tag=random0,scores={theend=0,bingoweapon=2..3}] if entity @e[tag=tick,scores={gametime=0..}] run kill @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}}]
#egg
execute if entity @e[tag=random0,scores={theend=-1}] if entity Fanshing unless entity @e[tag=EGG_Fanshing] run function newbingo:egg/yt/fanshing
execute if entity @e[tag=random0,scores={theend=-1}] if entity Hi_Chocolate unless entity @e[tag=EGG_Hi_Chocolate] run function newbingo:egg/yt/chocolate
execute if entity @e[tag=random0,scores={theend=-1}] if entity Hageeshow unless entity @e[tag=EGG_Hageeshow] run function newbingo:egg/yt/hageeshow
execute if entity @e[tag=random0,scores={theend=-1}] if entity Hsiao_Yui unless entity @e[tag=EGG_Hsiao_Yui] run function newbingo:egg/yt/hsiaoyui
execute if entity @e[tag=random0,scores={theend=-1}] if entity OokoukioO unless entity @e[tag=EGG_OokoukioO] run function newbingo:egg/yt/ookoukioo
execute if entity @e[tag=random0,scores={theend=-1}] if entity Tuan_Tuan unless entity @e[tag=EGG_Tuan_Tuan] run function newbingo:egg/yt/tuantuan
execute if entity @e[tag=random0,scores={theend=-1}] if entity phantomXjack unless entity @e[tag=EGG_phantomXjack] run function newbingo:egg/yt/phantomxjack
execute if entity @e[tag=random0,scores={theend=-1}] if entity oreki20 unless entity @e[tag=EGG_oreki20] run function newbingo:egg/yt/oreki20
execute if entity @e[tag=random0,scores={theend=-1}] if entity bobo_zoe unless entity @e[tag=EGG_bobo_zoe] run function newbingo:egg/yt/bobo_zoe
execute if entity @e[tag=random0,scores={theend=-1}] if entity DMoon1903 unless entity @e[tag=EGG_DMoon1903] run function newbingo:egg/yt/dmoon1903
#
execute if entity @e[tag=random0,scores={theend=0}] if entity @e[tag=lockyui] as @a[scores={killyui=1..}] run function newbingo:egg/event/yui
execute if entity @e[tag=random0,scores={theend=0}] if entity @e[tag=lockyui] as @a[scores={killyuihome=1..}] run function newbingo:egg/event/yui
execute if entity @e[tag=random0,scores={theend=0}] if entity @e[tag=lockhagee] as @a[scores={eathagee=1..}] run function newbingo:egg/event/hagee
execute if entity @e[tag=random0,scores={theend=0}] as @a[scores={sevenegg1=1..}] if entity @s[tag=!sevenegg] run function newbingo:egg/event/seven
execute if entity @e[tag=random0,scores={theend=0}] as @a[scores={sevenegg2=1..}] if entity @s[tag=!sevenegg] run function newbingo:egg/event/seven
execute if entity @e[tag=random0,scores={theend=-1..0}] if entity @e[tag=lock20] run effect give @e minecraft:invisibility 1 0 true
execute if entity @e[tag=random0,scores={theend=-1..0}] if entity @e[tag=lockbobo] as bobo_zoe at @s if entity @a[distance=1..3] run effect give @s minecraft:nausea 6 6 false
#execute if entity WindFire_tw unless entity @e[tag=EGG_WindFire_tw] run function newbingo:egg/windfire
