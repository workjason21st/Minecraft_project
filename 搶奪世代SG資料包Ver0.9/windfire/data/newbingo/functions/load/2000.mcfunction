execute unless entity @a[tag=loaders] if entity @e[tag=random9,scores={load=0}] as @e[tag=random9] at @s run tp @s ~1000 129 ~
execute unless entity @a[tag=loaders] if entity @e[tag=random9,scores={load=0}] as @e[tag=random0] at @s run tp @e[tag=random10] ~500 129 ~-1000
execute unless entity @a[tag=loaders] if entity @e[tag=random9,scores={load=0}] as @e[tag=random0] at @s run tp @a[tag=loader] ~500 129 ~-1000
execute unless entity @a[tag=loaders] unless entity @e[tag=random9,scores={load=2}] run scoreboard players add @e[tag=random9] load 1
execute unless entity @a[tag=loaders] if entity @e[tag=random9,scores={load=2}] run tag @a[tag=loader] add loaders
