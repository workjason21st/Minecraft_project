execute as @a[gamemode=adventure,team=human,level=1..,predicate=!rglplus:detect/isexp] run tag @s add xpwither
#execute as @a[tag=xpwither] at @s as @p[team=ghost,gamemode=!spectator] run effect give @p[tag=xpwither] minecraft:wither 2 3 false
execute as @a[tag=xpwither] at @s run damage @s 4 minecraft:wither_skull by @p[team=ghost,gamemode=!spectator]
xp add @a[tag=xpwither] -7
tag @a[tag=xpwither] remove xpwither
