execute if entity @e[tag=random0,tag=randomteam4] as @a[team=,limit=1,sort=random] run team join yellow @s
execute if entity @e[tag=random0,tag=randomteam4] as @a[team=,limit=1,sort=random] run team join red @s
execute if entity @e[tag=random0,tag=randomteam4] as @a[team=,limit=1,sort=random] run team join green @s
execute if entity @e[tag=random0,tag=randomteam4] as @a[team=,limit=1,sort=random] run team join aqua @s

execute if entity @e[tag=random0,tag=randomteam3] as @a[team=,limit=1,sort=random] run team join yellow @s
execute if entity @e[tag=random0,tag=randomteam3] as @a[team=,limit=1,sort=random] run team join red @s
execute if entity @e[tag=random0,tag=randomteam3] as @a[team=,limit=1,sort=random] run team join green @s

execute if entity @e[tag=random0,tag=randomteam2] as @a[team=,limit=1,sort=random] run team join yellow @s
execute if entity @e[tag=random0,tag=randomteam2] as @a[team=,limit=1,sort=random] run team join red @s

execute unless entity @a[team=] run tag @e[tag=random0,limit=1] remove randomteam4
execute unless entity @a[team=] run tag @e[tag=random0,limit=1] remove randomteam3
execute unless entity @a[team=] run tag @e[tag=random0,limit=1] remove randomteam2
execute unless entity @a[team=] run tag @e[tag=random0,limit=1] remove randomteam
