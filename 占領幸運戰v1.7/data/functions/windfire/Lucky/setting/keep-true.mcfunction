tellraw @a ["",{"text":"【情報中心】","color":"dark_purple"},{"text":"關閉","color":"dark_red"},{"text":" 噴裝模式","color":"green"}]
gamerule keepInventory true
playsound minecraft:block.note.snare master @a ~ ~ ~ 777 0.1
blockdata 1006 15 1042 {Command:"function windfire:lucky/death/no"}
blockdata 1005 15 1042 {Command:"function windfire:lucky/death/no"}

