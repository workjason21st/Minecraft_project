#a
advancement revoke @a only rglplus:isluck
advancement revoke @a only rglplus:fail
advancement revoke @a only rglplus:sword
advancement revoke @a only rglplus:sword_infect
advancement revoke @a only rglplus:enderchest
advancement revoke @a only rglplus:byghost_trident
#advancement revoke @a only rglplus:ghostattack_exp
advancement revoke @a only rglplus:ghostattack
advancement revoke @a only rglplus:byghost
advancement revoke @a only rglplus:experience
advancement revoke @a only rglplus:tippedarrow
advancement revoke @a only rglplus:firework
advancement revoke @a only rglplus:hurt/bone
advancement revoke @a only rglplus:hurt/chain
advancement revoke @a only rglplus:hurt/flintsteel
advancement revoke @a only rglplus:hurt/snowball
advancement revoke @a only rglplus:death/badbyfriend
advancement revoke @a only rglplus:death/badbygood
advancement revoke @a only rglplus:death/bydrown
advancement revoke @a only rglplus:death/byexpdamage
advancement revoke @a only rglplus:death/byfall
advancement revoke @a only rglplus:death/byfire
advancement revoke @a only rglplus:death/byhungry
advancement revoke @a only rglplus:death/byself
advancement revoke @a only rglplus:death/goodbyfriend
advancement revoke @a only rglplus:death/killbyhuman
#tag
#tag @a remove diebuff
tag @a remove expdeath
tag @a remove bownoreload
tag @a remove laster
tag @a remove killbad
tag @a remove killghost
tag @a remove spyreds
tag @a remove spyred
tag @a remove kidspawn
tag @a remove firstred
tag @a remove damaged
tag @e remove distag
tag @e remove distag90
tag @e remove distag200
tag @e remove distag500
tag @a remove xpwither
tag @a remove touch
tag @a remove newpathogen
tag @a remove nowchange
tag @a remove changekinger
tag @a remove changeking
tag @a remove firstpathogen
tag @a remove pathogen
tag @a remove normal
tag @a remove little
tag @a remove killgood
tag @a remove gooddie
tag @a remove kill4
tag @a remove kill2
tag @a remove kill
tag @a remove green
tag @a remove red
tag @a remove glower
tag @a remove tored
tag @a remove tolime
tag @a remove tolimes
tag @a remove notolime
tag @a remove whitechange
tag @a remove nopair
tag @a remove pair1
tag @a remove pair2
tag @a remove todefense
tag @a remove toglow
tag @a remove toslow
tag @a remove tospeed
tag @a remove tostrong
tag @a remove tolong
tag @a remove tolongtime
tag @a[team=human] add green
tag @e[tag=rglplus,tag=core] remove rglplus_countdown
execute unless entity @e[tag=rglplus,tag=core,scores={rglplusmode=2}] run tag @a[team=ghost] add normal
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=2}] run tag @a[team=ghost] add pathogen
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=2}] run tag @a[team=ghost] add firstpathogen
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=2}] run tag @a[team=ghost] add little
#execute if entity @e[tag=rglplus,tag=core,scores={rglrebirth=3}] run tag @r[gamemode=adventure,team=human] add kidspawn
tag @a add middlesigner
#
scoreboard players reset 接近鬼剩餘秒數(已完成) rglpluslist
scoreboard players set 被鬼打 attack 0
scoreboard players set 被鬼打 damaged 0
scoreboard players set 鬼打人 attack 0
scoreboard players reset @a attack
scoreboard players reset @a damaged

scoreboard objectives setdisplay sidebar rglpluslist
scoreboard objectives setdisplay list displayhealth
scoreboard players set @a rglpluskidlife 0
scoreboard players set @a rglplusredtime 0
scoreboard players set @a rglplusbyself 0

scoreboard players set @a rglplus_clearendchest 0
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
execute as @a run trigger book1 set 0

execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard objectives remove usered
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard objectives remove usegreen
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard objectives remove begreen
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard objectives remove killbad
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard objectives remove deathcount
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard objectives remove changeteam
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard objectives remove humanwincount
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard objectives remove ghostwincount
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard objectives add usered dummy "使用紅燈"
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard objectives add usegreen dummy "使用綠燈"
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard objectives add begreen dummy "被使用綠燈"
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard objectives add killbad playerKillCount "殺壞蛋"
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard objectives add deathcount dummy "死亡數"
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard objectives add changeteam dummy "換陣營"
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard objectives add humanwincount dummy "人類獲勝回合數"
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard objectives add ghostwincount dummy "鬼的獲勝回合數"
scoreboard players set @a killdetect 0
scoreboard players set @a deathdetect 0
scoreboard players set @a usesword 0
scoreboard players set @a propscount 0
scoreboard players set @a propstime 0
scoreboard players set @a torchcount 0
scoreboard players set @a rglplusclearxporb 0
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard players set @a usered 0
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard players set @a usegreen 0
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard players set @a begreen 0
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard players set @a killbad 0
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard players set @a deathcount 0
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard players set @a changeteam 0
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard players set @a humanwincount 0
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard players set @a ghostwincount 0

execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard players set @e[tag=rglplus,tag=random1] humanwincount 0
execute if entity @e[tag=rglplus,tag=random1,scores={rglplusround=1}] run scoreboard players set @e[tag=rglplus,tag=random1] ghostwincount 0
scoreboard players set @e[tag=rglplus,tag=tick] rglplusghost 40
scoreboard players reset @e throw_id0
scoreboard players reset @e throw_id1
scoreboard players reset @e throw_id2
scoreboard players reset @e throw_id3
execute as @a store result score @s throw_id0 run data get entity @s UUID[0]
execute as @a store result score @s throw_id1 run data get entity @s UUID[1]
execute as @a store result score @s throw_id2 run data get entity @s UUID[2]
execute as @a store result score @s throw_id3 run data get entity @s UUID[3]
#

scoreboard players set @e[tag=rglplus,tag=core] playgame 0
scoreboard players set @e[tag=rglplus,tag=core] baddead 0

#使用限制
execute as @a[team=human] run scoreboard players operation @s rglplusgreencount = @e[tag=rglplus,tag=core,limit=1] rglplusgreencount
execute as @a[team=human] run scoreboard players operation @s rglplusredcount = @e[tag=rglplus,tag=core,limit=1] rglplusredcount
scoreboard players operation @e[tag=rglplus,tag=random1,limit=1] rglplusredcount = @e[tag=rglplus,tag=core,limit=1] rglplusredcount
execute as @a[team=human] run scoreboard players operation @s rglplusredwall = @e[tag=rglplus,tag=core,limit=1] rglplusredwall

#scoreboard players operation @e[tag=rglplus,tag=random9,limit=1] rglnewghost = @e[tag=rglplus,tag=core,limit=1] rglnewghost
scoreboard players operation @e[tag=rglplus,tag=random1,limit=1] rglplusgreencount = @e[tag=rglplus,tag=core,limit=1] rglplusgreencount
scoreboard players operation @e[tag=rglplus,tag=random1,limit=1] rglplusredcount = @e[tag=rglplus,tag=core,limit=1] rglplusredcount

execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=4,rglplusalleffect=0}] run scoreboard players operation 壞孩子個人復活數限制 rglpluslist = @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1] rglpluskidlife
execute unless entity @e[tag=rglplus,tag=core,scores={rglplusmode=4,rglplusalleffect=0}] run scoreboard players reset 壞孩子個人復活數限制 rglpluslist
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=4,rglplusalleffect=1}] run scoreboard players set @e[tag=rglplus,tag=random4,limit=1] rglpluskidlife 0
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=4,rglplusalleffect=1}] run scoreboard players operation 壞孩子失敗的總復活數 rglpluslist = @e[tag=rglplus,tag=bookkidlife,type=marker,limit=1] rglpluskidlife
execute if entity @e[tag=rglplus,tag=core,scores={rglplusmode=4,rglplusalleffect=1}] run scoreboard players operation 壞孩子失敗的總復活數 rglpluslist *= 7-0-7-0-000700000007 laster
execute unless entity @e[tag=rglplus,tag=core,scores={rglplusmode=4,rglplusalleffect=1}] run scoreboard players reset 壞孩子失敗的總復活數 rglpluslist
execute unless entity @e[tag=rglplus,tag=core,scores={rglplusmode=4,rglplusalleffect=1}] run scoreboard players reset 目前壞孩子的總復活數 rglpluslist
