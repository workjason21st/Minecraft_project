execute as @a[gamemode=adventure,tag=red,tag=!green,team=humanred] at @s unless entity @n[type=minecraft:zombie,tag=rglplusname,distance=..0.5] run tp @s @n[type=minecraft:zombie,tag=rglplusname]
execute as @a[gamemode=adventure,tag=red,tag=!green,team=humanred] at @s unless entity @n[type=minecraft:zombie,tag=rglplusname,distance=..1] run schedule function rglplus:role/red/notmove 1t
execute unless entity @a[gamemode=adventure,tag=red,tag=!green,team=humanred] run schedule clear rglplus:role/red/notmove
