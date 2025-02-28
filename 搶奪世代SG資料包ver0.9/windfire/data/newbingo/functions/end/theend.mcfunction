tellraw @a ["",{"text":"\n點我回到大廳","bold":true,"italic":true,"underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/tp @s @e[tag=random0,limit=1]"}}]
execute as @a at @s run summon minecraft:firework_rocket
execute as @a at @s run summon minecraft:firework_rocket
scoreboard players set @e[tag=random0] theend -1
scoreboard objectives setdisplay list displayhealth
execute as @e[tag=random0] at @s run spawnpoint @a ~ 228 ~ -90
time set day
gamerule doDaylightCycle false
weather clear
gamerule doWeatherCycle false
gamemode adventure @a
execute as @e[tag=random0] at @s run function newbingo:lobby/lobbyset
