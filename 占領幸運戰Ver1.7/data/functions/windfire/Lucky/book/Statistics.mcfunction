replaceitem entity @a[m=1] slot.hotbar.3 written_book 1 0 
{
pages:
[
"[\"\",
{\"text\":\"占領幸運戰 - 最終結算:\\n\\n\",\"color\":\"red\",\"bold\":true},
{\"text\":\"顯示最後分數\\n\",\"color\":\"black\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar list\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"顯示殺人數\\n\",\"color\":\"dark_red\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar kill\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"顯示死亡次數\\n\",\"color\":\"dark_purple\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar death\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"顯示走路步數\\n\\n\",\"color\":\"dark_aqua\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar walk\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"顯示挖掘石頭量\\n\",\"color\":\"dark_gray\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar mining_stone\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"顯示挖掘泥土量\\n\",\"color\":\"dark_gray\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar mining_dirt\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"顯示挖掘核心數量\\n\",\"color\":\"red\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar mining_lamp\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"顯示挖到岩漿數量\\n\",\"color\":\"dark_gray\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar lava\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"顯示吵醒苦力怕數量\\n\",\"color\":\"dark_gray\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar creeper\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"\\n顯示LUCKY指數\\n\",\"bold\":\"true\",\"color\":\"red\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar luckypoint\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊(獲勝加30點)\",\"color\":\"white\"}]}}}]"
],
title:"最終結算",
author:"風火"
}

#---------------------------------------------

replaceitem entity @a[m=1] slot.hotbar.4 written_book 1 0 
{
pages:
[
"[\"\",
{\"text\":\"占領幸運戰 - 其他結算:\\n\\n\",\"color\":\"red\",\"bold\":true},
{\"text\":\"道具使用量:\\n\",\"color\":\"black\",\"bold\":true},
{\"text\":\"清理工具\",\"color\":\"dark_aqua\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar dropclean\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"     \",\"color\":\"black\"},
{\"text\":\"挖洞工具\\n\",\"color\":\"dark_blue\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar drophole\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"緩速雪球\",\"color\":\"dark_green\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar use_snowball\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"     \",\"color\":\"black\"},
{\"text\":\"一柱擎天\\n\",\"color\":\"dark_blue\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar droppillar\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"兔蛋數量\",\"color\":\"dark_green\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar use_egg\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"     \",\"color\":\"black\"},
{\"text\":\"幸運星\\n\",\"color\":\"red\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar dropstar\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"\\n\\n其他資訊:\\n\",\"color\":\"black\",\"bold\":true},
{\"text\":\"交易次數\",\"color\":\"dark_gray\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar trade\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"     \",\"color\":\"black\"},
{\"text\":\"附魔次數\\n\",\"color\":\"dark_gray\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar enchant\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"吃牛排量\",\"color\":\"gray\",\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar eatbeef\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"請點擊\",\"color\":\"white\"}]}}},
{\"text\":\"     \",\"color\":\"black\"},
{\"text\":\"吃金蘋果量\\n\",\"color\":\"red\",\"bold\":true,\"clickEvent\":
{\"action\":\"run_command\",\"value\":\"/scoreboard objectives setdisplay sidebar eatgoldapple\"},\"hoverEvent\":
{\"action\":\"show_text\",\"value\":
{\"text\":\"\",\"extra\":[
{\"text\":\"包含附魔金蘋果\\n請點擊\",\"color\":\"white\"}]}}}]"
],
title:"最終結算(2)",
author:"風火"
}

