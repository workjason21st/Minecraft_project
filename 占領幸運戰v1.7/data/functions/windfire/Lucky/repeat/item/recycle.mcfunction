#----------商店物品掉落回收----------------
execute @e[type=item,tag=recycle] ~ ~ ~ detect ~-1 ~ ~ minecraft:lit_pumpkin 1 entitydata @s {PickupDelay:0}
execute @e[type=item,tag=recycle] ~ ~ ~ detect ~-1 ~ ~ minecraft:lit_pumpkin 1 tp @s ~-2.5 ~ ~
execute @e[type=item,tag=recycle] ~ ~ ~ detect ~1 ~ ~ minecraft:lit_pumpkin 3 entitydata @s {PickupDelay:0}
execute @e[type=item,tag=recycle] ~ ~ ~ detect ~1 ~ ~ minecraft:lit_pumpkin 3 tp @s ~2.5 ~ ~