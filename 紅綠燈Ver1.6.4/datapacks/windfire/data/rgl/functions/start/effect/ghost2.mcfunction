scoreboard players operation @s random10 = @e[tag=random04,limit=1,sort=random] random10
#
clear @s[scores={random10=0..4}] #rgl:sword
give @s[scores={random10=1..5}] minecraft:glass_pane
give @s[scores={random10=2..5}] minecraft:white_stained_glass_pane
give @s[scores={random10=3..5}] minecraft:gray_stained_glass_pane
give @s[scores={random10=4..5}] minecraft:light_gray_stained_glass_pane

clear @s[scores={random10=5}] #rgl:sword
function rgl:other/givesword
clear @s[scores={random10=0..5}] #rgl:glass
scoreboard players set @s[scores={usesword=1..}] usesword 0
