#effect clear @a
#effect give @a minecraft:saturation 999999 0 true
#effect give @a minecraft:regeneration 999999 0 true
#xp set @a 0
#function rgl:set/summonset
#function rgl:set/scoreset
#function rgl:set/tagset
#function rgl:set/signset
#function rgl:team/teamset
#function rgl:lobby/lobbyset
#gamemode adventure @a
#tp @a 106 51 106
#gamerule randomTickSpeed 0
#gamerule logAdminCommands false
#difficulty hard
#gamerule sendCommandFeedback false
#tellraw @a ["",{"text":"RGL 資源包載入成功","color":"gold","bold":true}]
