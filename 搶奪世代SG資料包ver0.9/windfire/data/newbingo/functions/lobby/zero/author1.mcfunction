title @a actionbar [{"text":"作者：","bold":true,"color":"black"},{"selector":"@a[distance=..1]"},{"text":"請不要旋轉我","color":"black"}]
#execute as @a[distance=..1] at @s run loot replace entity @e[tag=lobbyauthor0] weapon.offhand loot newbingo:playerhead
execute as @e[tag=lobbyauthor0] at @s run tp @s ~ ~ ~ ~5 ~
