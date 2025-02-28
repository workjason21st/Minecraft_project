#RGL:red green light
effect clear @a
clear @a
xp set @a 0
#recipe give @a *
defaultgamemode adventure
gamemode adventure @a
function rglplus:del_plus/summondel
function rglplus:del_plus/scoredel
function rglplus:del_plus/tagdel
function rglplus:del_plus/teamdel
function rglplus:del_plus/lobbydel
function rglplus:del_plus/scheduleclear

tellraw @a ["",{"text":"RGL擴充資源包刪除成功","color":"red","bold":true}]
