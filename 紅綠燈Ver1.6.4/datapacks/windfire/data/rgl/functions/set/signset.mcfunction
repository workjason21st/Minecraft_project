fill 112 51 103 117 54 108 air
function rgl:sign/map
function rgl:sign/special
function rgl:sign/mode
function rgl:sign/time
function rgl:sign/glow
function rgl:sign/detail/kill
function rgl:sign/detail/self
function rgl:sign/other/sword
function rgl:sign/other/ghost
function rgl:sign/other/inventory
function rgl:sign/other/uhc
function rgl:sign/other/friend
function rgl:sign/other/jump
function rgl:sign/other/effect
function rgl:sign/other/buff
function rgl:sign/other/gdis
function rgl:sign/other/rebirth
function rgl:sign/other/invulnerable
function rgl:sign/other/daynight
#function rgl:sign/other/keepwhite

function rgl:sign/touchdis
function rgl:sign/touchtime

fill 106 52 111 106 51 111 air
setblock 106 52 111 minecraft:oak_wall_sign[facing=north]{GlowingText:1b,"Color":"yellow",Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function rgl:lobby/givebook"}}',Text2:'{"text":"領取說明書","bold":"true"}'}
setblock 106 51 111 minecraft:oak_wall_sign[facing=north]{Text4:'{"text":"","clickEvent":{"action":"run_command","value":"function rgl:lobby/update"}}',Text1:'{"text":"查看此版本更新","color":"black","bold":"true"}'}
setblock 117 51 110 air
setblock 117 51 110 minecraft:dark_oak_wall_sign[facing=west]{GlowingText:1b,Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function rgl:start/before"}}',Text2:'{"text":"或是","color":"black"}',Text3:'{"text":"點我直接開始遊戲","color":"black","bold":"true"}'}

setblock 113 52 103 minecraft:birch_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tag @e[tag=core,limit=1] add reteam"}}',Text2:'{"text":"重置所有人的隊伍","color":"black","bold":"true","clickEvent":{"action":"run_command","value":"tag @e[tag=core,limit=1] add randomteam"}}',Text3:'{"text":"(所有人加入壞孩子)","color":"black","clickEvent":{"action":"run_command","value":"tag @e[tag=core,limit=1] add randomteam"}}'}
setblock 114 52 103 minecraft:crimson_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tag @e[tag=core,limit=1] add allbadteam"}}',Text2:'{"text":"所有人加入壞孩子","color":"white","bold":"true"}',Text3:'{"text":"(除了觀察者外)","color":"white","clickEvent":{"action":"run_command","value":"tag @e[tag=core,limit=1] add randomteam"}}'}
setblock 115 52 103 minecraft:warped_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tag @e[tag=core,limit=1] add randomgood"}}',Text2:'{"text":"隨機一個壞孩子當鬼","color":"white","bold":"true"}',Text3:'{"text":"(可重複點擊)","color":"white","clickEvent":{"action":"run_command","value":"tag @e[tag=core,limit=1] add randomteam"}}'}
setblock 116 52 103 minecraft:birch_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tag @e[tag=core,limit=1] add speteam"}}',Text2:'{"text":"最近的玩家加入觀察者","color":"black","clickEvent":{"action":"run_command","value":"tag @e[tag=core,limit=1] add randomteam"}}'}

setblock 114 51 103 minecraft:crimson_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tag @e[tag=core,limit=1] add badteam"}}',Text2:'{"text":"最近的玩家","color":"white"}',Text3:'{"text":"加入壞孩子們","color":"white","clickEvent":{"action":"run_command","value":"tag @e[tag=core,limit=1] add randomteam"}}'}
setblock 115 51 103 minecraft:warped_wall_sign[facing=south]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tag @e[tag=core,limit=1] add goodteam"}}',Text2:'{"text":"最近的玩家當鬼","color":"white"}',Text3:'{"text":"","color":"white","clickEvent":{"action":"run_command","value":"tag @e[tag=core,limit=1] add randomteam"}}'}
