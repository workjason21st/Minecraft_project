#bookteam
scoreboard players enable @a[scores={bookteam=1..5}] bookteam
execute as @s[scores={bookteam=5}] run give @a written_book[written_book_content={pages:["[\"\",{\"text\":\"紅綠燈\",\"bold\":true,\"color\":\"gold\"},\" - 孩子裡有鬼出沒\",\"\\n\",\"\\n\",{\"text\":\">點我成為孩子<\",\"bold\":true,\"color\":\"blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger bookteam set 1\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"text\":\"點擊更改自身的分隊\",\"bold\":true,\"color\":\"white\"}]}},\"\\n\",\"\\n\",{\"text\":\">點我成為鬼<\",\"bold\":true,\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger bookteam set 2\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"text\":\"點擊更改自身的分隊\",\"bold\":true,\"color\":\"white\"}]}},\"\\n\",\"\\n\",{\"text\":\">點我成為觀察者<\",\"bold\":true,\"color\":\"gray\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger bookteam set 3\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"text\":\"點擊更改自身的分隊\",\"bold\":true,\"color\":\"white\"}]}}]"],title:"隊伍選擇書",author:WindFire}]

execute as @s[scores={bookteam=1}] run team join human @s
execute as @s[scores={bookteam=1}] run tellraw @a ["",{"text":"❱❱❱","bold":true},{"text":"孩子方增加一名成員：","color":"aqua"},{"selector":"@s","color":"aqua","bold":true}]

execute as @s[scores={bookteam=2}] run team join ghost @s
execute as @s[scores={bookteam=2}] run tellraw @a ["",{"text":"❱❱❱","bold":true},{"text":"鬼方增加一名成員：","color":"red"},{"selector":"@s","color":"red","bold":true}]

execute as @s[scores={bookteam=3}] run team join spe @s
execute as @s[scores={bookteam=3}] run tellraw @a ["",{"text":"❰❰❰","bold":true},{"selector":"@s","color":"gray","bold":true},{"text":"成為觀察者","color":"gray"}]

#execute as @s[scores={bookteam=11}] run tag @r[team=human] add random_ghost1
#execute as @s[scores={bookteam=11}] run team join ghost @a[tag=random_ghost1]
#execute as @s[scores={bookteam=11}] if entity @a[tag=random_ghost1] run tellraw @a ["",{"text":"✪","bold":true},{"selector":"@a[tag=random_ghost1]","color":"red","bold":true},{"text":"成為鬼","color":"red"}]
#execute as @s[scores={bookteam=11}] unless entity @a[tag=random_ghost1] run tellraw @a ["",{"text":"✘","bold":true},{"text":"錯誤，因為沒有玩家是孩子方","color":"red"}]
#execute as @s[scores={bookteam=11}] run tag @a[tag=random_ghost1] remove random_ghost1

execute as @s[scores={bookteam=11..22}] run tag @r[team=human] add random_ghost1
execute as @s[scores={bookteam=11..22}] run team join ghost @a[tag=random_ghost1]
execute as @s[scores={bookteam=22}] run tag @r[team=human] add random_ghost2
execute as @s[scores={bookteam=22}] run team join ghost @a[tag=random_ghost2]
execute as @s[scores={bookteam=11..22}] if entity @a[tag=random_ghost1] unless entity @a[tag=random_ghost2] run tellraw @a ["",{"text":"✪","bold":true},{"text":"鬼方目前成員：","color":"aqua"},{"selector":"@a[team=ghost]","color":"yellow","bold":true}]
execute as @s[scores={bookteam=22}] if entity @a[tag=random_ghost2] run tellraw @a ["",{"text":"✪","bold":true},{"text":"鬼方目前成員：","color":"aqua"},{"selector":"@a[team=ghost]","color":"yellow","bold":true}]

#execute as @s[scores={bookteam=11..22}] if entity @a[tag=random_ghost1] unless entity @a[tag=random_ghost2] run tellraw @a ["",{"text":"✪","bold":true},{"selector":"@a[tag=random_ghost1]","color":"red","bold":true},{"text":"成為鬼","color":"red"}]
#execute as @s[scores={bookteam=22}] if entity @a[tag=random_ghost2] run tellraw @a ["",{"text":"✪","bold":true},{"selector":"@a[tag=random_ghost1]","color":"red","bold":true},{"text":"、","color":"red"},{"selector":"@a[tag=random_ghost2]","color":"red","bold":true},{"text":"成為鬼","color":"red"}]
execute as @s[scores={bookteam=11..22}] unless entity @a[tag=random_ghost1] run tellraw @s ["",{"text":"✘","bold":true},{"text":"錯誤，因為沒有玩家是孩子方","color":"red"}]
execute as @s[scores={bookteam=11..22}] run tag @a[tag=random_ghost1] remove random_ghost1
execute as @s[scores={bookteam=22}] run tag @a[tag=random_ghost2] remove random_ghost2

execute as @s[scores={bookteam=99}] run team join human @a
execute as @s[scores={bookteam=99}] run tellraw @s ["",{"text":"✔","bold":true},{"text":"全部人成功加入孩子方","color":"dark_aqua","bold":true}]
trigger bookteam set 0
