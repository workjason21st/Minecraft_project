execute as @e[tag=rglplus,tag=touchtick] store result entity @s PortalCooldown int 1 run scoreboard players get @e[tag=rglplus,tag=random3,limit=1] rglplustouchtime
tag @a[team=human,tag=!touch] add touch
