tellraw @a ["",{"text":"『大廳』","bold":true,"color":"blue"},{"selector":"@a[gamemode=!creative,distance=..1]"},{"text":"意外得到一些東西","color":"green"}]
execute as @a[gamemode=!creative,distance=..1] run loot give @s loot newbingo:playerhead
execute as @a[gamemode=!creative,distance=..1] run loot replace entity @a[distance=..1] armor.head loot newbingo:playerhead
give @a[gamemode=!creative,distance=..1] snowball 7
tp @a[gamemode=!creative,distance=..1] @e[tag=random0,limit=1]
