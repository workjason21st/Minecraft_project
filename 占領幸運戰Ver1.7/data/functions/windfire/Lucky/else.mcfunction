#顏色資訊
# §1:dark_blue
# §2:dark_green
# §3:dark_aqua
# §4:dark_red
# §5:dark_purple
# §6:gold
# §7:gray
# §8:dark_gary
# §9:blue
# §a:green
# §b:aqua
# §c:red
# §d:light_purple
# §e:yellow

# §k:斜體
# §l:粗體
# §m:刪除線
# §n:底線
# §r:重製
{"pools":[{"rolls":{"min":7,"max":12},"entries":[{"type":"item","name":"minecraft:golden_apple","weight":4,"functions":[{"function":"set_data","data":0},{"function":"set_count","count":{"min":1,"max":3},"conditions":[{"condition":"random_chance","chance":0.2}]}]},{"type":"item","name":"minecraft:ender_pearl","weight":3,"functions":[{"function":"set_count","count":{"min":1,"max":3},"conditions":[{"condition":"random_chance","chance":0.1}]}]},{"type":"item","name":"minecraft:emerald","weight":5,"functions":[{"function":"set_count","count":{"min":3,"max":7},"conditions":[{"condition":"random_chance","chance":0.2}]}]},{"type":"item","name":"minecraft:blaze_powder","weight":2,"functions":[{"function":"set_count","count":{"min":1,"max":2},"conditions":[{"condition":"random_chance","chance":0.1}]},{"function":"set_nbt","tag":"{display:{Name:\"\u706b\u7130\u6307\u864e\"},ench:[{id:20,lvl:1}],AttributeModifiers:[{Slot:mainhand,AttributeName:\"generic.attackDamage\",Name:\"generic.attackDamage\",Amount:6,Operation:0,UUIDMost:66673,UUIDLeast:14703}]}"}]},{"type":"item","name":"minecraft:iron_shovel","weight":2,"functions":[{"function":"set_count","count":{"min":1,"max":2},"conditions":[{"condition":"random_chance","chance":0.1}]},{"function":"set_nbt","tag":"{display:{Name:\"\u5de8\u4eba\u4e4b\u69cc\"},ench:[{id:19,lvl:3}],AttributeModifiers:[{Slot:mainhand,AttributeName:\"generic.attackDamage\",Name:\"generic.attackDamage\",Amount:6,Operation:0,UUIDMost:66673,UUIDLeast:14703},{AttributeName:\"generic.movementSpeed\",Name:\"generic.movementSpeed\",Amount:-0.05,Operation:0,UUIDMost:81142,UUIDLeast:681889,Slot:\"mainhand\"}]}"}]},{"type":"item","name":"minecraft:tipped_arrow","weight":4,"quality":4,"functions":[{"function":"set_count","count":{"min":5,"max":10},"conditions":[{"condition":"random_chance","chance":0.3}]},{"function":"set_nbt","tag":"{display:{Name:\"\u70b8\u5f48\u7bad\"},CustomPotionEffects:[{Ambient:0b,ShowParticles:0b,Duration:20,Id:12b,Amplifier:0b}]}"}]}]}]}