function rgl:start/scheduleclear
#a
advancement revoke @a only rgl:ghostattack
advancement revoke @a only rgl:byghost
advancement revoke @a only rgl:isluck
advancement revoke @a only rgl:fail
advancement revoke @a only rgl:sword
advancement revoke @a only rgl:sword9
advancement revoke @a only rgl:firework
advancement revoke @a only rgl:enderchest
advancement revoke @a only rgl:death/badbyfriend
advancement revoke @a only rgl:death/badbygood
advancement revoke @a only rgl:death/byfire
advancement revoke @a only rgl:death/byhungry
advancement revoke @a only rgl:death/byself
advancement revoke @a only rgl:death/goodbyfriend
advancement revoke @a only rgl:death/killbybad
#tag
#tag @a remove diebuff
tag @a remove bownoreload
tag @a remove laster
tag @a remove killbad
tag @a remove spyreds
tag @a remove spyred
tag @a remove kidspawn
tag @a remove firstred
tag @a remove damaged
tag @e remove distag
tag @a remove touch
tag @e[tag=core] remove mode4
tag @a remove newpathogen
tag @a remove nowchange
tag @a remove changekinger
tag @a remove changeking
tag @a remove firstpathogen
tag @a remove pathogen
#tag @a remove normal
tag @a remove little
tag @a remove killgood
tag @a remove gooddie
tag @a remove kill9
tag @a remove kill5
tag @a remove kill
tag @a remove spy
tag @a remove green
tag @a remove red
tag @a remove tored
tag @a remove tolime
tag @a remove tolimes
tag @a remove whitechange
tag @a remove nopair
tag @a remove pair1
tag @a remove pair2
tag @a remove todefense
tag @a remove toglow
tag @a remove toslow
tag @a remove tospeed
tag @a remove tostrong
tag @a[team=bad] add green
execute unless entity @e[tag=core,scores={rglmode=9}] run tag @a[team=good] add normal
execute if entity @e[tag=core,scores={rglmode=9}] run tag @a[team=good] add pathogen
execute if entity @e[tag=core,scores={rglmode=9}] run tag @a[team=good] add firstpathogen
execute if entity @e[tag=core,scores={rglmode=9}] run tag @a[team=good] add little
execute if entity @e[tag=core,scores={rglmode=4}] run tag @a[team=good] add green
execute if entity @e[tag=core,scores={rglrebirth=3}] run tag @r[gamemode=adventure,team=bad] add kidspawn
tag @a add middlesigner
#
scoreboard players set 被鬼打 attack 0
scoreboard players set 被鬼打 damaged 0
scoreboard players set 鬼打人 attack 0
scoreboard players reset @a attack
scoreboard players reset @a damaged

scoreboard objectives setdisplay sidebar rgllist
scoreboard objectives setdisplay list displayhealth
scoreboard players set @e[tag=tick] gametime 5
scoreboard players set @e[tag=random2] gametime 0
scoreboard players set @e[tag=random3] gametime 0
scoreboard players set @e[tag=random6] gametime 0
scoreboard players set @a openender 0
scoreboard players set @a sword1 0
scoreboard players set @a sword2 0
scoreboard players set @a sword3 0
scoreboard players set @a sword4 0
scoreboard players set @a sword5 0
scoreboard players set @a sword6 0
scoreboard players set @a sword7 0
scoreboard players set @a sword8 0
scoreboard players set @a sword9 0
scoreboard players set @a sword10 0
scoreboard players set @a sword11 0
scoreboard players set @a usesword 0
scoreboard players set @a usered 0
scoreboard players set @a usegreen 0
scoreboard players set @a begreen 0
scoreboard players set @a killbad 0
scoreboard players set @a killdetect 0
scoreboard players set @a deathdetect 0
scoreboard players set @a deathcount 0
scoreboard players set @a rglcount 0
scoreboard players set @a rglfree 0
scoreboard players set @a changeteam 0
scoreboard players set @a propscount 0
scoreboard players set @a torchcount 0
scoreboard players reset @e throwid0
scoreboard players reset @e throwid1
scoreboard players reset @e throwid2
scoreboard players reset @e throwid3
execute as @a store result score @s throwid0 run data get entity @s UUID[0]
execute as @a store result score @s throwid1 run data get entity @s UUID[1]
execute as @a store result score @s throwid2 run data get entity @s UUID[2]
execute as @a store result score @s throwid3 run data get entity @s UUID[3]
#
execute if entity @e[tag=core,scores={rglspecial=0..3}] run scoreboard players set @a rglspecial 0
execute if entity @e[tag=core,scores={rglspecial=2}] run scoreboard players set @a rglspecial 1

scoreboard players set @e[tag=core] gameend 0
scoreboard players set @e[tag=core] baddead 0
scoreboard players set @e[tag=core] greencount 0

scoreboard players operation @e[tag=random9,limit=1] rglnewghost = @e[tag=core,limit=1] rglnewghost
scoreboard players operation @e[tag=random7,limit=1] rglused = @e[tag=core,limit=1] rglused
scoreboard players operation @e[tag=random5,limit=1] rglhealth = @e[tag=core,limit=1] rglhealth

scoreboard players operation @e[tag=tick,limit=1] rgltime = @e[tag=core,limit=1] rgltime
scoreboard players operation @e[tag=core,limit=1] gametime = @e[tag=core,limit=1] rgltime
scoreboard players operation @e[tag=core,limit=1] gametime *= @e[tag=random1,limit=1] gametime
#減去開始的一分鐘/一秒 Ex:6:00=5:59
execute unless entity @e[tag=core,scores={rglmode=4}] run scoreboard players operation @e[tag=tick,limit=1] rgltime -= @e[tag=random1,limit=1] random10
execute unless entity @e[tag=core,scores={rglmode=4}] run scoreboard players operation @e[tag=core,limit=1] gametime -= @e[tag=random1,limit=1] random10

scoreboard players operation @e[tag=random6,limit=1] rglcount = @e[tag=core,limit=1] rglcount
execute store result score @e[tag=core,limit=1] laster if entity @a[team=bad,gamemode=adventure]
scoreboard players operation @e[tag=core,limit=1] rglcount *= @e[tag=core,limit=1] laster
execute if entity @e[tag=core,scores={rglmode=1..16}] run scoreboard players reset 壞孩子失敗的總死亡數量 rgllist
execute if entity @e[tag=core,scores={rglmode=1..16}] run scoreboard players reset 目前壞孩子的總死亡數 rgllist
execute if entity @e[tag=core,scores={rglmode=5..6}] run scoreboard players operation 壞孩子失敗的總死亡數量 rgllist = @e[tag=core,limit=1] rglhealth
execute if entity @e[tag=core,scores={rglmode=5..6}] run scoreboard players set 目前壞孩子的總死亡數 rgllist 0
execute if entity @e[tag=core,scores={rglmode=1..16}] run scoreboard players reset 壞孩子獲勝的綠燈目標數 rgllist
execute if entity @e[tag=core,scores={rglmode=1..16}] run scoreboard players reset 目前壞孩子的綠燈總數 rgllist
execute if entity @e[tag=core,scores={rglmode=6}] run scoreboard players operation 壞孩子獲勝的綠燈目標數 rgllist = @e[tag=core,limit=1] rglcount
execute if entity @e[tag=core,scores={rglmode=6}] run scoreboard players set 目前壞孩子的綠燈總數 rgllist 0
execute unless entity @e[tag=core,scores={rglspecial=3}] run scoreboard players reset 在場上鬼的數量 rgllist
execute as @a[team=bad] run scoreboard players operation @s rglused = @e[tag=core,limit=1] rglused
execute as @a[team=bad] run scoreboard players operation @s rglgreen = @e[tag=core,limit=1] rglgreen
#
bossbar set rgl:time max 5
bossbar set rgl:time value 5
bossbar set rgl:time players @a
bossbar set rgl:time visible true
bossbar set rgl:touch players @a
