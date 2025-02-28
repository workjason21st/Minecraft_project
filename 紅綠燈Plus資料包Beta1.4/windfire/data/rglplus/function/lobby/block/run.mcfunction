tellraw @a[gamemode=!creative] ["",{"text":"『大廳』","color":"white"},{"selector":"@s"},{"text":"成功到達跑酷終點","color":"yellow"}]
tellraw @s[tag=!eggboot] ["",{"text":"『密語』","color":"white"},{"text":"得到一個漂移靴","color":"yellow"}]
give @s[tag=!eggboot] minecraft:golden_boots[unbreakable={},custom_name='["",{"text":"漂移靴","bold":true,"color":"gold"}]',enchantments={levels:{fortune:7}}] 1
tag @s add eggboot
