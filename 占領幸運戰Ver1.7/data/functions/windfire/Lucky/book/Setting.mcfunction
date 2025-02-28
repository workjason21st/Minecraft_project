replaceitem entity @a[m=1] slot.hotbar.6 written_book 1 0 
{
pages:
[
"[\"\",
{\"text\":\"占領幸運戰 - 基本設定:\\n\\n\",\"color\":\"red\",\"bold\":true},
{\"text\":\"獲勝分數設定:\\n\",\"color\":\"black\",\"bold\":true,\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"預設分數3000分\"}]}}},
{\"text\":\"▲分數增加1000分▲\\n\",\"color\":\"red\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/tp @e[tag=winpoint] ~ ~0.1 ~-1\"},\"bold\":false},
{\"text\":\"目前獲勝分數:\",\"color\":\"black\"},
{\"score\":
{\"name\":\"獲勝分數\",\"objective\":\"winpoint\"},\"color\":\"black\",\"bold\":true},
{\"text\":\"▽分數降低1000分▽\\n\\n\",\"color\":\"dark_green\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/tp @e[tag=winpoint] ~ ~0.1 ~1\"}},
{\"text\":\"怪物量:\\n\",\"color\":\"black\",\"bold\":true,\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"預設生成量５隻\"}]}}},
{\"text\":\"▲一次生成量增加４隻▲\\n\",\"color\":\"light_purple\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/tp @e[tag=zombiecount] ~ ~0.1 ~-1\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"目前怪物生成數量:\",\"color\":\"black\"},
{\"score\":
{\"name\":\"殭屍數量\",\"objective\":\"zombiecount\"},\"color\":\"black\",\"bold\":true},
{\"text\":\"\\n▽一次生成量降低４隻▽\\n\\n\",\"color\":\"dark_purple\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/tp @e[tag=zombiecount] ~ ~0.1 ~1\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\"}]}}},
{\"text\":\"開啟\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1030 8 955 minecraft:redstone_block\"}},
{\"text\":\" or \",\"color\":\"black\"},
{\"text\":\"關閉\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1030 8 955 air\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"預設\",\"color\":\"white\"}]}}},
{\"text\":\"階段性清野怪\\n\\n\",\"color\":\"dark_red\",\"bold\":true,\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"若為開啟,則每一階段開始時會清掉野怪\",\"color\":\"white\"}]}}}]",
"[\"\",
{\"text\":\"\\n開啟寶藏區模式\\n\",\"color\":\"red\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1021 15 1007 redstone_block\"}},
{\"text\":\"關閉寶藏區模式\\n\\n\\n\",\"color\":\"dark_green\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1022 15 1007 redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"預設\"}]}}},
{\"text\":\"寶藏區地圖材質選擇:\\n\",\"color\":\"black\"},
{\"text\":\"冰原地形\",\"color\":\"dark_aqua\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1021 15 1016 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"預設\"}]}}},
{\"text\":\"    \",\"color\":\"black\"},
{\"text\":\"地獄地形\\n\\n\",\"color\":\"gray\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1022 15 1016 minecraft:redstone_block\"}},
{\"text\":\"隨機產生地圖\\n【開啟後必定要按】\\n\\n\",\"color\":\"red\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1022 8 1052 redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"點擊後請等待幾分鐘\\n\"},
{\"text\":\"請讀取完再開始遊戲\\n\",\"color\":\"red\"}]}}},
{\"text\":\"寶藏區地圖清空\\n\\n\",\"color\":\"black\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1023 8 1049 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"感覺這張圖不好？\\n那就清空它吧\\n但要在點擊隨機產生地圖一次喔\"}]}}}]",
"[\"\",
{\"text\":\"\\n\\n\\n\\n\\n  ☠ 正式開始遊戲 〠\",\"color\":\"red\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1008 16 1042 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"點擊開始遊戲\\n\\n請確認怪物、礦物、寶藏區\"},
{\"text\":\"載入完成再進行遊戲\",\"color\":\"red\",\"bold\":true}]}}}]"
],
title:"基本設定",
author:"風火"
}

#---------------------------------------------------------------------------------

replaceitem entity @a[m=1] slot.hotbar.7 written_book 1 0 
{
pages:
[
"[\"\",
{\"text\":\"占領幸運戰 - 礦物設定:\\n\\n\",\"color\":\"red\",\"bold\":true},
{\"text\":\"每挖一顆石頭\\n會產生碳礦的機率:\\n\",\"color\":\"black\",\"bold\":true},
{\"text\":\"◀\",\"color\":\"dark_purple\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1004 12 1055 redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"點擊增加碳礦機率\"}]}}},
{\"text\":\" \",\"color\":\"none\",\"bold\":false},
{\"score\":
{\"name\":\"機率\",\"objective\":\"mineral%\"},\"color\":\"red\",\"bold\":true},
{\"text\":\" 分之 1 \",\"color\":\"black\",\"bold\":false},
{\"text\":\"▷\\n\\n\\n\",\"color\":\"dark_green\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1004 12 1054 redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"點擊降低碳礦機率\"}]}}},
{\"text\":\"以下為挖到碳礦後\\n得到更佳礦物的機率\\n\",\"color\":\"black\",\"bold\":false},
{\"text\":\"在鐵礦層挖到鐵的機率:\\n\",\"color\":\"black\",\"bold\":true},
{\"text\":\" ◀\",\"color\":\"dark_purple\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1009 12 1055 redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"點擊增加鐵礦機率\"}]}}},
{\"score\":
{\"name\":\"機率\",\"objective\":\"iron%\"},\"color\":\"gray\",\"bold\":true},
{\"text\":\" 分之 2\",\"color\":\"black\",\"bold\":false},
{\"text\":\" ▷\\n\\n\",\"color\":\"dark_green\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1009 12 1054 redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"點擊降低鐵礦機率\"}]}}},
{\"text\":\"在金礦層挖到金的機率:\\n\",\"color\":\"black\",\"bold\":true},
{\"text\":\" ◀\",\"color\":\"dark_purple\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1016 12 1055 redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"點擊增加金礦機率\"}]}}},
{\"score\":
{\"name\":\"機率\",\"objective\":\"gold%\"},\"color\":\"gold\",\"bold\":true},
{\"text\":\" 分之 2\",\"color\":\"black\",\"bold\":false},
{\"text\":\" ▷\\n\\n\",\"color\":\"dark_green\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1016 12 1054 redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"點擊降低金礦機率\"}]}}}]",
"[\"\",
{\"text\":\"\\n\\n在青金石礦層\\n挖到青金石的機率:\\n\",\"color\":\"black\",\"bold\":true},
{\"text\":\" ◀\",\"color\":\"dark_purple\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1016 12 1049 redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"點擊增加青金石礦機率\"}]}}},
{\"score\":
{\"name\":\"機率\",\"objective\":\"lapis%\"},\"color\":\"blue\",\"bold\":true},
{\"text\":\" 分之 2\",\"color\":\"black\",\"bold\":false},
{\"text\":\" ▷\\n\\n\",\"color\":\"dark_green\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1016 12 1048 redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"點擊降低青金石礦機率\"}]}}},
{\"text\":\"在鑽石、紅石礦層\\n挖到鑽石、紅石的機率:\\n\",\"color\":\"black\",\"bold\":true},
{\"text\":\" ◀\",\"color\":\"dark_purple\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1008 12 1049 redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"點擊增加鑽石礦、紅石礦機率\"}]}}},
{\"score\":
{\"name\":\"機率\",\"objective\":\"diamond%\"},\"color\":\"red\",\"bold\":true},
{\"text\":\" 分之 2\",\"color\":\"black\",\"bold\":false},
{\"text\":\" ▷\\n\\n\",\"color\":\"dark_green\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1008 12 1048 redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"點擊降低鑽石礦、紅石礦機率\"}]}}},
{\"text\":\"O\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1024 15 996 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"挖石頭有５％的機率挖出苦力怕\",\"color\":\"white\"}]}}},
{\"text\":\" or \",\"color\":\"black\"},
{\"text\":\"X\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1025 15 996 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"預設(不會出現苦力怕)\",\"color\":\"white\"}]}}},
{\"text\":\"挖石頭機率出現苦力怕\\n\\n\",\"color\":\"dark_aqua\",\"bold\":true},
{\"text\":\"O\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1021 15 996 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"預設(鑽石層有３％可能流出岩漿)\",\"color\":\"white\"}]}}},
{\"text\":\" or \",\"color\":\"black\"},
{\"text\":\"X\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1022 15 996 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"不會出現岩漿\",\"color\":\"white\"}]}}},
{\"text\":\"鑽石層機率出現岩漿\\n\\n\",\"color\":\"gold\",\"bold\":true,\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"若為關閉,則不會有岩漿\",\"color\":\"white\"}]}}}]"
],
title:"礦物設定",
author:"風火"
}

#---------------------------------------------------------------------------------

replaceitem entity @a[m=1] slot.hotbar.8 written_book 1 0 
{
pages:
[
"[\"\",
{\"text\":\"占領幸運戰 - 隊伍設定：\\n\\n\",\"color\":\"red\",\"bold\":true},
{\"text\":\"        <隨機隊伍>\\n\",\"color\":\"dark_purple\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1004 15 1055 redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"若需要有觀察者\\n請他先加入隊伍\\n再按下隨機分隊\",\"color\":\"white\"}]}},\"bold\":false},
{\"text\":\"        <重置隊伍>\\n\\n\",\"color\":\"dark_purple\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1002 15 1052 redstone_block\"}},
{\"text\":\"開啟選擇隊伍區域(全部)\\n\",\"color\":\"dark_green\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/fill 1029 0 968 1030 5 976 minecraft:air 0 replace minecraft:stained_glass 15\"}},
{\"text\":\"開啟 \",\"color\":\"black\",\"bold\":false},
{\"text\":\"黃隊\",\"color\":\"gold\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/fill 1029 0 968 1030 5 970 minecraft:air 0 replace minecraft:stained_glass 15\"}},
{\"text\":\" \"},
{\"text\":\"藍隊\",\"color\":\"blue\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/fill 1029 0 974 1030 5 976 minecraft:air 0 replace minecraft:stained_glass 15\"}},
{\"text\":\" 隊伍區域\\n\\n\",\"color\":\"black\",\"bold\":false},
{\"text\":\"關閉選擇隊伍區域(全部)\\n\\n\\n\",\"color\":\"dark_green\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/fill 1029 0 968 1030 5 976 minecraft:stained_glass 15 replace air\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"預設\",\"color\":\"white\"}]}}},
{\"text\":\"開啟同隊傷害(打得到隊友)\\n\",\"color\":\"gray\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1024 15 1031 minecraft:redstone_block\"}},
{\"text\":\"關閉同隊傷害(打不到隊友)\\n\",\"color\":\"dark_gray\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1025 15 1031 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"預設\",\"color\":\"white\"}]}}}]",
"[\"\",
{\"text\":\"雜項設定：\\n\\n\",\"color\":\"black\",\"bold\":true},
{\"text\":\"開啟\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1024 15 1023 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"無法使用弓箭\",\"color\":\"white\"}]}}},
{\"text\":\" or \",\"color\":\"black\"},
{\"text\":\"關閉\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1025 15 1023 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"預設(可以使用弓箭)\",\"color\":\"white\"}]}}},
{\"text\":\"禁止使用弓箭\\n\\n\",\"color\":\"dark_red\",\"bold\":true,\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"若為開啟,則弓無法射出箭矢\",\"color\":\"white\"}]}}},
{\"text\":\"開啟\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1022 15 1023 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"削弱弓箭\",\"color\":\"white\"}]}}},
{\"text\":\" or \",\"color\":\"black\"},
{\"text\":\"關閉\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1023 15 1023 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"預設(不削弱弓箭)\",\"color\":\"white\"}]}}},
{\"text\":\"弓箭削弱模式\\n\\n\",\"color\":\"red\",\"bold\":true,\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"若為開啟,則弓射出箭矢的傷害降低\",\"color\":\"white\"}]}}},
{\"text\":\"開啟\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1020 15 1023 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"無法撿起地上的箭矢\",\"color\":\"white\"}]}}},
{\"text\":\" or \",\"color\":\"black\"},
{\"text\":\"關閉\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1021 15 1023 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"預設(可以撿起地上箭矢)\",\"color\":\"white\"}]}}},
{\"text\":\"箭矢無法撿起\\n\\n\",\"color\":\"dark_blue\",\"bold\":true,\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"若為開啟,則插在方塊上的箭矢無法撿起\",\"color\":\"white\"}]}}},
{\"text\":\"開啟\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1024 15 1016 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"會噴裝\",\"color\":\"white\"}]}}},
{\"text\":\" or \",\"color\":\"black\"},
{\"text\":\"關閉\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1025 15 1016 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"預設(不噴裝)\",\"color\":\"white\"}]}}},
{\"text\":\"噴裝模式\\n\\n\",\"color\":\"dark_aqua\",\"bold\":true},
{\"text\":\"開啟\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1024 15 1011 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"預設(吃飽可以回血)\",\"color\":\"white\"}]}}},
{\"text\":\" or \",\"color\":\"black\"},
{\"text\":\"關閉\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1025 15 1011 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"UHC模式\",\"color\":\"white\"}]}}},
{\"text\":\"吃飽會回血量\\n\\n\",\"color\":\"dark_purple\",\"bold\":true,\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"若為關閉,則為UHC\",\"color\":\"white\"}]}}},
{\"text\":\"開啟\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1024 15 1004 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"預設(第一階段就可打人)\",\"color\":\"white\"}]}}},
{\"text\":\" or \",\"color\":\"black\"},
{\"text\":\"關閉\",\"color\":\"black\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/setblock 1025 15 1004 minecraft:redstone_block\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"第一階段不能打人\",\"color\":\"white\"}]}}},
{\"text\":\"第一階段打人\\n\\n\",\"color\":\"dark_yellow\",\"bold\":true,\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"若為關閉,則第一階段會有抗性\",\"color\":\"white\"}]}}}]"
],
title:"各項設定",
author:"風火"
}#---------------------------------------------------------------------------------

