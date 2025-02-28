execute as @e[type=minecraft:pufferfish] at @s if block ~ ~-1 ~ shroomlight run tp @s 113 30 108
execute as @e[type=minecraft:pufferfish] at @s if block ~ ~-1 ~ netherrack run tp @s 113 30 108
execute as @e[type=minecraft:pufferfish] at @s if block ~ ~-1 ~ gilded_blackstone run tp @s 113 30 108
#
execute if entity @e[tag=mainAI,tag=randomteam] run function bump:team/randomteam
#
execute if entity @e[tag=mainAI,scores={startgame=1}] if entity @e[tag=solespawn,tag=!spawnplayer] run function bump:team/randomspwan
execute if entity @e[tag=mainAI,scores={startgame=1..2}] as @a[nbt={RootVehicle:{Entity:{id:"minecraft:strider"}}}] run tag @s add ready
execute if entity @e[tag=mainAI,scores={startgame=1..2}] as @a[tag=ready] unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:strider"}}}] run tag @s remove ready
execute if entity @e[tag=mainAI,scores={startgame=1..2}] as @a[tag=ready] run scoreboard players set @s check 1
execute if entity @e[tag=mainAI,scores={startgame=1..2}] as @a[tag=!ready] run scoreboard players set @s check 0
execute if entity @e[tag=mainAI,scores={startgame=1}] unless entity @a[gamemode=adventure,scores={check=0}] run function bump:start/start
#
#execute if entity @e[tag=mainAI,scores={startgame=1..2}] as @e[tag=ai] at @s run summon minecraft:snowball ~ ~2.5 ~ {Silent:1,Invisible:1,PersistenceRequired:1}
execute if entity @e[tag=mainAI,scores={startgame=1..2}] if entity @e[type=minecraft:snowball,limit=1,tag=!beball] run tag @a[limit=1,gamemode=adventure] add beball
execute if entity @e[tag=mainAI,scores={startgame=1..2}] as @e[type=minecraft:snowball,limit=1,tag=!beball] run data modify entity @s Owner set from entity @a[limit=1,gamemode=adventure,tag=beball,tag=!beballs] UUID
#execute if entity @e[tag=mainAI,scores={startgame=1..2}] as @e[type=minecraft:snowball,limit=1,tag=!beball] run tag @s add beball
#execute if entity @e[tag=mainAI,scores={startgame=1..2}] if entity @e[type=minecraft:snowball,limit=1,tag=beball] as @e[tag=ai,limit=1,tag=!beball] run tag @s add beball
execute if entity @e[tag=mainAI,scores={startgame=1..2}] if entity @e[type=minecraft:snowball,limit=1,tag=!beball] run tag @a[limit=1,gamemode=adventure,tag=beball,tag=!beballs] add beballs
#kill
execute if entity @e[tag=mainAI,scores={startgame=2,bumpkill=1}] as @a[gamemode=adventure,scores={check=0}] run kill @s
execute if entity @e[tag=mainAI,scores={startgame=2,bumpkill=2}] as @a[gamemode=adventure,scores={check=0}] run effect give @s minecraft:wither 1 3
execute if entity @e[tag=mainAI,scores={startgame=2,bumpkill=1}] as @e[tag=ai] at @s unless block ~ ~-0.1 ~ air unless block ~ ~-0.1 ~ water unless block ~ ~-0.1 ~ #minecraft:banners run kill @s
execute if entity @e[tag=mainAI,scores={startgame=2,bumpkill=2}] as @e[tag=ai] at @s unless block ~ ~-0.1 ~ air unless block ~ ~-0.1 ~ water unless block ~ ~-0.1 ~ #minecraft:banners run effect give @s minecraft:wither 1 3
##died
execute if entity @e[tag=mainAI,scores={bumpmode=2}] as @a[nbt={RootVehicle:{Entity:{id:"minecraft:strider"}}}] run effect give @s minecraft:resistance 1 10 true
execute if entity @e[tag=mainAI,scores={startgame=2}] as @a[scores={deathCount=1..}] run function bump:start/died

execute if entity @e[tag=mainAI,scores={startgame=2}] store result score @e[tag=mainAI,limit=1] win if entity @e[tag=wins]
#execute if entity @e[tag=mainAI,scores={startgame=2}] store result score @e[tag=mainAI,limit=1,tag=isteam] win if entity @e[tag=teamwin]
#execute if entity @e[tag=mainAI,scores={startgame=2}] store result score @e[tag=mainAI,limit=1,tag=!isteam] win if entity @e[tag=solewin]

execute if entity @e[tag=mainAI,scores={startgame=2,endgame=0,win=..1}] run function bump:start/end

execute if entity @e[tag=mainAI,scores={endgame=-1}] as @a[gamemode=survival] run gamemode adventure @s
execute if entity @e[tag=mainAI,scores={endgame=-1}] as @a[gamemode=adventure] at @s if block ~ ~ ~ lava run tp @s 112 32 112
execute if entity @e[tag=mainAI,scores={endgame=-1}] as @a[gamemode=adventure] at @s if block ~ ~ ~ water run tp @s 112 32 112
execute if entity @e[tag=mainAI,scores={endgame=-1}] as @a[gamemode=creative] at @s if block ~ ~2 ~ twisting_vines_plant run tp @s ~ ~1 ~
execute if entity @e[tag=mainAI,scores={endgame=-1}] run effect give @a minecraft:saturation 999999 0 true
execute if entity @e[tag=mainAI,scores={endgame=-1}] run effect give @a minecraft:regeneration 999999 127 true

execute if entity @e[tag=mainAI,scores={startgame=2}] store result score @e[tag=mainAI,limit=1] yellowplayer if entity @a[team=yellow,gamemode=adventure]
execute if entity @e[tag=mainAI,scores={startgame=2}] store result score @e[tag=mainAI,limit=1] redplayer if entity @a[team=red,gamemode=adventure]
execute if entity @e[tag=mainAI,scores={startgame=2}] store result score @e[tag=mainAI,limit=1] greenplayer if entity @a[team=green,gamemode=adventure]
execute if entity @e[tag=mainAI,scores={startgame=2}] store result score @e[tag=mainAI,limit=1] aquaplayer if entity @a[team=aqua,gamemode=adventure]
execute if entity @e[tag=mainAI,scores={startgame=2}] store result score @e[tag=mainAI,limit=1] soleplayer if entity @a[team=,gamemode=adventure]
execute if entity @e[tag=mainAI,scores={startgame=2}] store result score @e[tag=mainAI,limit=1] aiplayer if entity @e[tag=ai]

execute if entity @e[tag=mainAI,scores={startgame=2}] store result score @e[tag=mainAI,limit=1] players if entity @a[gamemode=adventure]

execute if entity @e[tag=mainAI,scores={startgame=2}] run scoreboard players operation 黃隊存活人數 bumplist = @e[tag=mainAI,limit=1] yellowplayer
execute if entity @e[tag=mainAI,scores={startgame=2}] run scoreboard players operation 紅隊存活人數 bumplist = @e[tag=mainAI,limit=1] redplayer
execute if entity @e[tag=mainAI,scores={startgame=2}] run scoreboard players operation 綠隊存活人數 bumplist = @e[tag=mainAI,limit=1] greenplayer
execute if entity @e[tag=mainAI,scores={startgame=2}] run scoreboard players operation 藍隊存活人數 bumplist = @e[tag=mainAI,limit=1] aquaplayer
execute if entity @e[tag=mainAI,scores={startgame=2}] run scoreboard players operation 單排剩餘人數 bumplist = @e[tag=mainAI,limit=1] soleplayer
#execute if entity @e[tag=mainAI,scores={startgame=2}] run scoreboard players operation 電腦剩餘人數 bumplist = @e[tag=mainAI,limit=1] aiplayer
execute if entity @e[tag=mainAI,scores={startgame=2}] run scoreboard players operation 玩家總存活人數 bumplist = @e[tag=mainAI,limit=1] players

execute if entity @e[tag=mainAI,scores={startgame=2,bumphurt=1}] run function bump:start/hurt
#
execute if entity @e[tag=mainAI,scores={startgame=1..2}] if entity @e[tag=mainAI,scores={bumpsword=4}] as @a unless entity @s[nbt={Inventory:[{id:"minecraft:splash_potion",Count:1b}]}] run clear @s minecraft:splash_potion
execute if entity @e[tag=mainAI,scores={startgame=1..2}] if entity @e[tag=mainAI,scores={bumpsword=4}] as @a unless entity @s[nbt={Inventory:[{id:"minecraft:splash_potion",Count:1b}]}] run give @s minecraft:splash_potion{CustomPotionColor:11141290,CustomPotionEffects:[{Id:7,Amplifier:0,Duration:20}]} 1
execute if entity @e[tag=mainAI,scores={startgame=1..2}] if entity @e[tag=mainAI,scores={bumpsword=4}] run kill @e[type=item,nbt={Item:{id:"minecraft:splash_potion"}}]
execute if entity @e[tag=mainAI,scores={startgame=1..2}] if entity @e[tag=mainAI,scores={bumpsword=5}] as @a unless entity @s[nbt={Inventory:[{id:"minecraft:lingering_potion",Count:1b}]}] run clear @s minecraft:lingering_potion
execute if entity @e[tag=mainAI,scores={startgame=1..2}] if entity @e[tag=mainAI,scores={bumpsword=5}] as @a unless entity @s[nbt={Inventory:[{id:"minecraft:lingering_potion",Count:1b}]}] run give @s minecraft:lingering_potion{CustomPotionColor:11141290,CustomPotionEffects:[{Id:20,Amplifier:1,Duration:140}]} 1
execute if entity @e[tag=mainAI,scores={startgame=1..2}] if entity @e[tag=mainAI,scores={bumpsword=5}] run kill @e[type=item,nbt={Item:{id:"minecraft:lingering_potion"}}]
execute if entity @e[tag=mainAI,scores={startgame=1..2}] if entity @e[tag=mainAI,scores={bumpsword=8}] as @a if entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket",Count:4b}]}] run clear @s minecraft:firework_rocket 2
execute if entity @e[tag=mainAI,scores={startgame=1..2}] if entity @e[tag=mainAI,scores={bumpsword=8}] as @a unless entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket",Count:2b}]}] run give @s firework_rocket{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[I;1973019,15790320],FadeColors:[I;11743532,3887386,14602026,6719955]}]},display:{Lore:["{\"text\":\"提醒：我在副手才能裝填呦\",\"color\":\"gold\"}"]},HideFlags:32} 2
execute if entity @e[tag=mainAI,scores={startgame=1..2}] if entity @e[tag=mainAI,scores={bumpsword=8}] as @a if entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket",Count:1b}]}] run give @s firework_rocket{Fireworks:{Flight:2,Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[I;1973019,15790320],FadeColors:[I;11743532,3887386,14602026,6719955]}]},display:{Lore:["{\"text\":\"提醒：我在副手才能裝填呦\",\"color\":\"gold\"}"]},HideFlags:32} 1
execute if entity @e[tag=mainAI,scores={startgame=1..2}] if entity @e[tag=mainAI,scores={bumpsword=8}] run kill @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}}]
#
execute as @a[scores={egg=1}] run give @s minecraft:warped_fungus_on_a_stick
execute as @a[scores={egg=1}] run tag @s[tag=!egg1] add egg1
execute as @a[scores={egg=1}] run scoreboard players set @s egg 0
#
#/gamerule sendCommandFeedback false
#/scoreboard objectives setdisplay sidebar bumplist