
#execute at @s run spawnpoint @s 200 36 200
#execute at @s run kill @e[type=minecraft:strider,sort=nearest,limit=1]
gamemode spectator @s
#execute as @a[gamemode=spectator,scores={deathCount=1..}] run tp @s 200 36 200
#execute if entity @e[tag=mainAI,scores={startgame=2}] as @e[tag=ai] at @s run summon minecraft:snowball ~ ~2.5 ~ {Silent:1,Invisible:1,PersistenceRequired:1}
execute if entity @a[team=,gamemode=spectator,scores={deathCount=1..}] run kill @e[tag=solewin,limit=1]
scoreboard players set @s[gamemode=spectator,scores={deathCount=1..}] deathCount -9

execute unless entity @a[team=yellow,gamemode=adventure] run kill @e[tag=teamyellowwin]
execute unless entity @a[team=red,gamemode=adventure] run kill @e[tag=teamredwin]
execute unless entity @a[team=green,gamemode=adventure] run kill @e[tag=teamgreenwin]
execute unless entity @a[team=aqua,gamemode=adventure] run kill @e[tag=teamaquawin]
execute unless entity @e[tag=ai] run kill @e[tag=aiwin]