#effect
execute if entity @e[tag=random0,scores={bingoeffect=1}] run effect give @a[scores={deathdetect=1..,displayhealth=20}] minecraft:night_vision 999999 0 true
execute if entity @e[tag=random0,scores={bingoeffect=2}] run effect give @a[scores={deathdetect=1..,displayhealth=20}] minecraft:conduit_power 999999 2 true
execute if entity @e[tag=random0,scores={bingoeffect=2}] run effect give @a[scores={deathdetect=1..,displayhealth=20}] minecraft:dolphins_grace 999999 1 true
execute if entity @e[tag=random0,scores={bingoeffect=3}] run effect give @a[scores={deathdetect=1..,displayhealth=20}] minecraft:luck 999999 6 true
execute if entity @e[tag=random0,scores={bingoeffect=3}] run effect give @a[scores={deathdetect=1..,displayhealth=20}] minecraft:hero_of_the_village 999999 0 true
execute if entity @e[tag=random0,scores={bingoeffect=4}] run effect give @a[scores={deathdetect=1..,displayhealth=20}] minecraft:strength 999999 1 true
execute if entity @e[tag=random0,scores={bingoeffect=4}] run effect give @a[scores={deathdetect=1..,displayhealth=20}] minecraft:slowness 999999 1 true
#
execute if entity @e[tag=lockjack] run item replace entity @a[name=phantomXjack,scores={deathdetect=1..,displayhealth=20}] armor.head with minecraft:player_head{Enchantments:[{id:"minecraft:binding_curse",lvl:1}],display:{Name:"{\"text\":\"Crown\"}"},SkullOwner:{Id:[I;893672152,756435894,-1587813546,-566941162],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzJiYWYwYzU4OWE2YjU4MzUxMWQ4M2MyNjgyNDA4NDJkMzM2NDc3NGVjOWY1NjZkMWZkNGQzNDljZjQyZmIifX19"}]}}} 1
#give
execute if entity @e[tag=random0,scores={bingoweapon=1,bingokeep=0}] run give @a[scores={deathdetect=1..,displayhealth=20}] minecraft:netherite_boots{Enchantments:[{id:"minecraft:frost_walker",lvl:5}],Unbreakable:1}
execute if entity @e[tag=random0,scores={bingoweapon=2,bingokeep=0}] run give @a[scores={deathdetect=1..,displayhealth=20}] minecraft:elytra{Unbreakable:1}
execute if entity @e[tag=random0,scores={bingoweapon=3,bingokeep=0}] run give @a[scores={deathdetect=1..,displayhealth=20}] minecraft:netherite_boots{Enchantments:[{id:"minecraft:frost_walker",lvl:5}],Unbreakable:1}
execute if entity @e[tag=random0,scores={bingoweapon=3,bingokeep=0}] run give @a[scores={deathdetect=1..,displayhealth=20}] minecraft:elytra{Unbreakable:1}
#deathdeduct1
execute if entity @e[tag=random0,tag=deathdeduct1] run function newbingo:start/death/deduct
execute if entity @e[tag=random0,tag=deathdeduct2] run function newbingo:start/death/deduct
execute if entity @e[tag=random0,tag=deathdeduct3] run function newbingo:start/death/deduct
#deathtime
execute if entity @e[tag=random0,scores={bingodeath=1..5}] run tellraw @a[scores={deathdetect=1..,displayhealth=20,bingodeath=-1}] ["",{"text":"\n「系統提示」： ","bold":true,"color":"dark_purple"},{"text":"請耐心等待重生時間"}]
execute if entity @e[tag=random0,scores={bingodeath=1}] run scoreboard players set @a[scores={deathdetect=1..,displayhealth=20,bingodeath=-1}] bingodeath 5
execute if entity @e[tag=random0,scores={bingodeath=2}] run scoreboard players set @a[scores={deathdetect=1..,displayhealth=20,bingodeath=-1}] bingodeath 10
execute if entity @e[tag=random0,scores={bingodeath=3}] run scoreboard players set @a[scores={deathdetect=1..,displayhealth=20,bingodeath=-1}] bingodeath 20
execute if entity @e[tag=random0,scores={bingodeath=4}] run scoreboard players set @a[scores={deathdetect=1..,displayhealth=20,bingodeath=-1}] bingodeath 30
execute if entity @e[tag=random0,scores={bingodeath=5}] run scoreboard players set @a[scores={deathdetect=1..,displayhealth=20,bingodeath=-1}] bingodeath 60

execute as @a[scores={deathdetect=1..,displayhealth=20}] run scoreboard players set @s deathdetect 0
