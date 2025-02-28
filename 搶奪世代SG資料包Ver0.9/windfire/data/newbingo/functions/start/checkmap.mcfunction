
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-35}] as @a[team=! ] at @s run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:dirt replace air
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-35}] as @a[team=! ] at @s run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:dirt replace #newbingo:flower
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-35}] as @a[team=! ] at @s run fill ~1 ~3 ~1 ~-1 ~-2 ~-1 minecraft:barrier replace air
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-35}] as @a[team=! ] at @s run fill ~1 ~3 ~1 ~-1 ~-2 ~-1 minecraft:barrier replace #newbingo:flower
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-35}] as @a[team=! ] at @s run fill ~ ~3 ~ ~ ~ ~ minecraft:air replace barrier
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-35}] as @a[team=! ] at @s run fill ~1 ~53 ~1 ~-1 ~50 ~-1 minecraft:barrier replace air
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-35}] as @a[team=! ] at @s run fill ~ ~52 ~ ~ ~51 ~ minecraft:air replace barrier
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-33}] run tellraw @a [{"text":"▶▶現在有30秒鐘可以觀察地形","color":"gold"}]
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-25}] if entity @e[tag=random0,scores={bingodeath=0}] as @a at @s run spawnpoint @s ~ ~ ~
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-25}] as @e[tag=teampoint] at @s run tp @s ~ ~51.5 ~
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-20}] as @a at @s run tp @s @e[tag=teampoint,limit=1,sort=nearest]
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-15}] if entity @e[tag=random0,scores={bingodeath=1..5}] as @a at @s run spawnpoint @s ~ ~ ~
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-15}] as @e[tag=teampoint] at @s run tp @s ~ ~-50.5 ~
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-10}] run forceload remove all
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-10}] as @e[tag=random0] at @s run forceload add ~ ~ ~ ~
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-10}] as @e[tag=teampoint] at @s run forceload add ~ ~ ~ ~
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-10}] if entity @e[tag=random0,scores={bingodeath=1..5}] as @e[tag=teampoint] at @s run fill ~1 ~54 ~1 ~-1 255 ~-1 minecraft:barrier replace air
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-7}] run difficulty hard
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-6}] as @a at @s run tp @s ~ ~-50.5 ~ ~ ~
#execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-6}] as @a at @s run tp @s @e[tag=teampoint,limit=1,sort=nearest]
#execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-5}] run title @a actionbar [{"text":"初期小卡頓屬於正常情形","color":"light_purple","bold":"true"}]
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-4}] if entity @e[tag=random0,scores={bingodeath=0}] as @e[tag=teampoint] at @s run fill ~2 ~54 ~2 ~-2 ~49 ~-2 minecraft:air replace barrier
#execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-4}] as @e[tag=teampoint] at @s run spreadplayers ~ ~ 0 1 true @s
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-3}] as @e[tag=teampoint] run data merge entity @s {NoGravity:1}
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-3}] as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.5 0.1
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-2}] as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.7 0.1
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-1}] as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0.9 0.1
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] as @a at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 1 0.1

execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run gamemode survival @a
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] as @e[tag=teampoint] at @s run fill ~3 ~4 ~3 ~-3 ~-3 ~-3 minecraft:air replace barrier
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run effect clear @a
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run effect give @a minecraft:resistance 15 10 true
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run effect give @a minecraft:regeneration 5 99 true
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-3}] run title @a title [{"text":"3","color":"gold"}]
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-2}] run title @a title [{"text":"2","color":"gold"}]
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=-1}] run title @a title [{"text":"1","color":"gold","bold":"true"}]
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run title @a title [{"text":"START","color":"light_purple","bold":"true"}]
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] run tellraw @a ["",{"text":"\nSTART","color":"light_purple","bold":"true"}]

execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=lockjack] run item replace entity phantomXjack armor.head with minecraft:player_head{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],display:{Name:"{\"text\":\"Crown\"}"},SkullOwner:{Id:[I;893672152,756435894,-1587813546,-566941162],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzJiYWYwYzU4OWE2YjU4MzUxMWQ4M2MyNjgyNDA4NDJkMzM2NDc3NGVjOWY1NjZkMWZkNGQzNDljZjQyZmIifX19"}]}}} 1
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingoeffect=1}] run effect give @a minecraft:night_vision 999999 0 true
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingoeffect=2}] run effect give @a minecraft:conduit_power 999999 2 true
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingoeffect=2}] run effect give @a minecraft:dolphins_grace 999999 1 true
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingoeffect=3}] run effect give @a minecraft:luck 999999 6 true
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingoeffect=3}] run effect give @a minecraft:hero_of_the_village 999999 0 true
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingoeffect=4}] run effect give @a minecraft:strength 999999 1 true
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingoeffect=4}] run effect give @a minecraft:slowness 999999 1 true

execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingoweapon=1}] run give @a minecraft:netherite_boots{Enchantments:[{id:"minecraft:frost_walker",lvl:5}],Unbreakable:1}
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingoweapon=2}] run give @a minecraft:elytra{Unbreakable:1}
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingoweapon=3}] run give @a minecraft:netherite_boots{Enchantments:[{id:"minecraft:frost_walker",lvl:5}],Unbreakable:1}
execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingoweapon=3}] run give @a minecraft:elytra{Unbreakable:1}

#execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingolocate=1}] as @a at @s run locate village
#execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingolocate=2}] as @a at @s run locate desert_pyramid
#execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingolocate=3}] as @a at @s run locate mineshaft
#execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingolocate=4}] as @a at @s run locate shipwreck

execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingochest=1}] as @a run loot give @s loot minecraft:chests/spawn
#execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingochest=1}] as @e[tag=teampoint] at @s run setblock ~ ~2 ~ minecraft:chest[type=single,facing=north]{LootTable:"minecraft:chests/spawn"}
#execute if entity @e[tag=tick,nbt={PortalCooldown:20},scores={gametime=0}] if entity @e[tag=random0,scores={bingochest=1}] run title @a actionbar ["",{"text":"◀頭頂有初始物資箱記得開▶","bold":true,"color":"gold"}]
