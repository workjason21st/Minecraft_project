item replace entity @s weapon.offhand with minecraft:air
summon minecraft:rabbit ~ ~ ~ {Tags:["rglplus","lobbyegg"],RabbitType:3,MoreCarrotTicks:0,CustomName:'[{"text":"跳跳兔","color":"aqua"}]',CustomNameVisible:1b,Invulnerable:1b,PersistenceRequired:1b,active_effects:[{id:jump_boost,duration:999999,amplifier:5,show_particles:0b}],Age:-919919,ForcedAge:919,InLove:1b}
tellraw @s ["",{"text":"『彩蛋』","color":"aqua"},{"text":"你成功招喚跳跳兔","color":"aqua"}]
